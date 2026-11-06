local Library = loadstring(game:HttpGet("https://gist.githubusercontent.com/ssssssssss21/f2127829151a31beea020f5dd9211ad6/raw/39cabe77a3a30898f880ab55a48c9d7770d31a01/UI.lua"))()

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local VirtualUser = game:GetService("VirtualUser")
local VirtualInputManager = game:GetService("VirtualInputManager")
local LocalPlayer = Players.LocalPlayer

-- ============================== STATE ==============================
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
local AutoSwitchWeaponsEnabled = false
local AntiAFKEnabled = false
local DistanceToNPC = 8
local MaxTargetRange = 500
local AutoSkillSelections = {}

local currentTarget = nil -- {humanoid = Humanoid, root = BasePart}
local farmLockActive = false
local TweenSpeed = 300

-- ============================== HELPERS ==============================
local function GetCharacter()
    local char = LocalPlayer.Character
    if not char then return nil end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hrp or not hum then return nil end
    return char, hrp, hum
end

local function SafeStopCharacter()
    local _, hrp, hum = GetCharacter()
    if not hrp then return end
    hrp.AssemblyLinearVelocity = Vector3.zero
    hrp.AssemblyAngularVelocity = Vector3.zero
    hum.PlatformStand = false
end

local function StopFarmLock()
    farmLockActive = false
    currentTarget = nil
    SafeStopCharacter()
end

-- ============================== FARM FOLLOW ==============================
RunService.Heartbeat:Connect(function()
    if not AutoFarmEnabled or not farmLockActive then return end
    if not currentTarget or not currentTarget.root or not currentTarget.root.Parent then return end

    local _, hrp, hum = GetCharacter()
    if not hrp or hum.Health <= 0 then return end

    local tRoot = currentTarget.root
    local tPos = tRoot.Position + Vector3.new(0, DistanceToNPC, 0)
    local lookTarget = Vector3.new(tRoot.Position.X, tPos.Y, tRoot.Position.Z) - Vector3.new(0, 1, 0)
    local targetCF = CFrame.new(tPos, lookTarget)

    hum.PlatformStand = true

    if (hrp.Position - tPos).Magnitude < 0.5 then
        hrp.CFrame = targetCF
    else
        local alpha = math.clamp((TweenSpeed / 16) * 0.15, 0.05, 1)
        hrp.CFrame = hrp.CFrame:Lerp(targetCF, alpha)
    end
end)

-- ============================== NO CLIP ==============================
local function EnableNoClip()
    if NoClipConnection then return end
    NoClipConnection = RunService.Stepped:Connect(function()
        local character = LocalPlayer.Character
        if character then
            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") then part.CanCollide = false end
            end
        end
    end)
end

local function DisableNoClip()
    if NoClipConnection then NoClipConnection:Disconnect(); NoClipConnection = nil end
    local character = LocalPlayer.Character
    if character then
        for _, part in ipairs(character:GetDescendants()) do
            if part:IsA("BasePart") then part.CanCollide = true end
        end
    end
end

