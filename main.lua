local Library = loadstring(game:HttpGet("https://gist.githubusercontent.com/ssssssssss21/f2127829151a31beea020f5dd9211ad6/raw/39cabe77a3a30898f880ab55a48c9d7770d31a01/UI.lua"))()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

local FlyEnabled = false
local NoClipConnection = nil
local FlyConnection = nil
local FlyBodyVelocity = nil
local FlyBodyGyro = nil
local FlySpeed = 50

local InfiniteJumpEnabled = false
local InfiniteJumpConnection = nil

local WalkSpeedEnabled = false
local WalkSpeedValue = 1
local WalkSpeedConnection = nil

local LaggyRunEnabled = false
local LaggyRunDistance = 1
local LaggyRunDelay = 1
local LaggyRunConnection = nil
local LaggyRunAccum = 0

local CtrlClickTPEnabled = false
local CtrlClickTPConnection = nil

local AutoFarmEnabled = false
local AutoSkillEnabled = false
local AutoEnterAreaEnabled = false
local DistanceToNPC = 10
local AutoSkillSelections = {}
local AutoSwitchWeaponsEnabled = false

local visitedChestDebris = {}
local autoEnterAreaBusy = false
local visitedROTs = {}
local currentAreaModel = nil

local currentTargetPart = nil
local currentTargetKeyword = nil
local farmLockActive = false

local TweenSpeed = 300

local cachedAbilityBar = nil
local function GetAbilityBar()
    if cachedAbilityBar and cachedAbilityBar.Parent then
        return cachedAbilityBar
    end
    local config = LocalPlayer:FindFirstChild("Configuration")
    if not config then return nil end
    cachedAbilityBar = config:FindFirstChild("AbilityBar")
    return cachedAbilityBar
end

local function GetAbilityBarValue(attributeName)
    local bar = GetAbilityBar()
    if not bar then return nil end
    return bar:GetAttribute(attributeName)
end

local cachedActivationFolder = nil
local function GetActivationFolder()
    if cachedActivationFolder and cachedActivationFolder.Parent then
        return cachedActivationFolder
    end
    local creature = Workspace:FindFirstChild("Creature")
    if not creature then return nil end
    cachedActivationFolder = creature:FindFirstChild("Activation")
    return cachedActivationFolder
end

local cachedPlayerEntityModel = nil
local cachedPlayerEntityModelValid = false

local function RefreshPlayerEntityModel()
    cachedPlayerEntityModelValid = false
    cachedPlayerEntityModel = nil
    local activation = GetActivationFolder()
    if not activation then return end
    local myId = LocalPlayer.UserId
    for _, model in ipairs(activation:GetChildren()) do
        if model:IsA("Model") and model:GetAttribute("Player") == myId then
            cachedPlayerEntityModel = model
            cachedPlayerEntityModelValid = true
            return
        end
    end
end

local activationWatchConnection = nil
local function SetupActivationWatch()
    if activationWatchConnection then
        activationWatchConnection:Disconnect()
        activationWatchConnection = nil
    end
    local activation = GetActivationFolder()
    if not activation then return end
    activationWatchConnection = activation.ChildAdded:Connect(function()
        cachedPlayerEntityModelValid = false
    end)
end

local sandboxBBoxCache = {}
local sandboxCacheBuilt = false