-- ============================== FLY ==============================
local function EnableFly()
    local _, hrp = GetCharacter()
    if not hrp then return end
    if FlyBodyVelocity then FlyBodyVelocity:Destroy() end
    if FlyBodyGyro then FlyBodyGyro:Destroy() end

    FlyBodyVelocity = Instance.new("BodyVelocity")
    FlyBodyVelocity.Velocity = Vector3.zero
    FlyBodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
    FlyBodyVelocity.Parent = hrp

    FlyBodyGyro = Instance.new("BodyGyro")
    FlyBodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
    FlyBodyGyro.P = 9e4
    FlyBodyGyro.Parent = hrp

    if FlyConnection then FlyConnection:Disconnect() end
    FlyConnection = RunService.Heartbeat:Connect(function()
        if not FlyEnabled or not FlyBodyVelocity or not FlyBodyGyro then return end
        local cam = Workspace.CurrentCamera
        local dir = Vector3.zero
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

-- ============================== WALK SPEED ==============================
local function EnableWalkSpeed()
    if WalkSpeedConnection then WalkSpeedConnection:Disconnect() end
    WalkSpeedConnection = RunService.Heartbeat:Connect(function()
        if not WalkSpeedEnabled then return end
        local _, hrp, hum = GetCharacter()
        if not hrp or hum.Health <= 0 then return end
        local moveDir = hum.MoveDirection
        if moveDir.Magnitude < 0.1 then return end
        local cf = hrp.CFrame
        local newPos = cf.Position + moveDir.Unit * WalkSpeedValue
        hrp.CFrame = CFrame.fromMatrix(newPos, cf.RightVector, cf.UpVector, -cf.LookVector)
    end)
end

local function DisableWalkSpeed()
    if WalkSpeedConnection then WalkSpeedConnection:Disconnect(); WalkSpeedConnection = nil end
end

-- ============================== LAGGY RUN ==============================
local function EnableLaggyRun()
    if LaggyRunConnection then LaggyRunConnection:Disconnect() end
    LaggyRunAccum = 0
    LaggyRunConnection = RunService.Heartbeat:Connect(function(dt)
        if not LaggyRunEnabled then return end
        local _, hrp, hum = GetCharacter()
        if not hrp or hum.Health <= 0 then return end
        local moveDir = hum.MoveDirection
        if moveDir.Magnitude < 0.1 then LaggyRunAccum = 0; return end
        LaggyRunAccum = LaggyRunAccum + dt
        if LaggyRunAccum < LaggyRunDelay * 0.1 then return end
        LaggyRunAccum = 0
        local cf = hrp.CFrame
        local newPos = cf.Position + moveDir.Unit * LaggyRunDistance
        hrp.CFrame = CFrame.fromMatrix(newPos, cf.RightVector, cf.UpVector, -cf.LookVector)
    end)
end

local function DisableLaggyRun()
    if LaggyRunConnection then LaggyRunConnection:Disconnect(); LaggyRunConnection = nil end
    LaggyRunAccum = 0
end

-- ============================== CTRL + CLICK TP ==============================
local function EnableCtrlClickTP()
    if CtrlClickTPConnection then return end
    CtrlClickTPConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if not CtrlClickTPEnabled or gameProcessed then return end
        if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
        if not (UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.RightControl)) then return end

        local char, hrp = GetCharacter()
        if not hrp then return end

        local cam = Workspace.CurrentCamera
        local mousePos = UserInputService:GetMouseLocation()
        local ray = cam:ViewportPointToRay(mousePos.X, mousePos.Y)
        local params = RaycastParams.new()
        params.FilterType = Enum.RaycastFilterType.Exclude
        params.FilterDescendantsInstances = {char}
        local result = Workspace:Raycast(ray.Origin, ray.Direction * 5000, params)
        if result then
            hrp.CFrame = CFrame.new(result.Position + Vector3.new(0, 3, 0)) * (hrp.CFrame - hrp.CFrame.Position)
        end
    end)
end

local function DisableCtrlClickTP()
    if CtrlClickTPConnection then CtrlClickTPConnection:Disconnect(); CtrlClickTPConnection = nil end
end

-- ============================== NPC TRACKING (universal) ==============================
local npcHumanoids = {}

local function RegisterHumanoid(obj)
    if not obj:IsA("Humanoid") then return end
    local model = obj.Parent
    if not model or not model:IsA("Model") then return end
    if Players:GetPlayerFromCharacter(model) then return end
    npcHumanoids[obj] = true
end

Workspace.DescendantAdded:Connect(RegisterHumanoid)
task.spawn(function()
    local n = 0
    for _, obj in ipairs(Workspace:GetDescendants()) do
        RegisterHumanoid(obj)
        n = n + 1
        if n % 2000 == 0 then task.wait() end
    end
end)

local function IsTargetValid(target)
    if not target then return false end
    local hum, root = target.humanoid, target.root
    if not hum or not hum.Parent or not root or not root.Parent then return false end
    return hum.Health > 0
end

local function GetNearestTarget(origin)
    local best, bestDist = nil, MaxTargetRange
    for hum in pairs(npcHumanoids) do
        local model = hum.Parent
        if not model or not model.Parent then
            npcHumanoids[hum] = nil
        elseif hum.Health > 0 and not Players:GetPlayerFromCharacter(model) then
            local root = model:FindFirstChild("HumanoidRootPart") or model.PrimaryPart
            if root then
                local d = (root.Position - origin).Magnitude
                if d <= bestDist then
                    bestDist = d
                    best = {humanoid = hum, root = root}
                end
            end
        end
    end
    return best
end