local function BuildSandboxCache()
    sandboxBBoxCache = {}
    local sandboxFolder = Workspace:FindFirstChild("SandboxPlayFolder")
    if not sandboxFolder then
        sandboxCacheBuilt = true
        return
    end
    for _, areaModel in ipairs(sandboxFolder:GetChildren()) do
        if not areaModel:IsA("Model") then continue end
        local minX, minY, minZ =  math.huge,  math.huge,  math.huge
        local maxX, maxY, maxZ = -math.huge, -math.huge, -math.huge
        local hasPart = false
        for _, p in ipairs(areaModel:GetDescendants()) do
            if not p:IsA("BasePart") then continue end
            hasPart = true
            local pos  = p.Position
            local half = p.Size * 0.5
            if pos.X - half.X < minX then minX = pos.X - half.X end
            if pos.Y - half.Y < minY then minY = pos.Y - half.Y end
            if pos.Z - half.Z < minZ then minZ = pos.Z - half.Z end
            if pos.X + half.X > maxX then maxX = pos.X + half.X end
            if pos.Y + half.Y > maxY then maxY = pos.Y + half.Y end
            if pos.Z + half.Z > maxZ then maxZ = pos.Z + half.Z end
        end
        if not hasPart then continue end
        table.insert(sandboxBBoxCache, {
            model = areaModel,
            minX = minX, minY = minY, minZ = minZ,
            maxX = maxX, maxY = maxY, maxZ = maxZ,
        })
    end
    sandboxCacheBuilt = true
end

local sandboxWatchConn = nil
local function SetupSandboxWatch()
    local sandboxFolder = Workspace:FindFirstChild("SandboxPlayFolder")
    if not sandboxFolder then return end
    if sandboxWatchConn then sandboxWatchConn:Disconnect() end
    sandboxWatchConn = sandboxFolder.ChildAdded:Connect(function()
        sandboxCacheBuilt = false
    end)
end

local function SafeStopCharacter()
    local char = LocalPlayer.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    local hum = char:FindFirstChild("Humanoid")
    if not hrp or not hum then return end
    hrp.AssemblyLinearVelocity  = Vector3.zero
    hrp.AssemblyAngularVelocity = Vector3.zero
    hum.PlatformStand = false
    task.defer(function()
        local c  = LocalPlayer.Character
        local h  = c and c:FindFirstChild("HumanoidRootPart")
        local hu = c and c:FindFirstChild("Humanoid")
        if not h or not hu then return end
        h.AssemblyLinearVelocity  = Vector3.zero
        h.AssemblyAngularVelocity = Vector3.zero
        hu.PlatformStand = false
    end)
end

local function StopFarmLock()
    farmLockActive       = false
    currentTargetPart    = nil
    currentTargetKeyword = nil
    SafeStopCharacter()
end

RunService.Heartbeat:Connect(function()
    if not AutoFarmEnabled then return end
    if not farmLockActive then return end
    if autoEnterAreaBusy then return end
    if not currentTargetPart or not currentTargetPart.Parent then return end

    local char = LocalPlayer.Character
    local hrp  = char and char:FindFirstChild("HumanoidRootPart")
    local hum  = char and char:FindFirstChild("Humanoid")
    if not hrp or not hum or hum.Health <= 0 then return end

    local tPos
    if currentTargetKeyword == "Chest" or currentTargetKeyword == "Debris" then
        tPos = currentTargetPart.Position
    else
        tPos = Vector3.new(
            currentTargetPart.Position.X,
            currentTargetPart.Position.Y + DistanceToNPC,
            currentTargetPart.Position.Z
        )
    end

    local lookTarget = Vector3.new(
        currentTargetPart.Position.X,
        tPos.Y,
        currentTargetPart.Position.Z
    ) - Vector3.new(0, 1, 0)

    local targetCF = CFrame.new(tPos, lookTarget)
    hum.PlatformStand = true

    local dist = (hrp.Position - tPos).Magnitude
    if dist < 0.5 then
        hrp.CFrame = targetCF
    else
        local alpha = math.clamp((TweenSpeed / 16) * 0.15, 0.05, 1)
        hrp.CFrame = hrp.CFrame:Lerp(targetCF, alpha)
    end
end)

local function EnableNoClip()
    if NoClipConnection then return end
    NoClipConnection = RunService.Stepped:Connect(function()
        local character = LocalPlayer.Character
        if character then
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then part.CanCollide = false end
            end
        end
    end)
end

local function DisableNoClip()
    if NoClipConnection then NoClipConnection:Disconnect(); NoClipConnection = nil end
    local character = LocalPlayer.Character
    if character then
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then part.CanCollide = true end
        end
    end
end

local function EnableFly()
    local character = LocalPlayer.Character
    if not character then return end
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    if FlyBodyVelocity then FlyBodyVelocity:Destroy() end
    if FlyBodyGyro then FlyBodyGyro:Destroy() end
    FlyBodyVelocity = Instance.new("BodyVelocity")
    FlyBodyVelocity.Velocity = Vector3.new(0, 0, 0)
    FlyBodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
    FlyBodyVelocity.Parent = hrp
    FlyBodyGyro = Instance.new("BodyGyro")
    FlyBodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
    FlyBodyGyro.P = 9e4
    FlyBodyGyro.Parent = hrp
    if FlyConnection then FlyConnection:Disconnect() end
    FlyConnection = RunService.Heartbeat:Connect(function()
        if not FlyEnabled then return end
        local char = LocalPlayer.Character
        if not char then return end
        local fHRP = char:FindFirstChild("HumanoidRootPart")
        if not fHRP or not FlyBodyVelocity or not FlyBodyGyro then return end
        local cam = Workspace.CurrentCamera
        local dir = Vector3.new(0, 0, 0)
        if UserInputService:IsKeyDown(Enum.KeyCode.W) then dir = dir + cam.CFrame.LookVector * FlySpeed end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) then dir = dir - cam.CFrame.LookVector * FlySpeed end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) then dir = dir - cam.CFrame.RightVector * FlySpeed end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) then dir = dir + cam.CFrame.RightVector * FlySpeed end
        if UserInputService:IsKeyDown(Enum.KeyCode.Space) then dir = dir + Vector3.new(0, FlySpeed, 0) end
        if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then dir = dir - Vector3.new(0, FlySpeed, 0) end
        FlyBodyVelocity.Velocity = dir
        FlyBodyGyro.CFrame = cam.CFrame
    end)
end

local function DisableFly()
    if FlyConnection then FlyConnection:Disconnect(); FlyConnection = nil end
    if FlyBodyVelocity then FlyBodyVelocity:Destroy(); FlyBodyVelocity = nil end
    if FlyBodyGyro then FlyBodyGyro:Destroy(); FlyBodyGyro = nil end
end

local function EnableWalkSpeed()
    if WalkSpeedConnection then WalkSpeedConnection:Disconnect() end
    WalkSpeedConnection = RunService.Heartbeat:Connect(function()
        if not WalkSpeedEnabled then return end
        local char = LocalPlayer.Character
        if not char then return end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not hrp then return end
        local hum = char:FindFirstChild("Humanoid")
        if not hum or hum.Health <= 0 then return end
        local moveDir = hum.MoveDirection
        if moveDir.Magnitude < 0.1 then return end
        local currentCF = hrp.CFrame
        local lookVec   = currentCF.LookVector
        local rightVec  = currentCF.RightVector
        local upVec     = currentCF.UpVector
        local newPos    = currentCF.Position + moveDir.Unit * WalkSpeedValue
        hrp.CFrame = CFrame.fromMatrix(newPos, rightVec, upVec, -lookVec)
    end)
end

local function DisableWalkSpeed()
    if WalkSpeedConnection then WalkSpeedConnection:Disconnect(); WalkSpeedConnection = nil end
end