-- ============================== TOOLS / INPUT ==============================
local function GetAllTools()
    local tools = {}
    local char = LocalPlayer.Character
    local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
    if backpack then
        for _, t in ipairs(backpack:GetChildren()) do
            if t:IsA("Tool") then table.insert(tools, t) end
        end
    end
    if char then
        for _, t in ipairs(char:GetChildren()) do
            if t:IsA("Tool") then table.insert(tools, t) end
        end
    end
    return tools
end

local function PressKey(keyCode)
    pcall(function()
        VirtualInputManager:SendKeyEvent(true, keyCode, false, game)
        task.wait(0.05)
        VirtualInputManager:SendKeyEvent(false, keyCode, false, game)
    end)
end

local function Attack(char, hum)
    local tool = char:FindFirstChildOfClass("Tool")
    if not tool then
        local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
        local first = backpack and backpack:FindFirstChildOfClass("Tool")
        if first then pcall(function() hum:EquipTool(first) end) end
        tool = char:FindFirstChildOfClass("Tool")
    end
    if tool then pcall(function() tool:Activate() end) end
    pcall(function() VirtualUser:ClickButton1(Vector2.new(0, 0)) end)
end

-- ============================== AUTO FARM LOOP ==============================
task.spawn(function()
    local skillTimer = 0
    while true do
        task.wait(0.1)

        if not AutoFarmEnabled then
            if farmLockActive then StopFarmLock() end
            skillTimer = 0
            continue
        end

        local char, hrp, hum = GetCharacter()
        if not char or hum.Health <= 0 then
            farmLockActive = false
            currentTarget = nil
            continue
        end

        if not IsTargetValid(currentTarget) then
            currentTarget = GetNearestTarget(hrp.Position)
        end

        if not currentTarget then
            if farmLockActive then StopFarmLock() end
            continue
        end

        farmLockActive = true
        Attack(char, hum)

        skillTimer = skillTimer + 0.1
        if AutoSkillEnabled and skillTimer >= 3 then
            skillTimer = 0
            local selected = {}
            for k, v in pairs(AutoSkillSelections) do
                if v then table.insert(selected, k) end
            end
            local keys = (#selected == 0) and {"Q", "E", "R"} or selected
            for _, key in ipairs(keys) do
                local kc = Enum.KeyCode[key]
                if kc then task.spawn(PressKey, kc) end
            end
        end
    end
end)

-- ============================== AUTO SWITCH WEAPONS ==============================
task.spawn(function()
    local idx = 0
    while true do
        task.wait(5)
        if not AutoSwitchWeaponsEnabled then continue end
        local _, _, hum = GetCharacter()
        if not hum or hum.Health <= 0 then continue end
        local tools = GetAllTools()
        if #tools < 2 then continue end
        idx = idx % #tools + 1
        pcall(function() hum:EquipTool(tools[idx]) end)
    end
end)

-- ============================== ANTI AFK ==============================
LocalPlayer.Idled:Connect(function()
    if not AntiAFKEnabled then return end
    pcall(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end)

-- ============================== RESPAWN HANDLING ==============================
LocalPlayer.CharacterAdded:Connect(function()
    farmLockActive = false
    currentTarget = nil
    task.wait(0.5)
    if FlyEnabled then EnableFly() end
end)

-- ============================== UI ==============================
local Window = Library:CreateWindow({
    Title = "  Sentinal",
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
            local _, _, hum = GetCharacter()
            if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
        end)
    else
        if InfiniteJumpConnection then InfiniteJumpConnection:Disconnect(); InfiniteJumpConnection = nil end
    end
end)

AutoFarmTab:AddToggle("Auto Farm (Nearest NPC)", function(state)
    AutoFarmEnabled = state
    if not state then StopFarmLock() end
end)
AutoFarmTab:AddSlider("Distance To NPC", 3, 50, 8, function(v) DistanceToNPC = v end)
AutoFarmTab:AddSlider("Max Target Range", 50, 2000, 500, function(v) MaxTargetRange = v end)

AutoFarmTab:AddToggle("Auto Skill (Q / E / R)", function(state)
    AutoSkillEnabled = state
end)
AutoFarmTab:AddDropdown("Select To Auto Skill", {"Q", "E", "R"}, function(selected)
    AutoSkillSelections = {}
    for k, v in pairs(selected) do
        if v then AutoSkillSelections[k] = true end
    end
end)

VariousTab:AddToggle("Auto Switch Weapons", function(state)
    AutoSwitchWeaponsEnabled = state
end)
VariousTab:AddToggle("Anti AFK", function(state)
    AntiAFKEnabled = state
end)