local function EnableLaggyRun()
    if LaggyRunConnection then LaggyRunConnection:Disconnect() end
    LaggyRunAccum = 0
    LaggyRunConnection = RunService.Heartbeat:Connect(function(dt)
        if not LaggyRunEnabled then return end
        local char = LocalPlayer.Character
        if not char then return end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not hrp then return end
        local hum = char:FindFirstChild("Humanoid")
        if not hum or hum.Health <= 0 then return end
        local moveDir = hum.MoveDirection
        if moveDir.Magnitude < 0.1 then LaggyRunAccum = 0; return end
        LaggyRunAccum = LaggyRunAccum + dt
        local delayThreshold = LaggyRunDelay * 0.1
        if LaggyRunAccum < delayThreshold then return end
        LaggyRunAccum = 0
        local currentCF = hrp.CFrame
        local lookVec   = currentCF.LookVector
        local rightVec  = currentCF.RightVector
        local upVec     = currentCF.UpVector
        local newPos    = currentCF.Position + moveDir.Unit * LaggyRunDistance
        hrp.CFrame = CFrame.fromMatrix(newPos, rightVec, upVec, -lookVec)
    end)
end

local function DisableLaggyRun()
    if LaggyRunConnection then LaggyRunConnection:Disconnect(); LaggyRunConnection = nil end
    LaggyRunAccum = 0
end

local function EnableCtrlClickTP()
    if CtrlClickTPConnection then return end
    CtrlClickTPConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if not CtrlClickTPEnabled then return end
        if gameProcessed then return end
        if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
        if not (UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.RightControl)) then return end
        local char = LocalPlayer.Character
        local hrp  = char and char:FindFirstChild("HumanoidRootPart")
        if not hrp then return end
        local cam      = Workspace.CurrentCamera
        local mousePos = UserInputService:GetMouseLocation()
        local ray      = cam:ViewportPointToRay(mousePos.X, mousePos.Y)
        local raycastParams = RaycastParams.new()
        raycastParams.FilterType = Enum.RaycastFilterType.Exclude
        raycastParams.FilterDescendantsInstances = {char}
        local result = Workspace:Raycast(ray.Origin, ray.Direction * 5000, raycastParams)
        if result then
            local hitPos = result.Position
            hrp.CFrame = CFrame.new(hitPos + Vector3.new(0, 3, 0)) * (hrp.CFrame - hrp.CFrame.Position)
        end
    end)
end

local function DisableCtrlClickTP()
    if CtrlClickTPConnection then CtrlClickTPConnection:Disconnect(); CtrlClickTPConnection = nil end
end

local function GetPlayerEntityModel()
    if cachedPlayerEntityModelValid then
        if cachedPlayerEntityModel and cachedPlayerEntityModel.Parent then
            return cachedPlayerEntityModel
        end
        cachedPlayerEntityModelValid = false
    end
    RefreshPlayerEntityModel()
    return cachedPlayerEntityModel
end

local function GetEntityModelId(entityModel)
    if not entityModel then return nil end
    return entityModel:GetAttribute("Id")
end

local PRIORITY_ORDER = {"Boss", "Monster", "Chest", "Debris"}
local PRIORITY_MAP   = {Boss = 1, Monster = 2, Chest = 3, Debris = 4}

local function GetInnerKeyword(name)
    for _, kw in ipairs(PRIORITY_ORDER) do
        if string.find(name, kw) then return kw end
    end
    return nil
end

local function GetValidTargets()
    local activation = GetActivationFolder()
    if not activation then return {} end

    local targets = {}
    local children = activation:GetChildren()

    for i = 1, #children do
        local outerModel = children[i]
        if not outerModel:IsA("Model") then continue end
        if outerModel:GetAttribute("Player") ~= nil then continue end
        if outerModel:GetAttribute("AliveState") ~= 0 then continue end

        local innerChildren = outerModel:GetChildren()
        for j = 1, #innerChildren do
            local innerModel = innerChildren[j]
            if not innerModel:IsA("Model") then continue end
            local kw = GetInnerKeyword(innerModel.Name)
            if not kw then continue end

            if (kw == "Chest" or kw == "Debris") and visitedChestDebris[tostring(outerModel)] then
                continue
            end

            local collisionBox = innerModel:FindFirstChild("CollisionBox")
            if not collisionBox then continue end

            local targetPart = nil
            local cbChildren = collisionBox:GetChildren()
            for k = 1, #cbChildren do
                if cbChildren[k]:IsA("BasePart") then
                    targetPart = cbChildren[k]
                    break
                end
            end
            if not targetPart then continue end

            table.insert(targets, {
                outerModel = outerModel,
                innerModel = innerModel,
                keyword    = kw,
                priority   = PRIORITY_MAP[kw] or 99,
                targetPart = targetPart,
            })
            break
        end
    end

    table.sort(targets, function(a, b) return a.priority < b.priority end)
    return targets
end

local function IsTargetStillValid(entry)
    if not entry then return false end
    if not entry.outerModel or not entry.outerModel.Parent then return false end
    if entry.outerModel:GetAttribute("AliveState") ~= 0 then return false end
    if not entry.innerModel or not entry.innerModel.Parent then return false end
    if (entry.keyword == "Chest" or entry.keyword == "Debris") and visitedChestDebris[tostring(entry.outerModel)] then
        return false
    end
    return true
end

local function GetCurrentAreaModel(playerPos)
    if not sandboxCacheBuilt then
        BuildSandboxCache()
    end
    local px, py, pz = playerPos.X, playerPos.Y, playerPos.Z
    for i = 1, #sandboxBBoxCache do
        local entry = sandboxBBoxCache[i]
        if not entry.model or not entry.model.Parent then continue end
        if px >= entry.minX and px <= entry.maxX
        and py >= entry.minY and py <= entry.maxY
        and pz >= entry.minZ and pz <= entry.maxZ then
            return entry.model
        end
    end
    return nil
end

local function GetUnvisitedROTs(areaModel)
    if not areaModel then return {} end
    local voteDoor = areaModel:FindFirstChild("VoteDoor")
    if not voteDoor then return {} end

    local rots = {}
    local vdChildren = voteDoor:GetChildren()
    for i = 1, #vdChildren do
        local doorModel = vdChildren[i]
        if not doorModel:IsA("Model") then continue end
        local doorInner = doorModel:FindFirstChild("DOOR")
        if not doorInner then continue end
        local guidance = doorInner:FindFirstChild("Guidance")
        if not guidance then continue end
        local rot = guidance:FindFirstChild("ROT")
        if rot and rot:IsA("BasePart") and rot.Parent and not visitedROTs[rot] then
            table.insert(rots, rot)
        end
    end
    return rots
end

SetupActivationWatch()
SetupSandboxWatch()
BuildSandboxCache()

task.spawn(function()
    local farmRemote = ReplicatedStorage
        :WaitForChild("GameplayAbilitySystem")
        :WaitForChild("Remote")
        :WaitForChild("ClientApplyServerActivateGA")

    local skillTimer = 0
    local lastEntry  = nil

    local farmRemoteBusy = false
    local function FireFarmRemote(eId, val, tbl)
        if farmRemoteBusy then return end
        farmRemoteBusy = true
        task.spawn(function()
            pcall(function()
                farmRemote:InvokeServer(eId, val, tbl)
            end)
            farmRemoteBusy = false
        end)
    end

    while true do
        task.wait(0.1)

        if not AutoFarmEnabled then
            if farmLockActive then StopFarmLock() end
            lastEntry  = nil
            skillTimer = 0
            continue
        end

        local char = LocalPlayer.Character
        local hum  = char and char:FindFirstChild("Humanoid")
        local hrp  = char and char:FindFirstChild("HumanoidRootPart")
        if not char or not hum or not hrp or hum.Health <= 0 then continue end

        local playerEntityModel = GetPlayerEntityModel()
        local entityId          = GetEntityModelId(playerEntityModel)
        local abilityVal1       = GetAbilityBarValue("1")

        if entityId and abilityVal1 then
            FireFarmRemote(entityId, abilityVal1, {})
        end

        skillTimer = skillTimer + 0.1
        if AutoSkillEnabled and skillTimer >= 3 then
            skillTimer = 0
            local skillMap     = {Q = "3", E = "4", R = "5"}
            local selectedKeys = {}
            for k, v in pairs(AutoSkillSelections) do
                if v then table.insert(selectedKeys, k) end
            end
            local keysToUse = (#selectedKeys == 0) and {"Q", "E", "R"} or selectedKeys
            if entityId then
                for _, key in ipairs(keysToUse) do
                    local val = GetAbilityBarValue(skillMap[key])
                    if val then
                        task.spawn(function()
                            pcall(function()
                                farmRemote:InvokeServer(entityId, val, {})
                            end)
                        end)
                    end
                end
            end
        end

        if autoEnterAreaBusy then continue end

        if AutoEnterAreaEnabled then
            local playerPos    = hrp.Position
            local detectedArea = GetCurrentAreaModel(playerPos)

            if detectedArea ~= currentAreaModel then
                currentAreaModel = detectedArea
            end

            if currentAreaModel then
                local unvisitedROTs = GetUnvisitedROTs(currentAreaModel)

                if #unvisitedROTs > 0 then
                    local chosenROT = unvisitedROTs[math.random(1, #unvisitedROTs)]
                    visitedROTs[chosenROT] = true
                    autoEnterAreaBusy = true

                    if farmLockActive then
                        farmLockActive       = false
                        currentTargetPart    = nil
                        currentTargetKeyword = nil
                        lastEntry            = nil
                    end
                    SafeStopCharacter()

                    task.spawn(function()
                        task.wait(0.1)
                        local c  = LocalPlayer.Character
                        local h  = c and c:FindFirstChild("HumanoidRootPart")
                        local hu = c and c:FindFirstChild("Humanoid")
                        if h and hu then
                            h.AssemblyLinearVelocity  = Vector3.zero
                            h.AssemblyAngularVelocity = Vector3.zero
                            hu.PlatformStand = true
                            h.CFrame = CFrame.new(chosenROT.Position)
                            task.wait(0.2)
                            h.AssemblyLinearVelocity  = Vector3.zero
                            h.AssemblyAngularVelocity = Vector3.zero
                            hu.PlatformStand = false
                            task.defer(function()
                                local c2  = LocalPlayer.Character
                                local h2  = c2 and c2:FindFirstChild("HumanoidRootPart")
                                local hu2 = c2 and c2:FindFirstChild("Humanoid")
                                if h2 then
                                    h2.AssemblyLinearVelocity  = Vector3.zero
                                    h2.AssemblyAngularVelocity = Vector3.zero
                                end
                                if hu2 then hu2.PlatformStand = false end
                            end)
                        end
                        autoEnterAreaBusy = false
                    end)

                    continue
                end
            end
        end

        if lastEntry and not IsTargetStillValid(lastEntry) then
            lastEntry = nil
        end

        local targets = GetValidTargets()

        if #targets == 0 then
            if farmLockActive then StopFarmLock() end
            lastEntry = nil
            continue
        end

        local bestEntry = targets[1]
        local chosenEntry

        if lastEntry and IsTargetStillValid(lastEntry) then
            chosenEntry = (bestEntry.priority < lastEntry.priority) and bestEntry or lastEntry
        else
            chosenEntry = bestEntry
        end

        lastEntry = chosenEntry

        if chosenEntry.keyword == "Chest" or chosenEntry.keyword == "Debris" then
            visitedChestDebris[tostring(chosenEntry.outerModel)] = true
        end

        currentTargetPart    = chosenEntry.targetPart
        currentTargetKeyword = chosenEntry.keyword
        farmLockActive       = true
    end
end)

task.spawn(function()
    local switchRemote = ReplicatedStorage
        :WaitForChild("GameplayAbilitySystem")
        :WaitForChild("Remote")
        :WaitForChild("ClientApplyServerActivateGA")
    local slotIndex = 1

    while true do
        task.wait(5)
        if not AutoSwitchWeaponsEnabled then continue end

        local entityId    = GetEntityModelId(GetPlayerEntityModel())
        local abilityVal6 = GetAbilityBarValue("6")
        if not entityId or not abilityVal6 then continue end

        task.spawn(function()
            pcall(function()
                switchRemote:InvokeServer(entityId, abilityVal6, {
                    TargetSlot = tostring(slotIndex)
                })
            end)
        end)
        slotIndex = slotIndex == 1 and 2 or 1
    end
end)

local Window = Library:CreateWindow({
    Title = "  Symbiote",
    Size  = UDim2.new(0, 580, 0, 440),
})

local PlayerTab   = Window:CreateTab("Player")
local AutoFarmTab = Window:CreateTab("Auto Farm")
local VariousTab  = Window:CreateTab("Various")

PlayerTab:AddToggle("Fly", function(state)
    FlyEnabled = state
    if state then EnableFly() else DisableFly() end
end)
PlayerTab:AddSlider("Fly Speed", 50, 500, 50, function(v) FlySpeed = v end)

PlayerTab:AddToggle("NoClip", function(state)
    if state then EnableNoClip() else DisableNoClip() end
end)

PlayerTab:AddToggle("Walk Speed", function(state)
    WalkSpeedEnabled = state
    if state then EnableWalkSpeed() else DisableWalkSpeed() end
end)
PlayerTab:AddSlider("Walk Speed Amount", 1, 20, 1, function(v)
    local ratio = (v - 1) / (20 - 1)
    WalkSpeedValue = 1 + ratio * (5 * 5 - 1)
end)

PlayerTab:AddToggle("Laggy Run", function(state)
    LaggyRunEnabled = state
    if state then EnableLaggyRun() else DisableLaggyRun() end
end)
PlayerTab:AddSlider("Laggy Run Distance", 1, 10, 1, function(v) LaggyRunDistance = v end)
PlayerTab:AddSlider("Laggy Run Delay",    1, 10, 1, function(v) LaggyRunDelay = v end)

PlayerTab:AddToggle("CTRL + Click to TP", function(state)
    CtrlClickTPEnabled = state
    if state then EnableCtrlClickTP() else DisableCtrlClickTP() end
end)

PlayerTab:AddToggle("Infinite Jump", function(state)
    InfiniteJumpEnabled = state
    if state then
        if InfiniteJumpConnection then InfiniteJumpConnection:Disconnect() end
        InfiniteJumpConnection = UserInputService.JumpRequest:Connect(function()
            if not InfiniteJumpEnabled then return end
            local char = LocalPlayer.Character
            local hum  = char and char:FindFirstChild("Humanoid")
            if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
        end)
    else
        if InfiniteJumpConnection then InfiniteJumpConnection:Disconnect(); InfiniteJumpConnection = nil end
    end
end)

AutoFarmTab:AddToggle("Auto Farm", function(state)
    AutoFarmEnabled = state
    if not state then
        StopFarmLock()
        autoEnterAreaBusy  = false
        visitedChestDebris = {}
        currentAreaModel   = nil
        visitedROTs        = {}
    end
end)

AutoFarmTab:AddSlider("Distance To NPC", 5, 50, 10, function(v)
    DistanceToNPC = v
end)

AutoFarmTab:AddToggle("Auto Skill", function(state)
    AutoSkillEnabled = state
end)

AutoFarmTab:AddDropdown("Select To Auto Skill", {"Q", "E", "R"}, function(selected)
    AutoSkillSelections = {}
    for k, v in pairs(selected) do
        if v then AutoSkillSelections[k] = true end
    end
end)

AutoFarmTab:AddToggle("Auto Enter Area", function(state)
    AutoEnterAreaEnabled = state
    if not state then
        autoEnterAreaBusy = false
        currentAreaModel  = nil
        visitedROTs       = {}
    end
end)

VariousTab:AddToggle("Auto Switch Weapons", function(state)
    AutoSwitchWeaponsEnabled = state
end)
