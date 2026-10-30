local lib = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local VirtualInputManager = nil
local localPlayer, tbl, tbl2, tbl3, tbl4, tbl5, tbl6, fn, fn2, currentCamera, fn3, fn4, fn5, fn6, fn7, fn8

do
    pcall(function()
        VirtualInputManager = game:GetService("VirtualInputManager")
    end)

    local function fn9(arg, arg2, arg3, arg4)
        pcall(function()
            if VirtualInputManager and type(VirtualInputManager.SendKeyEvent) == "function" then
                local v = VirtualInputManager
                local sendKeyEvent = v.SendKeyEvent
                local flag = arg3 or false
                local v2 = arg4 or game
                sendKeyEvent(v, arg, arg2, flag, v2)
                return
            end

            local value = rawget(_G, "syn")

            if value and type(value.virtual_input) == "function" then
                pcall(function()
                    value.virtual_input(arg2, arg)
                end)

                return
            end

            local value2 = rawget(_G, "VirtualInputManager")
            local value3 = value2 or rawget(_G, "virtualinputmanager")

            if value3 and type(value3.SendKeyEvent) == "function" then
                pcall(function()
                    local sendKeyEvent = value3.SendKeyEvent
                    local flag = arg3 or false
                    local v = arg4 or game
                    sendKeyEvent(value3, arg, arg2, flag, v)
                end)

                return
            end

            local VirtualUser = nil

            pcall(function()
                VirtualUser = game:GetService("VirtualUser")
            end)

            if not VirtualUser or type(VirtualUser.SetKeyDown) ~= "function" then
                return
            end

            pcall(function()
                if arg then
                    VirtualUser:SetKeyDown(tostring(arg2))
                else
                    VirtualUser:SetKeyUp(tostring(arg2))
                end
            end)
        end)
    end

    Instance.new("TextLabel").RichText = true

    if not VirtualInputManager or type(VirtualInputManager.SendKeyEvent) ~= "function" then
        local tbl7 = VirtualInputManager or {}
        VirtualInputManager = tbl7

        VirtualInputManager.SendKeyEvent = function(arg, arg2, arg3, arg4, arg5)
            fn9(arg2, arg3, arg4, arg5)
        end
    end

    game:GetService("HttpService")
    localPlayer = Players.LocalPlayer

    while not localPlayer do
        task.wait()
        localPlayer = Players.LocalPlayer
    end

    tbl = {
        supaDelay = 0.25,
        supaSpeed = 1,
        supaBehindOffset = 5,
        supaLockPercent = 100,
        supaRandomMovement = 6,
        supaBehindEnabled = true,
        supaV2Delay = 0.1,
        kakyoDistance = 20,
        kakyoMoveDuration = 0.15,
        kakyoStartDelay = 100,
        kakyoAutoRotateLockTime = 250,
        supaV2Speed = 1,
        supaV2RandomAngle = 30,
        supaV2TeleportDistance = 4,
        dashclipTargetAnimationId = "10479335397",
        dashclipEnableDuration = 0.55,
        dashclipScanInterval = 5,
        loopDelay = 0.16,
        loopRadius = 6,
        loopMinTargetDist = 15,
        loopMaxHeight = 10,
        loopSteps = 100,
        loopDashCount = 6,
        loopDashInterval = 0.08,
        loopSettleTime = 0.12,
        loopSettleHold = 0.6,
        autoSurfEnabled = false,
        autoWhirlwindDunkEnabled = false,
        slideM1Enabled = false,
        autoDownSlamEnabled = false,
        autoTwistedEnabled = false,
        kyotoDelay = 250,
        m1ResetDistance = 25.5,
        m1ResetRotation = 65,
        autoCounterDistance = 13,
        detectBuffer = 0.02,
        extraDelay = 0.05,
        cooldown = 1,
        underOffset = 3,
        techHelperDelay = 0.3,
        techHelperHold = 0.15,
        techHelperLookUp = true,
        techHelperLockPercent = 50,
        lethalDashDelay = 0.1,
        loopReworkAnimDetectId = "10503381238",
        loopReworkBlockAnimId = "10471478869",
    }

    local k = Enum.KeyCode.K

    local tbl7 = {
        ["rbxassetid://10503381238"] = true,
        ["rbxassetid://13379003796"] = true,
    }

    tbl2 = {}
    tbl2.supa = false
    tbl2.supaV2 = false
    tbl2.loop = false
    tbl2.kyoto = false
    tbl2.lethal = false
    tbl2.sideDashEnabled = false
    tbl2.sideDashMobileMode = false
    tbl2.sideDashFakeMobile = false
    tbl2.sideDashDistance = 35
    tbl2.sideDashRange = 2
    tbl2.sideDashCooldown = 1
    tbl2.sideDashShow = true
    tbl2.sideDashDelay = 0.11
    tbl2.sideDashSmoothness = 0.4
    tbl2.sideDashPrediction = 0.3
    tbl2.sideDashSilent = false
    tbl2.sideDashReach = 6.5
    tbl2.sideDashSpeedN = 110
    tbl2.sideDashDuration = 0.15
    tbl2.sideDashTargetColorR = 173
    tbl2.sideDashTargetColorG = 216
    tbl2.sideDashTargetColorB = 230
    tbl2.espEnabled = false
    tbl2.espShowBoxes = true
    tbl2.espShowNames = true
    tbl2.espShowTracers = true
    tbl2.espShowHealth = true
    tbl2.espShapeMode = "2D"
    tbl2.espColor = Color3.fromRGB(255, 255, 255)
    tbl2.dashclipEnabled = false
    tbl2.dashclipActive = false
    tbl2.dashclipUnloaded = false
    tbl2.upperGrasp = false
    tbl2.upperGraspCooldown = false
    tbl2.upperGraspSearchRadius = 70
    tbl2.upperGraspTweenTime = 10
    tbl2.upperGraspAfterDelay = 14
    tbl2.upperGraspCooldownSeconds = 50
    tbl2.autoSurf = false
    tbl2.autoWhirlwindDunk = false
    tbl2.slideM1 = false
    tbl2.autoDownSlam = false
    tbl2.autoTwisted = false
    tbl2.autoLockJump = false
    tbl2.autoLockJumpUnloaded = false
    tbl2.autoLockJumpDebounce = false
    tbl2.autoLockJumpBlocked = false
    tbl2.autoLockJumpWaitDetect = 16.25
    tbl2.autoLockJumpWaitRemote = 1
    tbl2.autoLockJumpLockDuration = 16
    tbl2.autoLockJumpTargetRadius = 25
    tbl2.autoLockJumpCooldown = 0
    tbl2.autoLockJumpResponsiveness = 300
    tbl2.deathCounterESP = false
    tbl2.yoyo = false
    tbl2.yoyoDistanceLimit = 10
    tbl2.yoyoCooldownActive = false
    tbl2.kakyoAutoEnabled = false
    tbl2.kakyoDetected = false
    tbl2.kakyoHeartbeatConn = nil
    tbl2.kakyoDoKyotoRunning = false
    tbl2.kakyoDoKyotoWatcher = nil
    tbl2.mouseDash = false
    tbl2.mouseDashDelay = 500
    tbl2.stretchScreenValue = 100
    tbl2.arrowIndicator = false
    tbl2.speedBoost = false
    tbl2.speedValue = 0.1
    tbl2.sigmaESP = false
    tbl2.sigmaColor = Color3.fromRGB(255, 0, 0)
    tbl2.m1Catch = false
    tbl2.hitboxColor = Color3.fromRGB(255, 0, 0)
    tbl2.jumpBoost = false
    tbl2.jumpValue = 7.2
    tbl2.gravityValue = 192.6
    tbl2.fovValue = 70
    tbl2.noDashCooldown = false
    tbl2.noFatigue = false
    tbl2.emotesExtraSlots = false
    tbl2.emotesSearchBar = false
    tbl2.loopRework = false
    tbl2.loopReworkUnloaded = false
    tbl2.loopReworkDebounce = false
    tbl2.loopReworkBlocked = false
    tbl2.loopReworkWaitDetect = 3
    tbl2.loopReworkWaitJump = 0
    tbl2.loopReworkWaitRemote = 1
    tbl2.loopReworkLockDuration = 15
    tbl2.loopReworkTargetRadius = 50
    tbl2.loopReworkCooldown = 10
    tbl2.loopReworkResponsiveness = 600
    tbl2.m1Range = 13
    tbl2.m1Hold = 200
    tbl2.m1Pred = 0
    tbl2.autoJump = false
    tbl2.counterESP = false
    tbl2.noStun = false
    tbl2.noSlow = false
    tbl2.stopAnimations = false
    tbl2.onlyTorsoCollisions = false
    tbl2.m1Reset = false
    tbl2.m1Block = false
    tbl2.instantTwisted = false
    tbl2.autoCounter = false
    tbl2.avatarChangerUserId = ""
    tbl2.noClip = false
    tbl2.noEndLag = false
    tbl2.espName = false
    tbl2.espHighlight = false
    tbl2.espHRPBox = false
    tbl2.espPlayerCount = false
    tbl2.m2Block = false
    tbl2.vfxColorChanger = "None"
    tbl2.fastDash = false
    tbl2.downSlam = false
    tbl2.respawnAtDeath = false
    tbl2.fpsBoost = false
    tbl2.counterToxic = false
    tbl2.showCharacter = false
    tbl2.techHelper = false
    tbl2.dashTimer = false

    lib:AddTheme({
        Name = "BloodShadow",
        Accent = lib:Gradient({
            ["0"] = {Color = Color3.fromHex("#200000"), Transparency = 0},
            ["100"] = {Color = Color3.fromHex("#0d0000"), Transparency = 0},
        }, {Rotation = 0}),
        Dialog = Color3.fromHex("#120000"),
        Outline = Color3.fromHex("#3a0a0a"),
        Text = Color3.fromHex("#ffcccc"),
        Placeholder = Color3.fromHex("#0a0000"),
        Background = Color3.fromHex("#0a0000"),
        Button = Color3.fromHex("#4d0000"),
        Icon = Color3.fromHex("#b30000"),
        Hover = Color3.fromHex("#660000"),
        Active = Color3.fromHex("#990000"),
        ScrollBar = Color3.fromHex("#2e0000"),
        Border = Color3.fromHex("#330000"),
    })

    lib:SetFont("rbxassetid://12187377325")
    tbl3 = {m1BlockConnection = nil, sideDashConnections = {}}

    lib:Localization({
        Enabled = true,
        Prefix = "loc:",
        DefaultLanguage = "en",
        Translations = {
            en = {
                AUTOTECH_TITLE = "Sentinal Hub v1.1",
                SUPA_TECH = "Supa Tech",
                SUPA_V2 = "Supa V2",
                LOOP_DASH = "Loop Dash",
                KYOTO_COMBO = "Kyoto Combo",
                LETHAL_DASH = "Lethal Dash",
                M1_RESET = "M1 Reset",
                INSTANT_TWISTED = "Instant Twisted",
                AUTO_COUNTER = "Auto Counter",
                NO_CLIP = "No Clip Players",
                M2_BLOCK = "M2 Block",
                KIBA = "Kiba",
                DOWN_SLAM = "True Down Slam",
                RESPAWN = "Respawn at Death",
                FPS_BOOST = "FPS Boost",
                COUNTER_TOXIC = "Counter Toxic",
                SHOW_CHARACTER = "Show Character",
                SETTINGS = "Settings",
                UTILITIES = "Utilities",
                SUPA_DELAY = "Supa Delay (ms)",
                SUPA_SPEED = "Supa Speed (x10)",
                SUPA_BEHIND = "Supa Behind Offset",
                SUPA_LOCK = "Lock Percentage",
                SUPA_RANDOM = "Random Movement",
                SUPA_BEHIND_TOGGLE = "Teleport Behind",
                SUPAV2_DELAY = "Supa V2 Delay (ms)",
                SUPAV2_SPEED = "Supa V2 Speed (x10)",
                SUPAV2_ANGLE = "Random Angle",
                SUPAV2_DISTANCE = "Teleport Distance",
                LOOP_DELAY = "Loop Dash Delay (ms)",
                LOOP_RADIUS = "Loop Radius (studs)",
                LOOP_MAX_HEIGHT = "Max Height",
                LOOP_STEPS = "Loop Steps",
                LOOP_DASH_COUNT = "Dash Count",
                LOOP_DASH_INTERVAL = "Dash Interval (ms)",
                LOOP_SETTLE_TIME = "Settle Time (s)",
                LOOP_SETTLE_HOLD = "Settle Hold (s)",
                KYOTO_DELAY = "Kyoto Delay (ms)",
                M1_DISTANCE = "M1 Distance",
                M1_ROTATION = "M1 Rotation",
                AUTOCOUNTER_DISTANCE = "Counter Distance",
                KIBA_DELAY = "Kiba Delay (s)",
                KIBA_DISTANCE = "Kiba Distance",
                KIBA_TWEEN_TIME = "Kiba Tween Time",
                KIBA_LOCK_TIME = "Kiba Lock Time",
                KIBA_CHAOS_TIME = "Kiba Chaos Time",
                ENABLE_FEATURE = "Enable Feature",
                TECH_HELPER = "Tech Helper",
                TECH_HELPER_DELAY = "Tech Helper Delay (ms)",
                TECH_HELPER_HOLD = "Tech Helper Hold (ms)",
                TECH_HELPER_LOOK = "Tech Helper Look Up",
                TECH_HELPER_LOCK = "Tech Helper Lock Percentage",
                LETHAL_DASH_DELAY = "Lethal Dash Delay (ms)",
            },
        },
    })

    lib.TransparencyValue = 0.2
    lib:SetTheme("BloodShadow")

    lib:Popup({
        Title = (function(arg, arg2, arg3)
            local str = ""

            for i = 1, #arg do
                local n_ = (i - 1) / (#arg - 1)
                local n_2 = math.floor((arg2.R + (arg3.R - arg2.R) * n_) * 255)
                local n_3 = math.floor((arg2.G + (arg3.G - arg2.G) * n_) * 255)
                local n_4 = math.floor((arg2.B + (arg3.B - arg2.B) * n_) * 255)
                str = str .. string.format("<font color=\"rgb(%d,%d,%d)\">%s</font>", n_2, n_3, n_4, arg:sub(i, i))
            end

            return str
        end)("Sentinal HUB/AutoTech beta v1.2", Color3.fromHex("#a00e0e"), Color3.fromHex("#490303")),
        Icon = "lucide:smile",
        Content = "Please join the discord server !",
        Buttons = {
            {
                Title = "Enjoy!",
                Icon = "lucide:heart",
                Variant = "Primary",
                Callback = function() end,
            },
        },
    })

    lib:CreateWindow({
        Title = "Sentinal Hub v1.2",
        Icon = "rbxassetid://88536674439005",
        Author = "Auto Tech",
        Folder = "SentinalHub",
        Size = UDim2.fromOffset(650, 550),
        Theme = "BloodShadow",
        HideSearchBar = false,
        NewElements = true,
        SideBarWidth = 200,
        HidePanelBackground = false,
        Background = "rbxassetid://118938778997085",
        User = {
            Enabled = true,
            Anonymous = false,
            Callback = function()
                lib:Notify({
                    Title = "ITS ME OMG!",
                    Content = "Bro its just your goffy ahh",
                    Duration = 2,
                })
            end,
        },

    Window:Tag({Title = "Beta", Color = Color3.fromHex("#315dff")})

    Window:CreateTopbarButton("theme-switcher", "geist:logo-discord", function()
        if setclipboard then
            pcall(function()
                setclipboard("https://discord.com/invite/2ACBzQkCDs")
            end)
        end

        lib:Notify({
            Title = "Discord link has been copied!",
            Content = "Please join our discord!",
            Icon = "geist:logo-discord",
            Duration = 3,
        })
    end, 990)

    Window:CreateTopbarButton("theme-switcherr", "lucide:youtube", function()
        if setclipboard then
            pcall(function()
                setclipboard("https://www.youtube.com/@CallMeDovy")
            end)
        end

        lib:Notify({
            Title = "Youtube Channel link has been copied!",
            Content = "Please Subscribe!",
            Icon = "lucide:youtube",
            Duration = 3,
        })
    end, 990)

    Window:CreateTopbarButton("theme-switcherr", "geist:logo-github", function()
        link = "https://github.com/needanewphone32-eng"

        if setclipboard then
            pcall(function()
                setclipboard(link)
            end)
        end

        lib:Notify({
            Title = "My GitHub link has been copied!",
            Content = "Please Follow!",
            Icon = "geist:logo-github",
            Duration = 3,
        })
    end, 990)

    Window:CreateTopbarButton("theme-switcherr", "lucide:circle-dollar-sign", function()
        if setclipboard then
            pcall(function()
                setclipboard("https://www.roblox.com/games/17266556805/Xasssyyts-Place#!/store")
            end)
        end

        lib:Notify({
            Title = "Donations link has been copied!",
            Content = "Please Donate !",
            Icon = "lucide:circle-dollar-sign",
            Duration = 3,
        })
    end, 990)

    tbl4 = {
        SupaTech = Window:Tab({Title = "Supa ", Icon = "lucide:sword", Opened = true}),
        SideDash = Window:Tab({
            Title = "Hook Dash [Beta]",
            Icon = "geist:anchor",
            Opened = true,
        }),
        LoopDash = Window:Tab({
            Title = "Loop Dash",
            Icon = "lucide:refresh-ccw-dot",
            Opened = true,
        }),
        LoopDashv2 = Window:Tab({
            Title = "Loop Dash v2",
            Icon = "lucide:refresh-ccw-dot",
            Opened = true,
        }),
        KittyTech = Window:Tab({Title = "Kitty Tech", Icon = "lucide:cat", Opened = true}),
        KAKYO = Window:Tab({
            Title = "Kyoto Combo",
            Icon = "lucide:step-forward",
            Opened = true,
        }),
        LethalDash = Window:Tab({
            Title = "Lethal Dash",
            Icon = "geist:arrow-up-down",
            Opened = true,
        }),
        M1Reset = Window:Tab({
            Title = "M1 Reset",
            Icon = "geist:clock-dashed",
            Opened = true,
        }),
        InstantTwisted = Window:Tab({
            Title = "Instant Twisted",
            Icon = "lucide:corner-up-right",
            Opened = true,
        }),
        AutoBlock = Window:Tab({Title = "AutoBlock", Icon = "lucide:shield", Opened = true}),
        YOYO = Window:Tab({Title = "Kiba", Icon = "lucide:crosshair", Opened = true}),
        AutoCounter = Window:Tab({
            Title = "Auto Counter",
            Icon = "lucide:shield-user",
            Opened = true,
        }),
        HitboxAbuse = Window:Tab({Title = "HitboxAbuse", Icon = "geist:box", Opened = true}),
        TechHelper = Window:Tab({
            Title = "Tech Helper",
            Icon = "lucide:hand-helping",
            Opened = true,
        }),
        Animations = Window:Tab({Title = "Animations", Icon = "lucide:play", Opened = true}),
        Utilities = Window:Tab({
            Title = "Utilities",
            Icon = "lucide:square-plus",
            Opened = true,
        }),
        Settings = Window:Tab({
            Title = "Settings",
            Icon = "lucide:settings",
            Opened = true,
        }),
        GOG = Window:Tab({
            Title = "Backdash Cancel<stroke color=\"#ff7300\" thickness=\"2\" transparency=\"0.50\" joins=\"miter\">[COMING SOON]</stroke>",
            Icon = "geist:lock-closed",
            Locked = true,
            Opened = true,
        }),
        Mzd1Reset = Window:Tab({
            Title = "Compatetive<stroke color=\"#ff7300\" thickness=\"2\" transparency=\"0.50\" joins=\"miter\">[COMING SOON]</stroke>",
            Icon = "geist:lock-closed",
            Locked = true,
            Opened = true,
        }),
        M1zzqReset = Window:Tab({
            Title = "Supa REWORK<stroke color=\"#ff7300\" thickness=\"2\" transparency=\"0.50\" joins=\"miter\">[COMING SOON]</stroke>",
            Icon = "geist:lock-closed",
            Locked = true,
            Opened = true,
        }),
        M1Rdzqeset = Window:Tab({
            Title = "Wall Extend<stroke color=\"#ff7300\" thickness=\"2\" transparency=\"0.50\" joins=\"miter\">[COMING SOON]</stroke>",
            Icon = "geist:lock-closed",
            Locked = true,
            Opened = true,
        }),
    }

    tbl4.SupaTech:Select()

    Window:Dialog({
        Icon = "rbxassetid://88536674439005",
        Title = "Change logs Beta v1.2",
        Content = "Auto tech beta 1.2 !\n- Added Hook Dash (mobile and pc)\n- Reworked Kyoto Combo\n- Reworked Lethal Dash\n- Changed M1 Reset\n- Reworked Auto Counter\n- Added Auto Block\n- Added Hitbox Abuse (pc only)\n- Changed Tech Helper\n- Changed Animations tab\n- Changed Utilities tab\n- Changed Settings tab\n- Added Side Dash config options\n- Added Kitty Tech (Kiba)\n\nPlease join the discord server ! you can get full log there !",
        Buttons = {
            {
                Title = "Confirm",
                Callback = function()
                    print("Welcome To Sentinal Hub :))")
                end,
            },
        },
    })

    tbl5 = {
        None = nil,
        ["Saitama Death Counter"] = Vector3.new(-64.56, 29.25, 20336.1),
        Atomic = Vector3.new(1064.54, 131.29, 23007.78),
        Sky = Vector3.new(373.62, 10343.44, -253.37),
        Corner = Vector3.new(-154.55, 439.51, -367.67),
        ["Left Mountain"] = Vector3.new(-17.4, 652.52, -391.01),
        ["Right Mountain"] = Vector3.new(776.64, 677.12, 99.28),
        ["Middle Mountain"] = Vector3.new(370.56, 628.29, -505.2),
        ["Middle of Map"] = Vector3.new(129.66, 440.75, -42.03),
        ["Base Plate"] = Vector3.new(1065.75, 20.63, 23041.6),
    }

    onlyTorsoCollisionsConnections = {
        playerAddedConn = nil,
        characterAddedConns = {},
        npcChildAddedConns = {},
        destroyingConn = nil,
    }

    setOnlyTorsoCollisions = function(arg)
        if not tbl2.onlyTorsoCollisions then
            return
        end

        if not arg or not arg.Parent then
            return
        end

        for i, descendant in ipairs(arg:GetDescendants()) do
            if descendant:IsA("BasePart") then
                local v = string.find(string.lower(descendant.Name), "torso")
                isTorso = v

                if isTorso then
                    descendant.CanCollide = true
                else
                    descendant.CanCollide = false
                end
            end
        end
    end

    handleNewCharacter = function(arg)
        if not arg then
            return
        end

        if not arg:FindFirstChild("HumanoidRootPart") and not arg:FindFirstChild("Torso") then
            return
        end
        setOnlyTorsoCollisions(arg)

        local connection = arg.DescendantAdded:Connect(function(descendant)
            if tbl2.onlyTorsoCollisions and descendant:IsA("BasePart") then
                local v = string.find(string.lower(descendant.Name), "torso")
                local v2 = v
                local canCollide = v2 and true or false
                descendant.CanCollide = canCollide
            end
        end)

        onlyTorsoCollisionsConnections.characterAddedConns[arg] = connection

        arg.AncestryChanged:Connect(function(child, parent)
            if not parent then
                conn = onlyTorsoCollisionsConnections.characterAddedConns[arg]

                if conn then
                    pcall(function()
                        conn:Disconnect()
                    end)
                end

                onlyTorsoCollisionsConnections.characterAddedConns[arg] = nil
            end
        end)
    end

    handleNPCs = function()
        for i, descendant in ipairs(Workspace:GetDescendants()) do
            if descendant:IsA("Model") and descendant.Name == "Weakest Dummy" then
                setOnlyTorsoCollisions(descendant)

                local connection = descendant.DescendantAdded:Connect(function(descendant2)
                    if tbl2.onlyTorsoCollisions and descendant2:IsA("BasePart") then
                        local v = string.find(string.lower(descendant2.Name), "torso")
                        local v2 = v
                        local canCollide = v2 and true or false
                        descendant2.CanCollide = canCollide
                    end
                end)

                onlyTorsoCollisionsConnections.npcChildAddedConns[descendant] = connection

                descendant.AncestryChanged:Connect(function(child, parent)
                    if not parent then
                        conn2 = onlyTorsoCollisionsConnections.npcChildAddedConns[descendant]

                        if conn2 then
                            pcall(function()
                                conn2:Disconnect()
                            end)
                        end

                        onlyTorsoCollisionsConnections.npcChildAddedConns[descendant] = nil
                    end
                end)
            end
        end
    end

    setupOnlyTorsoCollisions = function()
        if onlyTorsoCollisionsConnections.playerAddedConn then
            pcall(function()
                onlyTorsoCollisionsConnections.playerAddedConn:Disconnect()
            end)

            onlyTorsoCollisionsConnections.playerAddedConn = nil
        end

        if onlyTorsoCollisionsConnections.destroyingConn then
            pcall(function()
                onlyTorsoCollisionsConnections.destroyingConn:Disconnect()
            end)

            onlyTorsoCollisionsConnections.destroyingConn = nil
        end

        for k2, characterAddedConn in pairs(onlyTorsoCollisionsConnections.characterAddedConns) do
            if characterAddedConn then
                pcall(function()
                    characterAddedConn:Disconnect()
                end)
            end
        end

        onlyTorsoCollisionsConnections.characterAddedConns = {}

        for k2, npcChildAddedConn in pairs(onlyTorsoCollisionsConnections.npcChildAddedConns) do
            if npcChildAddedConn then
                pcall(function()
                    npcChildAddedConn:Disconnect()
                end)
            end
        end

        onlyTorsoCollisionsConnections.npcChildAddedConns = {}
        if not tbl2.onlyTorsoCollisions then
            return
        end

        onlyTorsoCollisionsConnections.playerAddedConn = Players.PlayerAdded:Connect(function(player)
            if player and player.Character then
                handleNewCharacter(player.Character)
            end

            if player then
                player.CharacterAdded:Connect(handleNewCharacter)
            end
        end)

        for i, player in ipairs(Players:GetPlayers()) do
            if player ~= localPlayer then
                if player.Character then
                    handleNewCharacter(player.Character)
                end

                player.CharacterAdded:Connect(handleNewCharacter)
            end
        end

        handleNPCs()
    end

    sigmaActive = false
    sigmaConnections = {}

    SigmaCreateHighlight = function(adornee)
        if not adornee then
            return
        end

        for k2, child in pairs(Workspace:GetChildren()) do
            if child:IsA("Highlight") and child.Adornee == adornee then
                child:Destroy()
            end
        end

        local highlight_ = Instance.new("Highlight")
        highlight = highlight_
        highlight.Adornee = adornee
        highlight.FillColor = tbl2.sigmaColor
        highlight.OutlineColor = tbl2.sigmaColor
        highlight.FillTransparency = 0.2
        highlight.OutlineTransparency = 0
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.Parent = Workspace

        task.delay(3, function()
            if highlight and highlight.Parent then
                highlight:Destroy()
            end
        end)
    end

    SigmaHookAllPlayers = function()
        for k2, v in pairs(sigmaConnections) do
            v:Disconnect()
        end

        sigmaConnections = {}
        if not sigmaActive then
            return
        end

        for k2, player in pairs(Players:GetPlayers()) do
            if player.Character then
                SigmaHookCharacter(player.Character)
            end

            local connection = player.CharacterAdded:Connect(function(character_)
                task.wait(1)
                SigmaHookCharacter(character_)
            end)

            table.insert(sigmaConnections, connection)
        end
    end

    SigmaHookCharacter = function(arg)
        if not arg then
            return
        end
        local humanoid_ = arg:WaitForChild("Humanoid", 2)
        if not humanoid_ then
            return
        end

        local connection = humanoid_.AnimationPlayed:Connect(function(arg2)
            if not sigmaActive then
                return
            end
            local match = tostring(arg2.Animation.AnimationId):match("%d+")

            if match and (match == "12351854556" or match == "15311685628" or match == "78521642007560" or match == "69696969696969696" or match == "13380567856786255751" or match == "134775786876786767678406437626") then
                SigmaCreateHighlight(arg)
            end
        end)

        table.insert(sigmaConnections, connection)
    end

    SigmaToggle = function(sigmaESP)
        sigmaActive = sigmaESP
        tbl2.sigmaESP = sigmaESP

        if sigmaESP then
            task.wait(0.5)
            SigmaHookAllPlayers()
        else
            for k2, child in pairs(Workspace:GetChildren()) do
                if child:IsA("Highlight") then
                    child:Destroy()
                end
            end

            for k2, v in pairs(sigmaConnections) do
                v:Disconnect()
            end

            sigmaConnections = {}
        end
    end

    SigmaTest = function()
        if localPlayer.Character then
            SigmaCreateHighlight(localPlayer.Character)
        end
    end

    if tbl2.sigmaESP then
        task.wait(3)
        SigmaToggle(true)
    end

    hookDashAddHighlight = function(adornee)
        if not adornee then
            return
        end

        pcall(function()
            if tbl3.hookDashHighlight then
                tbl3.hookDashHighlight:Destroy()
                tbl3.hookDashHighlight = nil
            end
        end)

        local highlight_ = Instance.new("Highlight")
        highlight_.Name = "HookDashHighlight"
        highlight_.FillTransparency = 0.8
        highlight_.OutlineTransparency = 0.3
        highlight_.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop

        if hookDashColor then
            pcall(function()
                highlight_.OutlineColor = hookDashColor
                highlight_.FillColor = hookDashColor
            end)
        end

        if typeof(adornee) == "Instance" and adornee:IsA("Player") then
            if adornee.Character then
                highlight_.Adornee = adornee.Character
                highlight_.Parent = adornee.Character
            else
                highlight_.Parent = Workspace
            end
        elseif typeof(adornee) == "Instance" and adornee:IsA("Model") then
            highlight_.Adornee = adornee
            highlight_.Parent = adornee
        else
            highlight_.Parent = Workspace
        end

        tbl3.hookDashHighlight = highlight_
    end

    hookDashRemoveHighlight = function()
        if tbl3.hookDashHighlight then
            pcall(function()
                tbl3.hookDashHighlight:Destroy()
            end)

            tbl3.hookDashHighlight = nil
        end
    end

    hookDashGetDummy = function()
        local live_ = Workspace:FindFirstChild("Live")
        local weakestDummy = live_ and Workspace.Live:FindFirstChild("Weakest Dummy")
        return weakestDummy
    end

    hookDashGetTargetFromMouse = function()
        local mouse_ = nil

        pcall(function()
            mouse_ = localPlayer:GetMouse()
        end)

        if not mouse_ then
            return nil
        end
        local p_ = nil

        pcall(function()
            p_ = mouse_.Hit.p
        end)

        if not p_ then
            return nil
        end
        local v = hookDashGetDummy()
        local position = v and v:FindFirstChild("HumanoidRootPart") and v.HumanoidRootPart.Position
        local v2 = nil
        local huge = math.huge

        for k2, player in pairs(Players:GetPlayers()) do
            if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local magnitude = (player.Character.HumanoidRootPart.Position - p_).Magnitude

                if magnitude < huge then
                    huge = magnitude
                    v2 = player
                end
            end
        end

        if v and position and (position - p_).Magnitude < huge then
            v2 = v
        end

        return v2
    end

    hookDashTouchSelect = function(arg)
        local currentCamera2 = Workspace.CurrentCamera
        local currentCamera3 = currentCamera2 or workspace.CurrentCamera
        local v = currentCamera3:ScreenPointToRay(arg.X, arg.Y)
        local raycastParams = RaycastParams.new()
        raycastParams.FilterDescendantsInstances = {localPlayer.Character}
        raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
        local hit_ = Workspace:Raycast(v.Origin, v.Direction * 1000, raycastParams)
        if not hit_ then
            return
        end
        local instance = hit_.Instance
        local model_ = instance and hit_.Instance:FindFirstAncestorOfClass("Model")
        if not model_ then
            return
        end
        local playerFromCharacter = Players:GetPlayerFromCharacter(model_)

        if playerFromCharacter then
            if tbl3.hookDashTarget == playerFromCharacter then
                hookDashRemoveHighlight()
                tbl3.hookDashTarget = nil
                tbl3.hookDashToggled = false
                hookDashDebug("Touch: deselected player", playerFromCharacter.Name)
            else
                hookDashRemoveHighlight()
                tbl3.hookDashTarget = playerFromCharacter
                hookDashAddHighlight(playerFromCharacter.Character)
                tbl3.hookDashToggled = true
                hookDashDebug("Touch: selected player", playerFromCharacter.Name)
            end
        elseif model_ and model_:FindFirstChild("HumanoidRootPart") then
            local v2 = hookDashGetDummy()

            if model_ == v2 then
                if tbl3.hookDashTarget == v2 then
                    hookDashRemoveHighlight()
                    tbl3.hookDashTarget = nil
                    tbl3.hookDashToggled = false
                    hookDashDebug("Touch: deselected dummy")
                else
                    hookDashRemoveHighlight()
                    tbl3.hookDashTarget = v2
                    hookDashAddHighlight(v2)
                    tbl3.hookDashToggled = true
                    hookDashDebug("Touch: selected dummy")
                end
            end
        end
    end

    hookDashSelectNearest = function()
        local v = hookDashGetTargetFromMouse()

        if v then
            hookDashRemoveHighlight()
            tbl3.hookDashTarget = v

            if typeof(v) == "Instance" and v:IsA("Player") and v.Character then
                hookDashAddHighlight(v.Character)
                hookDashDebug("Selected player:", v.Name)
            else
                hookDashAddHighlight(v)
                hookDashDebug("Selected model/dummy")
            end

            tbl3.hookDashToggled = true
        else
            hookDashDebug("SelectNearest: no target found")
        end
    end

    hookDashEnsureLV = function(parent)
        if not parent then
            return nil
        end

        if not tbl3.hookDashAtt or not tbl3.hookDashAtt.Parent then
            tbl3.hookDashAtt = Instance.new("Attachment", parent)
        end

        if not tbl3.hookDashLV or not tbl3.hookDashLV.Parent then
            local linearVelocity = Instance.new("LinearVelocity")
            linearVelocity.Attachment0 = tbl3.hookDashAtt
            linearVelocity.MaxForce = math.huge
            linearVelocity.VelocityConstraintMode = Enum.VelocityConstraintMode.Vector
            linearVelocity.RelativeTo = Enum.ActuatorRelativeTo.World
            linearVelocity.Parent = parent
            tbl3.hookDashLV = linearVelocity
        end

        return tbl3.hookDashLV
    end

    hookDashStopLV = function()
        if tbl3.hookDashLV then
            pcall(function()
                tbl3.hookDashLV.VectorVelocity = Vector3.new()
                tbl3.hookDashLV:Destroy()
            end)

            tbl3.hookDashLV = nil
        end

        if tbl3.hookDashAtt then
            pcall(function()
                tbl3.hookDashAtt:Destroy()
            end)

            tbl3.hookDashAtt = nil
        end
    end

    hookDashPerformFallback = function()
        if not hookDash or not tbl3.hookDashTarget then
            return
        end
        local character_ = localPlayer.Character
        if not character_ then
            hookDashDebug("Fallback: no character")
            return
        end
        local humanoidRootPart_ = character_:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart_ then
            hookDashDebug("Fallback: no HRP")
            return
        end
        local hookDashTarget = tbl3.hookDashTarget
        local humanoidRootPart_2

        if typeof(hookDashTarget) == "Instance" and hookDashTarget:IsA("Player") then
            local character_2 = hookDashTarget.Character
            local humanoidRootPart_3 = character_2 and hookDashTarget.Character:FindFirstChild("HumanoidRootPart")
            humanoidRootPart_2 = humanoidRootPart_3
        else
            humanoidRootPart_2 = hookDashTarget:FindFirstChild("HumanoidRootPart")
        end

        if not humanoidRootPart_2 then
            hookDashDebug("Fallback: no target HRP")
            return
        end
        local assemblyLinearVelocity = humanoidRootPart_2.AssemblyLinearVelocity
        local vector = assemblyLinearVelocity or Vector3.new()
        local rightVector = humanoidRootPart_2.CFrame.RightVector
        local v = hookDashRange
        local n_ = v or 2
        local n_2 = rightVector * n_
        local v2 = hookDashPrediction
        local n_3 = v2 or 0.3
        local n_4 = n_2 + vector * n_3
        local vector2 = Vector3.new(humanoidRootPart_2.Position.X + n_4.X, humanoidRootPart_.Position.Y, humanoidRootPart_2.Position.Z + n_4.Z)
        hookDashDebug("Fallback dash to", vector2)

        pcall(function()
            if fireDash then
                fireDash(character_)
            end
        end)

        local attachment = Instance.new("Attachment", humanoidRootPart_)
        local linearVelocity = Instance.new("LinearVelocity")
        linearVelocity.Attachment0 = attachment
        linearVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        linearVelocity.VelocityConstraintMode = Enum.VelocityConstraintMode.Vector
        linearVelocity.RelativeTo = Enum.ActuatorRelativeTo.World
        local n_5 = vector2 - humanoidRootPart_.Position

        if n_5.Magnitude > 0 then
            local unit = n_5.Unit
            local v3 = hookDashSpeedN
            local n_6 = v3 or 110
            linearVelocity.VectorVelocity = unit * n_6
        else
            linearVelocity.VectorVelocity = Vector3.new(0, 0, 0)
        end

        linearVelocity.Parent = humanoidRootPart_
        tbl3.hookDashLV = linearVelocity
        tbl3.hookDashAtt = attachment
        local delay_ = task.delay
        local v3 = hookDashDuration
        local n_6 = v3 or 0.15

        delay_(n_6, function()
            pcall(function()
                if tbl3.hookDashLV then
                    tbl3.hookDashLV:Destroy()
                end

                if tbl3.hookDashAtt then
                    tbl3.hookDashAtt:Destroy()
                end
            end)

            tbl3.hookDashLV = nil
            tbl3.hookDashAtt = nil
        end)
    end

    hookDashPerformFull = function()
        local ok_, result = pcall(function()
            if not hookDash or not tbl3.hookDashTarget then
                error("no hookDash or no target")
            end

            local character_ = localPlayer.Character

            if not character_ then
                error("no character")
            end

            local humanoidRootPart_ = character_:FindFirstChild("HumanoidRootPart")

            if not humanoidRootPart_ then
                error("no hrp")
            end

            if humanoidRootPart_.Position.Y > 442 then
                error("Y too high")
            end

            local hookDashTarget = tbl3.hookDashTarget
            local humanoidRootPart_2

            if typeof(hookDashTarget) == "Instance" and hookDashTarget:IsA("Player") then
                local character_2 = hookDashTarget.Character
                local humanoidRootPart_3 = character_2 and hookDashTarget.Character:FindFirstChild("HumanoidRootPart")
                humanoidRootPart_2 = humanoidRootPart_3
            else
                humanoidRootPart_2 = hookDashTarget:FindFirstChild("HumanoidRootPart")
            end

            if not humanoidRootPart_2 then
                error("no target hrp")
            end

            local magnitude = (humanoidRootPart_2.CFrame.Position - humanoidRootPart_.CFrame.Position).Magnitude
            local v = hookDashDistance
            local n_ = v or distance or 35

            if n_ < magnitude then
                error("too far")
            end

            pcall(function()
                if fireDash then
                    fireDash(character_)
                end
            end)

            click = true
            f = false
            noClip = false
            m = true
            a = true

            task.spawn(function()
                local delay_ = task.delay
                local v2 = hookDashDuration
                local n_2 = v2 or duration or 0.15

                delay_(n_2, function()
                    silent = false
                    m = false
                    noClip = true
                    q = true
                    local connection = nil

                    connection = RunService.Stepped:Connect(function()
                        hookDash_aimlock(tbl3.hookDashTarget)

                        task.delay(0.5, function()
                            if connection then
                                connection:Disconnect()
                            end
                        end)
                    end)

                    local wait_ = task.wait
                    local v3 = cooldown
                    local n_3 = v3 or 1
                    wait_(n_3)
                    f = true
                end)
            end)

            task.spawn(function()
                local delay_ = task.delay
                local v2 = hookDashDelay
                local n_2 = v2 or delay or 0.11

                delay_(n_2, function()
                    hookDash_simulateLeftClickMobile()
                    click = false
                end)
            end)

            local unit = (humanoidRootPart_2.Position - humanoidRootPart_.Position).Unit
            local lookVector = humanoidRootPart_2.CFrame.LookVector
            local unit2 = Vector3.new(unit.X, 0, unit.Z).Unit
            local vector = Vector3.new(unit2.Z, 0, -unit2.X)
            local vector2 = Vector3.new(-unit2.Z, 0, unit2.X)
            local position = humanoidRootPart_2.Position
            local v2 = hookDashRange
            local n_2 = v2 or range or 2
            local n_3 = position + vector * n_2
            local position2 = humanoidRootPart_2.Position
            local v3 = hookDashRange
            local n_4 = v3 or range or 2
            local unit3 = (n_3 - humanoidRootPart_.Position).Unit
            local unit4 = (position2 + vector2 * n_4 - humanoidRootPart_.Position).Unit
            local position3 = humanoidRootPart_2.Position
            local rightVector = humanoidRootPart_2.CFrame.RightVector
            local v4 = hookDashRange
            local n_5 = v4 or range or 2
            local magnitude2 = (position3 + rightVector * n_5 - humanoidRootPart_.CFrame.Position).Magnitude
            local position4 = humanoidRootPart_2.Position
            local n_6 = -humanoidRootPart_2.CFrame.RightVector
            local v5 = hookDashRange
            local n_7 = v5 or range or 2

            if magnitude2 < (position4 + n_6 * n_7 - humanoidRootPart_.CFrame.Position).Magnitude then
                if lookVector:Dot(unit) < 0 then
                    silent = true
                    hookDash_pressQA()

                    if character_:FindFirstChildOfClass("Humanoid") then
                        character_:FindFirstChildOfClass("Humanoid").AutoRotate = false
                    end

                    local connection = nil

                    connection = RunService.Stepped:Connect(function()
                        if not m then
                            connection:Disconnect()
                            return
                        end
                        hookDash_silentAim(tbl3.hookDashTarget, -1)
                    end)
                else
                    silent = true
                    hookDash_pressQD()

                    if character_:FindFirstChildOfClass("Humanoid") then
                        character_:FindFirstChildOfClass("Humanoid").AutoRotate = false
                    end

                    local connection = nil

                    connection = RunService.Stepped:Connect(function()
                        if not m then
                            connection:Disconnect()
                            return
                        end
                        hookDash_silentAim(tbl3.hookDashTarget, 1)
                    end)
                end
            elseif lookVector:Dot(unit) < 0 then
                silent = true
                hookDash_pressQD()

                if character_:FindFirstChildOfClass("Humanoid") then
                    character_:FindFirstChildOfClass("Humanoid").AutoRotate = false
                end

                local connection = nil

                connection = RunService.Stepped:Connect(function()
                    if not m then
                        connection:Disconnect()
                        return
                    end
                    hookDash_silentAim(tbl3.hookDashTarget, 1)
                end)
            else
                silent = true
                hookDash_pressQA()

                if character_:FindFirstChildOfClass("Humanoid") then
                    character_:FindFirstChildOfClass("Humanoid").AutoRotate = false
                end

                local connection = nil

                connection = RunService.Stepped:Connect(function()
                    if not m then
                        connection:Disconnect()
                        return
                    end
                    hookDash_silentAim(tbl3.hookDashTarget, -1)
                end)
            end

            while m do
                task.wait()

                if tbl3.hookDashTarget and tbl3.hookDashTarget == hookDashGetDummy() then
                    local character_2 = localPlayer.Character
                    local humanoidRootPart_3 = character_2 and localPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local v6 = humanoidRootPart_3
                    local assemblyLinearVelocity = tbl3.hookDashTarget.HumanoidRootPart.AssemblyLinearVelocity
                    local position5 = tbl3.hookDashTarget.HumanoidRootPart.Position
                    local v7 = hookDashRange
                    local n_8 = v7 or range or 2
                    local n_9 = position5 + vector * n_8
                    local v8 = hookDashPrediction
                    local n_10 = v8 or prediction or 0.3
                    local n_11 = n_9 + assemblyLinearVelocity * n_10
                    local position6 = tbl3.hookDashTarget.HumanoidRootPart.Position
                    local v9 = hookDashRange
                    local n_12 = v9 or range or 2
                    local n_13 = position6 + vector2 * n_12
                    local v10 = hookDashPrediction
                    local n_14 = v10 or prediction or 0.3
                    local n_15 = n_13 + assemblyLinearVelocity * n_14
                    local v11 = hookDashReach
                    local n_16 = v11 or reach or 6.5
                    local n_17 = n_11 + unit3 * n_16
                    local v12 = hookDashReach
                    local n_18 = v12 or reach or 6.5
                    local n_19 = n_15 + unit4 * n_18
                    local vector3 = Vector3.new(n_17.X, v6.Position.Y, n_17.Z)
                    local vector4 = Vector3.new(n_19.X, v6.Position.Y, n_19.Z)
                    local position7 = tbl3.hookDashTarget.HumanoidRootPart.Position
                    local rightVector2 = tbl3.hookDashTarget.HumanoidRootPart.CFrame.RightVector
                    local v13 = hookDashRange
                    local n_20 = v13 or range or 2
                    local magnitude3 = (position7 + rightVector2 * n_20 - v6.CFrame.Position).Magnitude
                    local position8 = tbl3.hookDashTarget.HumanoidRootPart.Position
                    local n_21 = -tbl3.hookDashTarget.HumanoidRootPart.CFrame.RightVector
                    local v14 = hookDashRange
                    local n_22 = v14 or range or 2
                    local v15

                    if magnitude3 < (position8 + n_21 * n_22 - v6.CFrame.Position).Magnitude then
                        local tbl8 = {}
                        v15 = tbl8
                        tbl8.CFrame = CFrame.new(vector3)
                    else
                        local tbl8 = {}
                        v15 = tbl8
                        tbl8.CFrame = CFrame.new(vector4)
                    end

                    local v16 = hookDash_setDashVelocity
                    local position9 = v15.CFrame.Position
                    local v17 = hookDashDuration
                    local n_23 = v17 or duration or 0.15
                    v16(v6, position9, n_23)
                    local delay_ = task.delay
                    local v18 = hookDashDuration
                    local n_24 = v18 or duration or 0.15

                    delay_(n_24, function()
                        m = false
                        hookDashStopLV()
                    end)
                elseif tbl3.hookDashTarget and typeof(tbl3.hookDashTarget) == "Instance" and tbl3.hookDashTarget:IsA("Player") and tbl3.hookDashTarget.Character then
                    local character_2 = localPlayer.Character
                    local humanoidRootPart_3 = character_2 and localPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local v6 = humanoidRootPart_3
                    local assemblyLinearVelocity = tbl3.hookDashTarget.Character.HumanoidRootPart.AssemblyLinearVelocity
                    local position5 = tbl3.hookDashTarget.Character.HumanoidRootPart.Position
                    local v7 = hookDashRange
                    local n_8 = v7 or range or 2
                    local n_9 = position5 + vector * n_8
                    local v8 = hookDashPrediction
                    local n_10 = v8 or prediction or 0.3
                    local n_11 = n_9 + assemblyLinearVelocity * n_10
                    local position6 = tbl3.hookDashTarget.Character.HumanoidRootPart.Position
                    local v9 = hookDashRange
                    local n_12 = v9 or range or 2
                    local n_13 = position6 + vector2 * n_12
                    local v10 = hookDashPrediction
                    local n_14 = v10 or prediction or 0.3
                    local n_15 = n_13 + assemblyLinearVelocity * n_14
                    local v11 = hookDashReach
                    local n_16 = v11 or reach or 6.5
                    local n_17 = n_11 + unit3 * n_16
                    local v12 = hookDashReach
                    local n_18 = v12 or reach or 6.5
                    local n_19 = n_15 + unit4 * n_18
                    local vector3 = Vector3.new(n_17.X, v6.Position.Y, n_17.Z)
                    local vector4 = Vector3.new(n_19.X, v6.Position.Y, n_19.Z)
                    local position7 = tbl3.hookDashTarget.Character.HumanoidRootPart.Position
                    local rightVector2 = tbl3.hookDashTarget.Character.HumanoidRootPart.CFrame.RightVector
                    local v13 = hookDashRange
                    local n_20 = v13 or range or 2
                    local magnitude3 = (position7 + rightVector2 * n_20 - v6.CFrame.Position).Magnitude
                    local position8 = tbl3.hookDashTarget.Character.HumanoidRootPart.Position
                    local n_21 = -tbl3.hookDashTarget.Character.HumanoidRootPart.CFrame.RightVector
                    local v14 = hookDashRange
                    local n_22 = v14 or range or 2
                    local v15

                    if magnitude3 < (position8 + n_21 * n_22 - v6.CFrame.Position).Magnitude then
                        local tbl8 = {}
                        v15 = tbl8
                        tbl8.CFrame = CFrame.new(vector3)
                    else
                        local tbl8 = {}
                        v15 = tbl8
                        tbl8.CFrame = CFrame.new(vector4)
                    end

                    local v16 = hookDash_setDashVelocity
                    local position9 = v15.CFrame.Position
                    local v17 = hookDashDuration
                    local n_23 = v17 or duration or 0.15
                    v16(v6, position9, n_23)
                    local delay_ = task.delay
                    local v18 = hookDashDuration
                    local n_24 = v18 or duration or 0.15

                    delay_(n_24, function()
                        m = false
                        hookDashStopLV()
                    end)
                end
            end

            hookDashDebug("PerformFull: success")
        end)

        if ok_ then
            return true
        end
        local v = hookDashDebug
        local str = result or "unknown error"
        v("PerformFull failed:", str)
        return false, result
    end

    hookDashSetup = function()
        pcall(function()
            if tbl3.hookDashInput then
                tbl3.hookDashInput:Disconnect()
                tbl3.hookDashInput = nil
            end
        end)

        tbl3.hookDashInput = uis.InputBegan:Connect(function(input, gameProcessed)
            if gameProcessed then
                return
            end

            if input.UserInputType == Enum.UserInputType.Touch then
                if not hookDash then
                    return
                end

                pcall(function()
                    hookDashTouchSelect(input.Position)
                end)

                return
            end

            if input.UserInputType ~= Enum.UserInputType.Keyboard then
                return
            end

            if input.KeyCode == Enum.KeyCode.V then
                if not hookDash then
                    return
                end
                local flag

                if toogle then
                    flag = false
                else
                    flag = true
                end

                toogle = flag

                if toogle then
                    lastmagnitude = math.huge

                    pcall(function()
                        hookDashGetTargetFromMouse()
                    end)

                    if target then
                        pcall(function()
                            if target == hookDashGetDummy() then
                                hookDashAddHighlight(target)
                            else
                                hookDashAddHighlight(target.Character)
                            end
                        end)

                        tbl3.hookDashTarget = target
                        tbl3.hookDashToggled = true
                        local v = hookDashDebug
                        local str = type(target) == "table" and tostring(target)

                        if not str then
                            local v2 = tostring
                            local v3 = target
                            local name = v3 and target.Name or "model"
                            str = v2(name)
                        end

                        v("V: selected target (from original globals)", str)
                    end
                else
                    if target then
                        pcall(function()
                            if target == hookDashGetDummy() then
                                hookDashRemoveHighlight()
                            else
                                hookDashRemoveHighlight(target.Character)
                            end
                        end)

                        target = nil
                    end

                    tbl3.hookDashTarget = nil
                    tbl3.hookDashToggled = false
                    hookDashDebug("V: toggled off")
                end

                return
            end

            if input.KeyCode ~= Enum.KeyCode.C then
                return
            end

            if not hookDash then
                return
            end
            local hookDashTarget = tbl3.hookDashTarget
            local v = hookDashTarget or target
            if not v then
                hookDashDebug("C pressed but no target")
                return
            end

            local ok_, result = pcall(function()
                local v2, v3 = hookDashPerformFull()

                if not v2 then
                    local v4 = error
                    local str = v3 or "performfull failed"
                    v4(str)
                end
            end)

            if ok_ then
                hookDashDebug("C: full perform invoked successfully")
            else
                hookDashDebug("Full attempt failed, falling back. err:", result)

                pcall(function()
                    hookDashPerformFallback()
                end)
            end
        end)

        pcall(function()
            if tbl3.hookDashPlayerRemoving then
                tbl3.hookDashPlayerRemoving:Disconnect()
                tbl3.hookDashPlayerRemoving = nil
            end
        end)

        tbl3.hookDashPlayerRemoving = Players.PlayerRemoving:Connect(function(player)
            if tbl3.hookDashTarget == player then
                hookDashRemoveHighlight()
                tbl3.hookDashTarget = nil
                tbl3.hookDashToggled = false
                hookDashDebug("Player removed - cleared target")
            end
        end)

        pcall(function()
            if tbl3.hookDashWatcher then
                tbl3.hookDashWatcher:Disconnect()
                tbl3.hookDashWatcher = nil
            end
        end)

        tbl3.hookDashWatcher = RunService.Heartbeat:Connect(function()
            if not hookDash then
                return
            end
            local hookDashTarget = tbl3.hookDashTarget
            local v = hookDashTarget or target
            if not v then
                return
            end

            local ok_, result = pcall(function()
                if typeof(v) == "Instance" and v:IsA("Player") then
                    local character_ = v.Character
                    local humanoid_ = character_ and v.Character:FindFirstChildOfClass("Humanoid")
                    local flag = humanoid_ and humanoid_.Health > 0
                    return flag
                end

                if typeof(v) ~= "Instance" or not v:IsA("Model") then
                    return false
                end
                local humanoid_ = v:FindFirstChildOfClass("Humanoid")
                local flag = humanoid_ and humanoid_.Health > 0
                return flag
            end)

            if not ok_ or not result then
                hookDashRemoveHighlight()
                tbl3.hookDashTarget = nil
                tbl3.hookDashToggled = false
                target = nil
                toogle = false
                hookDashDebug("Target died or removed - cleared")
            end
        end)

        hookDashDebug("HookDash setup complete")
    end

    hookDashStop = function()
        pcall(function()
            if tbl3.hookDashInput then
                tbl3.hookDashInput:Disconnect()
                tbl3.hookDashInput = nil
            end
        end)

        pcall(function()
            if tbl3.hookDashPlayerRemoving then
                tbl3.hookDashPlayerRemoving:Disconnect()
                tbl3.hookDashPlayerRemoving = nil
            end
        end)

        pcall(function()
            if tbl3.hookDashWatcher then
                tbl3.hookDashWatcher:Disconnect()
                tbl3.hookDashWatcher = nil
            end
        end)

        pcall(function()
            if tbl3.hookDashCharAdded then
                tbl3.hookDashCharAdded:Disconnect()
                tbl3.hookDashCharAdded = nil
            end
        end)

        hookDashRemoveHighlight()
        tbl3.hookDashTarget = nil
        tbl3.hookDashToggled = false
        target = nil
        toogle = false

        pcall(function()
            hookDashStopLV()
        end)

        hookDashDebug("HookDash stopped and cleaned")
    end

    tbl4.KittyTech:Paragraph({
        Title = "Kitty Tech",
        Desc = "Made by ItzSoph — credits to him! (W.I.P)",
        Image = "swords",
        ImageSize = 20,
        Color = Color3.fromHex("#ff6b6b"),
    })

    local tbl8 = {Enabled = false}

    local tbl9 = {
        dashDelayBefore = 0.01,
        postDashWait = 0.06,
        cooldownTime = 4.8,
        orbitRadius = 3,
        orbitHeight = 1,
        spinDuration = 0.6,
        lockStart = 0.26,
        lockDuration = 0.35,
        targetDistance = 12,
        attachmentDuration = 0.5,
        pingMs = 60,
    }

    local function fn10(arg)
        local clamp_ = math.clamp
        local n_ = arg or 60
        local v = clamp_(n_, 10, 600)
        return math.clamp(v / 1000 * 1.3, 0.03, 0.22)
    end

    tbl9.postDashWait = fn10(tbl9.pingMs)
    local alignPosition = nil
    local alignOrientation = nil
    local connection = nil
    local part = nil
    local flag = false
    local tbl10 = {["10503381238"] = true, ["13379003796"] = true}
    local tbl11 = {["10479335397"] = true, ["13380255751"] = true}

    local function fn11()
        if alignPosition then
            alignPosition:Destroy()
            alignPosition = nil
        end

        if alignOrientation then
            alignOrientation:Destroy()
            alignOrientation = nil
        end

        if connection then
            connection:Disconnect()
            connection = nil
        end

        if part then
            part:Destroy()
            part = nil
        end

        local character_ = localPlayer.Character
        local humanoidRootPart_ = character_ and localPlayer.Character:FindFirstChild("HumanoidRootPart")

        if humanoidRootPart_ then
            for i, child in ipairs(humanoidRootPart_:GetChildren()) do
                if child:IsA("Attachment") or child.Name == "HasSnapped" then
                    child:Destroy()
                end
            end
        end
    end

    local function fn12(arg)
        fn11()
        if not arg or not localPlayer.Character then
            return
        end
        part = Instance.new("Part")
        local vector = Vector3.new(0.5, 0.5, 0.5)
        part.Size = vector
        part.Transparency = 1
        part.Anchored = true
        part.CanCollide = false
        part.Name = "KittyFollowPart"
        part.Parent = Workspace
        local attachment = Instance.new("Attachment", localPlayer.Character.HumanoidRootPart)
        local attachment2 = Instance.new("Attachment", part)
        local attachment3 = Instance.new("Attachment", localPlayer.Character.HumanoidRootPart)
        local attachment4 = Instance.new("Attachment", part)
        alignPosition = Instance.new("AlignPosition")
        alignPosition.Attachment0 = attachment
        alignPosition.Attachment1 = attachment2
        alignPosition.RigidityEnabled = true
        alignPosition.Responsiveness = 200
        alignPosition.MaxForce = math.huge
        alignPosition.Parent = localPlayer.Character.HumanoidRootPart
        alignOrientation = Instance.new("AlignOrientation")
        alignOrientation.Attachment0 = attachment3
        alignOrientation.Attachment1 = attachment4
        alignOrientation.RigidityEnabled = true
        alignOrientation.Responsiveness = 200
        alignOrientation.MaxTorque = math.huge
        alignOrientation.Parent = localPlayer.Character.HumanoidRootPart
        local n_ = 0

        connection = RunService.RenderStepped:Connect(function(deltaTime)
            if arg and arg.Parent and localPlayer.Character and localPlayer.Character.HumanoidRootPart then
                n_ = n_ + deltaTime
                if not tbl8.Enabled then
                    fn11()
                    return
                end
                local n_2 = arg.Position + Vector3.new(0, tbl9.orbitHeight, 0)
                local n_3 = math.rad(360) * (n_ / tbl9.spinDuration)
                local n_4 = n_2 + Vector3.new(math.cos(n_3) * tbl9.orbitRadius, 0, math.sin(n_3) * tbl9.orbitRadius)
                local cframe = CFrame.new(n_4, arg.Position)
                part.CFrame = cframe

                if not localPlayer.Character.HumanoidRootPart:FindFirstChild("HasSnapped") then
                    localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(n_4, arg.Position)
                    local boolValue = Instance.new("BoolValue")
                    boolValue.Name = "HasSnapped"
                    boolValue.Parent = localPlayer.Character.HumanoidRootPart
                end

                if tbl9.lockStart <= n_ and n_ <= tbl9.lockStart + tbl9.lockDuration then
                    local cframe2 = CFrame.new(localPlayer.Character.HumanoidRootPart.Position, arg.Position)
                    part.CFrame = cframe2
                end

                return
            end

            fn11()
        end)
    end

    local function fn13()
        local v = nil
        local targetDistance = tbl9.targetDistance

        for i, descendant in ipairs(Workspace:GetDescendants()) do
            if descendant:IsA("Model") and descendant ~= localPlayer.Character then
                local humanoid_ = descendant:FindFirstChildOfClass("Humanoid")
                local humanoidRootPart_ = descendant:FindFirstChild("HumanoidRootPart")
                local torso_ = humanoidRootPart_ or descendant:FindFirstChild("Torso") or descendant:FindFirstChild("UpperTorso")

                if humanoid_ and humanoid_.Health > 0 and torso_ then
                    local magnitude = (localPlayer.Character.HumanoidRootPart.Position - torso_.Position).Magnitude

                    if magnitude < targetDistance then
                        v = torso_
                        targetDistance = magnitude
                    end
                end
            end
        end

        return v
    end

    local function fn14(arg)
        if not arg then
            return
        end
        task.wait(tbl9.postDashWait)
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Q, false, game)
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Q, false, game)
        fn12(arg)
        task.delay(tbl9.attachmentDuration, fn11)
    end

    local function fn15(arg)
        if not tbl8.Enabled or flag then
            return
        end
        local v = string.match(arg.Animation.AnimationId, "%d+")

        if not tbl11[v] then
            if tbl10[v] then
                flag = true

                task.delay(tbl9.dashDelayBefore, function()
                    local v2 = fn13()

                    if v2 then
                        fn14(v2)
                    end
                end)

                task.delay(tbl9.cooldownTime, function()
                    flag = false
                end)
            end

            return
        end

        flag = true

        task.delay(tbl9.cooldownTime, function()
            flag = false
        end)
    end

    local function fn16(character_)
        local humanoid_ = character_:FindFirstChildOfClass("Humanoid")
        local humanoidRootPart_ = character_:FindFirstChild("HumanoidRootPart")

        if humanoid_ and humanoidRootPart_ then
            humanoid_.AnimationPlayed:Connect(fn15)
        end
    end

    if localPlayer.Character then
        fn16(localPlayer.Character)
    end

    localPlayer.CharacterAdded:Connect(fn16)

    tbl4.KittyTech:Toggle({
        Title = "Enable Kitty Tech",
        Flag = "Save1",
        Value = tbl8.Enabled,
        Callback = function(enabled)
            tbl8.Enabled = enabled

            if not enabled then
                fn11()
            end
        end,
    })

    tbl4.KittyTech:Dropdown({
        Title = "Ping Preset",
        Flag = "Save2",
        Values = {"10ms", "40ms ", "60MS", "100mS", "200ms"},
        Value = "60ms (Default)",
        Callback = function(arg)
            local v = ({
                ["10ms (LAN)"] = 10,
                ["40ms (Good)"] = 40,
                ["60ms (Default)"] = 60,
                ["100ms (High)"] = 100,
                ["200ms (Very High)"] = 200,
            })[arg]

            local pingMs = v or 60
            tbl9.pingMs = pingMs
            tbl9.postDashWait = fn10(tbl9.pingMs)
        end,
    })

    tbl4.KittyTech:Slider({
        Title = "Custom Ping (ms)",
        Flag = "Save3",
        Value = {Min = 10, Max = 400, Default = tbl9.pingMs},
        Callback = function(arg)
            tbl9.pingMs = tonumber(arg)
            tbl9.postDashWait = fn10(tbl9.pingMs)
        end,
    })

    tbl4.KittyTech:Paragraph({
        Title = "Sorry !",
        Desc = "Other configs will come in feture updates !",
        Image = "lucide:sad",
        ImageSize = 20,
        Color = Color3.fromHex("#ff6b6b"),
    })

    tbl4.AutoBlock:Paragraph({
        Title = "AutoBlock (W.I.P)",
        Desc = "Automatically blocks stuff — work in progress",
        Image = "shield",
        ImageSize = 20,
        Color = Color3.fromHex("#0984e3"),
    })

    local tbl12 = {Enabled = false, M1AfterBlock = false, BlockDistance = 20}
    local tbl13 = {}

    local tbl14 = {
        10469493270,
        10469630950,
        10469639222,
        10469643643,
        13532562418,
        13532600125,
        13532604085,
        13294471966,
        13491635433,
        13296577783,
        13295919399,
        13295936866,
        13370310513,
        13390230973,
        13378751717,
        13378708199,
        14004222985,
        13997092940,
        14001963401,
        14136436157,
        15259161390,
        15240216931,
        15240176873,
        15162694192,
        16515503507,
        16515520431,
        16515448089,
        16552234590,
        17889458563,
        17889461810,
        17889471098,
        17889290569,
        123005629431309,
        100059874351664,
        104895379416342,
    }

    local tbl15 = {
        [10479335397] = true,
        [13380255751] = true,
        [134775406437626] = true,
    }

    local tbl16 = {
        [10468665991] = true,
        [10466974800] = true,
        [10471336737] = true,
        [12510170988] = true,
        [12272894215] = true,
        [12296882427] = true,
        [12307656616] = true,
        [101588604872680] = true,
        [105442749844047] = true,
        [109617620932970] = true,
        [131820095363270] = true,
        [135289891173395] = true,
        [125955606488863] = true,
        [12534735382] = true,
        [12502664044] = true,
        [12509505723] = true,
        [12618271998] = true,
        [12684390285] = true,
        [13376869471] = true,
        [13294790250] = true,
        [13376962659] = true,
        [13501296372] = true,
        [13556985475] = true,
        [145162735010] = true,
        [14046756619] = true,
        [14299135500] = true,
        [14351441234] = true,
        [15290930205] = true,
        [15145462680] = true,
        [15295895753] = true,
        [15295336270] = true,
        [16139108718] = true,
        [16515850153] = true,
        [16431491215] = true,
        [16597322398] = true,
        [16597912086] = true,
        [17799224866] = true,
        [17838006839] = true,
        [17857788598] = true,
        [18179181663] = true,
        [113166426814229] = true,
        [116753755471636] = true,
        [116153572280464] = true,
        [114095570398448] = true,
        [77509627104305] = true,
    }

    local tbl17 = {}
    local flag2 = false

    local function fn17(arg, arg2)
        local character_ = localPlayer.Character
        if not character_ then
            return
        end
        local communicate = character_:FindFirstChild("Communicate")
        if not communicate then
            return
        end
        communicate:FireServer({Goal = "KeyPress", Key = Enum.KeyCode.F})

        if arg2 then
            task.wait(0.35)
        else
            task.wait(arg - 0.0001)
        end

        communicate:FireServer({Goal = "KeyRelease", Key = Enum.KeyCode.F})

        if tbl12.M1AfterBlock and not flag2 then
            flag2 = true

            task.spawn(function()
                communicate:FireServer({Goal = "LeftClick", Mobile = true})
                task.wait(0.3)
                communicate:FireServer({Goal = "LeftClickRelease", Mobile = true})
                task.wait(0.55)
                flag2 = false
            end)
        end
    end

    local function fn18()
        if tbl13.heartbeat then
            tbl13.heartbeat:Disconnect()
        end

        tbl13.heartbeat = RunService.Heartbeat:Connect(function()
            local character_, humanoidRootPart_, head_, live_, v, v2, v3, v4, v5, v6, v7, v8, v9, humanoid_, humanoidRootPart_2, v10, v11, v12, v13, v14
            local v15, v16, v17, v18, v19, v20, v21, animation, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, str, magnitude
            local flag3, n_, n_2, v32, v33, animation2, v34, v35, v36, v37, v38, v39, v40, v41, v42, humanoid_2, humanoidRootPart_3, v43, v44, v45
            local v46, v47, animation3, v48, v49, v50, v51, v52, v53, v54, v55, v56, humanoid_3, humanoidRootPart_4, v57, v58, v59, n_3
            n_3 = 1

            while true do
                if n_3 == 1 then
                    if tbl12.Enabled then
                        n_3 = 2
                    else
                        n_3 = 48
                    end
                elseif n_3 == 2 then
                    character_ = localPlayer.Character
                    humanoidRootPart_ = character_

                    if character_ then
                        n_3 = 3
                    else
                        n_3 = 4
                    end
                elseif n_3 == 3 then
                    humanoidRootPart_ = character_:FindFirstChild("HumanoidRootPart")
                    n_3 = 4
                elseif n_3 == 4 then
                    head_ = character_

                    if character_ then
                        n_3 = 5
                    else
                        n_3 = 6
                    end
                elseif n_3 == 5 then
                    head_ = character_:FindFirstChild("Head")
                    n_3 = 6
                elseif n_3 == 6 then
                    if humanoidRootPart_ and head_ then
                        n_3 = 8
                    else
                        n_3 = 7
                    end
                elseif n_3 == 7 then
                    return
                elseif n_3 == 8 then
                    live_ = Workspace:FindFirstChild("Live")

                    if live_ then
                        n_3 = 9
                    else
                        n_3 = 47
                    end
                elseif n_3 == 9 then
                    v, v2, v3 = pairs(live_:GetChildren())
                    v4 = v3
                    v5 = v
                    v6 = v2
                    n_3 = 10
                elseif n_3 == 10 then
                    v7, v8 = v5(v6, v4)

                    if v7 == nil then
                        n_3 = 46
                    else
                        n_3 = 11
                    end
                elseif n_3 == 11 then
                    v9 = v8
                    v4 = v7

                    if v8:IsA("Model") and v8 ~= character_ then
                        n_3 = 12
                    else
                        n_3 = 10
                    end
                elseif n_3 == 12 then
                    humanoid_ = v8:FindFirstChildOfClass("Humanoid")
                    humanoidRootPart_2 = v8:FindFirstChild("HumanoidRootPart")
                    v10 = humanoidRootPart_2

                    if humanoid_ and humanoidRootPart_2 and head_.CFrame.LookVector:Dot((humanoidRootPart_2.Position - head_.Position).Unit) > 0.6 then
                        n_3 = 13
                    else
                        n_3 = 10
                    end
                elseif n_3 == 13 then
                    v11, v12, v13 = pairs(humanoid_:GetPlayingAnimationTracks())
                    v14 = v7
                    v15 = v5
                    v16 = v6
                    v17 = v13
                    v18 = v11
                    v19 = v12
                    n_3 = 14
                elseif n_3 == 14 then
                    v20, v21 = v18(v19, v17)

                    if v20 == nil then
                        n_3 = 45
                    else
                        n_3 = 15
                    end
                elseif n_3 == 15 then
                    v17 = v20
                    animation = v21.Animation

                    if animation and animation.AnimationId then
                        n_3 = 16
                    else
                        n_3 = 14
                    end
                elseif n_3 == 16 then
                    v22 = tonumber
                    v23, v24, v25, v26 = string.match(animation.AnimationId, "%d+")
                    v27 = v23
                    v28 = v24
                    v29 = v25
                    v30 = v26
                    n_3 = 17
                elseif n_3 == 17 then
                    v31 = v22(v27, v28, v29, v30)

                    if v31 then
                        n_3 = 18
                    else
                        n_3 = 14
                    end
                elseif n_3 == 18 then
                    str = tostring(v9) .. "_" .. tostring(v31)
                    magnitude = (humanoidRootPart_.Position - v10.Position).Magnitude
                    flag3 = false
                    n_ = 0.6

                    if tbl16[v31] and magnitude <= tbl12.BlockDistance then
                        n_3 = 34
                    else
                        n_3 = 19
                    end
                elseif n_3 == 19 then
                    if tbl15[v31] and magnitude <= tbl12.BlockDistance then
                        n_3 = 22
                    else
                        n_3 = 20
                    end
                elseif n_3 == 20 then
                    if table.find(tbl14, v31) and magnitude <= tbl12.BlockDistance then
                        n_3 = 21
                    else
                        n_3 = 23
                    end
                elseif n_3 == 21 then
                    flag3 = true
                    n_3 = 23
                elseif n_3 == 22 then
                    flag3 = true
                    n_ = 0.6
                    n_3 = 23
                elseif n_3 == 23 then
                    if flag3 and (not tbl17[str] or tick() - tbl17[str] >= 0.6) then
                        n_3 = 24
                    else
                        n_3 = 25
                    end
                elseif n_3 == 24 then
                    tbl17[str] = tick()

                    task.spawn(function()
                        local v60 = n_
                        local v61 = tbl15[v31]
                        local flag4 = v61 and true or false
                        fn17(v60, flag4)
                    end)

                    n_3 = 25
                elseif n_3 == 25 then
                    v46, v47 = v18(v19, v17)

                    if v46 == nil then
                        n_3 = 28
                    else
                        n_3 = 26
                    end
                elseif n_3 == 26 then
                    v17 = v46
                    animation3 = v47.Animation

                    if animation3 and animation3.AnimationId then
                        n_3 = 27
                    else
                        n_3 = 25
                    end
                elseif n_3 == 27 then
                    v22 = tonumber
                    v48, v49, v50, v51 = string.match(animation3.AnimationId, "%d+")
                    v27 = v48
                    v28 = v49
                    v29 = v50
                    v30 = v51
                    n_3 = 17
                elseif n_3 == 28 then
                    v52 = v15
                    v53 = v16
                    v54 = v14
                    n_3 = 29
                elseif n_3 == 29 then
                    v55, v56 = v52(v53, v54)

                    if v55 == nil then
                        n_3 = 33
                    else
                        n_3 = 30
                    end
                elseif n_3 == 30 then
                    v9 = v56
                    v54 = v55

                    if v56:IsA("Model") and v56 ~= character_ then
                        n_3 = 31
                    else
                        n_3 = 29
                    end
                elseif n_3 == 31 then
                    humanoid_3 = v56:FindFirstChildOfClass("Humanoid")
                    humanoidRootPart_4 = v56:FindFirstChild("HumanoidRootPart")
                    v10 = humanoidRootPart_4

                    if humanoid_3 and humanoidRootPart_4 and head_.CFrame.LookVector:Dot((humanoidRootPart_4.Position - head_.Position).Unit) > 0.6 then
                        n_3 = 32
                    else
                        n_3 = 29
                    end
                elseif n_3 == 32 then
                    v57, v58, v59 = pairs(humanoid_3:GetPlayingAnimationTracks())
                    v14 = v55
                    v15 = v52
                    v16 = v53
                    v17 = v59
                    v18 = v57
                    v19 = v58
                    n_3 = 25
                elseif n_3 == 33 then
                    return
                elseif n_3 == 34 then
                    n_2 = 1.1

                    if tbl17[str] and tick() - tbl17[str] < 1.1 then
                        n_3 = 36
                    else
                        n_3 = 35
                    end
                elseif n_3 == 35 then
                    tbl17[str] = tick()

                    task.spawn(function()
                        local v60 = n_2
                        local v61 = tbl15[v31]
                        local flag4 = v61 and true or false
                        fn17(v60, flag4)
                    end)

                    n_3 = 36
                elseif n_3 == 36 then
                    v32, v33 = v18(v19, v17)

                    if v32 == nil then
                        n_3 = 39
                    else
                        n_3 = 37
                    end
                elseif n_3 == 37 then
                    v17 = v32
                    animation2 = v33.Animation

                    if animation2 and animation2.AnimationId then
                        n_3 = 38
                    else
                        n_3 = 36
                    end
                elseif n_3 == 38 then
                    v22 = tonumber
                    v34, v35, v36, v37 = string.match(animation2.AnimationId, "%d+")
                    v27 = v34
                    v28 = v35
                    v29 = v36
                    v30 = v37
                    n_3 = 17
                elseif n_3 == 39 then
                    v38 = v15
                    v39 = v16
                    v40 = v14
                    n_3 = 40
                elseif n_3 == 40 then
                    v41, v42 = v38(v39, v40)

                    if v41 == nil then
                        n_3 = 44
                    else
                        n_3 = 41
                    end
                elseif n_3 == 41 then
                    v9 = v42
                    v40 = v41

                    if v42:IsA("Model") and v42 ~= character_ then
                        n_3 = 42
                    else
                        n_3 = 40
                    end
                elseif n_3 == 42 then
                    humanoid_2 = v42:FindFirstChildOfClass("Humanoid")
                    humanoidRootPart_3 = v42:FindFirstChild("HumanoidRootPart")
                    v10 = humanoidRootPart_3

                    if humanoid_2 and humanoidRootPart_3 and head_.CFrame.LookVector:Dot((humanoidRootPart_3.Position - head_.Position).Unit) > 0.6 then
                        n_3 = 43
                    else
                        n_3 = 40
                    end
                elseif n_3 == 43 then
                    v43, v44, v45 = pairs(humanoid_2:GetPlayingAnimationTracks())
                    v14 = v41
                    v15 = v38
                    v16 = v39
                    v17 = v45
                    v18 = v43
                    v19 = v44
                    n_3 = 36
                elseif n_3 == 44 then
                    return
                elseif n_3 == 45 then
                    v4 = v14
                    v5 = v15
                    v6 = v16
                    n_3 = 10
                elseif n_3 == 46 then
                    return
                elseif n_3 == 47 then
                    return
                elseif n_3 == 48 then
                    return
                end
            end
        end)
    end

    local function fn19()
        if tbl13.heartbeat then
            tbl13.heartbeat:Disconnect()
            tbl13.heartbeat = nil
        end
    end

    tbl4.AutoBlock:Toggle({
        Title = "Enable AutoBlock",
        Flag = "Save4",
        Value = tbl12.Enabled,
        Callback = function(enabled)
            tbl12.Enabled = enabled

            if enabled then
                fn18()
            else
                fn19()
            end
        end,
    })

    tbl4.AutoBlock:Toggle({
        Title = "M1 After Block",
        Flag = "Save5",
        Value = tbl12.M1AfterBlock,
        Callback = function(m1AfterBlock)
            tbl12.M1AfterBlock = m1AfterBlock
        end,
    })

    tbl4.AutoBlock:Slider({
        Title = "Block Distance (studs)",
        Flag = "Save6",
        Value = {Min = 5, Max = 30, Default = tbl12.BlockDistance},
        Callback = function(arg)
            tbl12.BlockDistance = tonumber(arg)
        end,
    })

    local function fn20(arg, arg2)
        local huge = arg2 or math.huge
        if not arg then
            return nil
        end
        local humanoidRootPart_ = arg:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart_ then
            return nil
        end
        local live_ = Workspace:FindFirstChild("Live")
        if not live_ then
            return nil
        end
        local v = nil
        local v2 = huge

        for i, child in ipairs(live_:GetChildren()) do
            if child:IsA("Model") and child ~= arg then
                local humanoidRootPart_2 = child:FindFirstChild("HumanoidRootPart")

                if humanoidRootPart_2 then
                    local magnitude = (humanoidRootPart_.Position - humanoidRootPart_2.Position).Magnitude

                    if magnitude < v2 then
                        v2 = magnitude
                        v = child
                    end
                end
            end
        end

        return v
    end

    local function fn21(arg)
        if not arg then
            return
        end
        local communicate = arg:FindFirstChild("Communicate")

        if communicate and typeof(communicate.FireServer) == "function" then
            local tbl18 = {
                {
                    Dash = Enum.KeyCode.W,
                    Key = Enum.KeyCode.Q,
                    Goal = "KeyPress",
                },
            }

            pcall(function()
                communicate:FireServer(unpack(tbl18))
            end)
        end
    end

    local tbl18 = {}

    tbl6 = {
        None = nil,
        Red = Color3.fromRGB(255, 0, 0),
        Green = Color3.fromRGB(0, 255, 0),
        Blue = Color3.fromRGB(0, 0, 255),
        Yellow = Color3.fromRGB(255, 255, 0),
        Purple = Color3.fromRGB(128, 0, 128),
        Orange = Color3.fromRGB(255, 165, 0),
        Pink = Color3.fromRGB(255, 192, 203),
        Cyan = Color3.fromRGB(0, 255, 255),
        Lime = Color3.fromRGB(0, 255, 0),
        Teal = Color3.fromRGB(0, 128, 128),
        Lavender = Color3.fromRGB(230, 230, 250),
        Navy = Color3.fromRGB(0, 0, 128),
        Magenta = Color3.fromRGB(255, 0, 255),
        Olive = Color3.fromRGB(128, 128, 0),
        Maroon = Color3.fromRGB(128, 0, 0),
        Silver = Color3.fromRGB(192, 192, 192),
        Turquoise = Color3.fromRGB(64, 224, 208),
        Gold = Color3.fromRGB(255, 215, 0),
        Coral = Color3.fromRGB(255, 127, 80),
        ["Sky Blue"] = Color3.fromRGB(135, 206, 235),
        ["Slate Gray"] = Color3.fromRGB(112, 128, 144),
        White = Color3.fromRGB(255, 255, 255),
    }

    fn = function(arg)
        if typeof and typeof(arg) == "Color3" then
            return arg
        end

        if type(arg) == "table" and arg.Color and typeof(arg.Color) == "Color3" then
            return arg.Color
        end

        if type(arg) == "string" then
            return tbl6[arg]
        end
        return nil
    end

    local function fn22(arg, color)
        if not arg or not color then
            return
        end

        if not arg:IsA("ParticleEmitter") and not arg:IsA("Trail") and not arg:IsA("Beam") then
            if not arg:IsA("PointLight") and not arg:IsA("SpotLight") and not arg:IsA("SurfaceLight") then
                if not arg:IsA("BillboardGui") and not arg:IsA("Frame") then
                    arg:IsA("TextLabel")
                end

                return
            end

            pcall(function()
                arg.Color = color
            end)

            return
        end

        pcall(function()
            arg.Color = ColorSequence.new(color)
        end)
    end

    local function fn23(arg, arg2)
        if not arg then
            return
        end

        if tbl18.DescendantAdded then
            pcall(function()
                tbl18.DescendantAdded:Disconnect()
            end)

            tbl18.DescendantAdded = nil
        end

        if not arg2 then
            return
        end

        for i, descendant in ipairs(arg:GetDescendants()) do
            fn22(descendant, arg2)
        end

        tbl18.DescendantAdded = arg.DescendantAdded:Connect(function(descendant)
            local v = fn(tbl2.vfxColorChanger)

            if v then
                fn22(descendant, v)
            end
        end)
    end

    fn2 = function()
        if tbl18.CharacterAdded then
            pcall(function()
                tbl18.CharacterAdded:Disconnect()
            end)

            tbl18.CharacterAdded = nil
        end

        if tbl18.DescendantAdded then
            pcall(function()
                tbl18.DescendantAdded:Disconnect()
            end)

            tbl18.DescendantAdded = nil
        end

        local v = fn(tbl2.vfxColorChanger)

        if v then
            if localPlayer and localPlayer.Character then
                fn23(localPlayer.Character, v)
            end

            tbl18.CharacterAdded = localPlayer.CharacterAdded:Connect(function(character_)
                local v2 = fn(tbl2.vfxColorChanger)

                if v2 then
                    fn23(character_, v2)
                end
            end)
        end
    end

    pcall(function()
        fn2()
    end)

    currentCamera = Workspace.CurrentCamera

    fn3 = function()
        local character_ = localPlayer.Character
        local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")
        return character_, humanoid_
    end

    local function fn24(arg, arg2)
        if not tbl2.supa then
            return
        end

        if not arg or not arg2 then
            return
        end
        local humanoidRootPart_ = arg:FindFirstChild("HumanoidRootPart")
        local humanoidRootPart_2 = arg2:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart_ or not humanoidRootPart_2 then
            return
        end
        task.wait(tbl.supaDelay)
        if not tbl2.supa then
            return
        end
        fn21(arg)
        task.wait(0.02)
        local position = humanoidRootPart_2.Position
        local vector = Vector3.new(position.X, position.Y - tbl.underOffset, position.Z)
        local n_ = position - humanoidRootPart_.Position
        local vector2 = n_

        if n_.Magnitude == 0 then
            vector2 = Vector3.new(0, 0, 1)
        end

        local unit = vector2.Unit
        local vector3 = Vector3.new(math.random() - 0.5, 0, math.random() - 0.5)
        local vector4 = vector3

        if vector3.Magnitude == 0 then
            vector4 = Vector3.new(0.1, 0, 0)
        end

        local n_2 = tbl.supaLockPercent / 100
        local unit2 = (unit * n_2 + vector4.Unit * (1 - n_2)).Unit
        local n_3 = position + Vector3.new(math.random() - 0.5, 0, math.random() - 0.5).Unit * tbl.supaRandomMovement
        local tween = TweenService:Create(humanoidRootPart_, TweenInfo.new(0.2 / tbl.supaSpeed, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(vector, n_3)})
        tween:Play()
        tween.Completed:Wait()

        if tbl.supaBehindEnabled then
            local n_4 = humanoidRootPart_2.Position - humanoidRootPart_.Position
            local vector5 = n_4

            if n_4.Magnitude == 0 then
                vector5 = Vector3.new(0, 0, 1)
            end

            local n_5 = humanoidRootPart_2.Position - vector5.Unit * tbl.supaBehindOffset
            local vector6 = Vector3.new(n_5.X, humanoidRootPart_.Position.Y, n_5.Z)
            local tween2 = TweenService:Create(humanoidRootPart_, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(vector6, humanoidRootPart_2.Position)})
            tween2:Play()
            tween2.Completed:Wait()
        end

        if tbl2.supa then
            fn21(arg)
        end
    end

    fn4 = function(arg)
        if tbl3.supa then
            tbl3.supa:Disconnect()
            tbl3.supa = nil
        end

        if not tbl2.supa then
            return
        end
        local humanoid_ = arg:FindFirstChild("Humanoid")
        if not humanoid_ then
            return
        end
        local flag3 = false
        local flag4 = false
        local flag5 = false

        tbl3.supa = RunService.Heartbeat:Connect(function()
            if not arg.Parent then
                return
            end

            if not arg:FindFirstChild("HumanoidRootPart") then
                return
            end
            local flag6 = false

            for i, v in ipairs(humanoid_:GetPlayingAnimationTracks()) do
                if v.Animation and tbl7[v.Animation.AnimationId] then
                    flag6 = true
                    break
                end
            end

            if flag6 and not flag3 and not flag4 and not flag5 then
                flag3 = true
                flag4 = true
                flag5 = true

                task.spawn(function()
                    task.wait(tbl.detectBuffer)
                    task.wait(tbl.extraDelay)
                    local v = fn20(arg, 50)

                    if v and tbl2.supa then
                        fn24(arg, v)
                    end

                    flag3 = false

                    task.delay(tbl.cooldown, function()
                        flag5 = false
                    end)
                end)
            elseif not flag6 then
                flag4 = false
            end
        end)
    end

    local function fn25(arg, arg2)
        if not tbl2.supaV2 then
            return
        end

        if not arg or not arg2 then
            return
        end
        local humanoidRootPart_ = arg:FindFirstChild("HumanoidRootPart")
        local humanoidRootPart_2 = arg2:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart_ or not humanoidRootPart_2 then
            return
        end
        task.wait(tbl.supaV2Delay)
        if not tbl2.supaV2 then
            return
        end
        fn21(arg)
        task.wait(0.02)
        local position = humanoidRootPart_2.Position
        local v = math.rad(math.random(-tbl.supaV2RandomAngle, tbl.supaV2RandomAngle))
        local unit = (position - humanoidRootPart_.Position).Unit
        local vector = Vector3.new(-unit.Z, 0, unit.X)
        local n_ = unit * math.cos(v) + vector * math.sin(v)
        local n_2 = humanoidRootPart_2.Position + n_ * tbl.supaV2TeleportDistance
        local vector2 = Vector3.new(n_2.X, position.Y - tbl.underOffset, n_2.Z)
        local tween = TweenService:Create(humanoidRootPart_, TweenInfo.new(0.2 / tbl.supaV2Speed, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(vector2, position)})
        tween:Play()
        tween.Completed:Wait()

        if tbl2.supaV2 then
            fn21(arg)
        end
    end

    fn5 = function(arg)
        if tbl3.supaV2 then
            tbl3.supaV2:Disconnect()
            tbl3.supaV2 = nil
        end

        if not tbl2.supaV2 then
            return
        end
        local humanoid_ = arg:FindFirstChild("Humanoid")
        if not humanoid_ then
            return
        end
        local flag3 = false
        local flag4 = false
        local flag5 = false

        tbl3.supaV2 = RunService.Heartbeat:Connect(function()
            if not arg.Parent then
                return
            end

            if not arg:FindFirstChild("HumanoidRootPart") then
                return
            end
            local flag6 = false

            for i, v in ipairs(humanoid_:GetPlayingAnimationTracks()) do
                if v.Animation and tbl7[v.Animation.AnimationId] then
                    flag6 = true
                    break
                end
            end

            if flag6 and not flag3 and not flag4 and not flag5 then
                flag3 = true
                flag4 = true
                flag5 = true

                task.spawn(function()
                    task.wait(tbl.detectBuffer)
                    task.wait(tbl.extraDelay)
                    local v = fn20(arg, 50)

                    if v and tbl2.supaV2 then
                        fn25(arg, v)
                    end

                    flag3 = false

                    task.delay(tbl.cooldown, function()
                        flag5 = false
                    end)
                end)
            elseif not flag6 then
                flag4 = false
            end
        end)
    end

    local tbl19 = {}
    local tbl20 = {}
    local tbl21 = {}
    local screenGui_ = nil
    local connection2 = nil

    local function fn26(arg, arg2)
        if arg2 == localPlayer or tbl19[arg2] then
            return
        end
        local head_ = arg:FindFirstChild("Head")
        if not head_ then
            return
        end
        local billboardGui = Instance.new("BillboardGui")
        billboardGui.Size = UDim2.new(0, 140, 0, 24)
        billboardGui.StudsOffset = Vector3.new(0, 2.2, 0)
        billboardGui.AlwaysOnTop = true
        billboardGui.Adornee = head_
        billboardGui.Parent = head_
        local textLabel = Instance.new("TextLabel", billboardGui)
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.Text = arg2.Name
        textLabel.TextColor3 = Color3.fromRGB(170, 240, 240)
        textLabel.TextStrokeTransparency = 0.5
        textLabel.TextScaled = true
        textLabel.Font = Enum.Font.GothamBold
        tbl19[arg2] = billboardGui
    end

    local function fn27(arg)
        if tbl19[arg] then
            tbl19[arg]:Destroy()
        end

        tbl19[arg] = nil
    end

    local function fn28(adornee, arg)
        if arg == localPlayer or tbl20[arg] then
            return
        end
        local highlight_ = Instance.new("Highlight")
        highlight_.FillTransparency = 1
        highlight_.OutlineTransparency = 0
        highlight_.OutlineColor = Color3.fromRGB(255, 80, 80)
        highlight_.Adornee = adornee
        highlight_.Parent = adornee
        tbl20[arg] = highlight_
    end

    local function fn29(arg)
        if tbl20[arg] then
            tbl20[arg]:Destroy()
        end

        tbl20[arg] = nil
    end

    local function fn30(arg, arg2)
        if arg2 == localPlayer or tbl21[arg2] then
            return
        end
        local humanoidRootPart_ = arg:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart_ then
            return
        end
        local boxHandleAdornment = Instance.new("BoxHandleAdornment")
        boxHandleAdornment.Adornee = humanoidRootPart_
        boxHandleAdornment.AlwaysOnTop = true
        boxHandleAdornment.ZIndex = 5
        boxHandleAdornment.Size = Vector3.new(2, 2, 1)
        boxHandleAdornment.Color3 = Color3.fromRGB(170, 0, 255)
        boxHandleAdornment.Transparency = 0.45
        boxHandleAdornment.Parent = humanoidRootPart_
        tbl21[arg2] = boxHandleAdornment
    end

    local function fn31(arg)
        if tbl21[arg] then
            tbl21[arg]:Destroy()
        end

        tbl21[arg] = nil
    end

    local function fn32()
        if screenGui_ then
            return
        end
        screenGui_ = Instance.new("ScreenGui")
        screenGui_.ResetOnSpawn = false
        local playerGui = localPlayer:WaitForChild("PlayerGui")
        screenGui_.Parent = playerGui
        local textLabel = Instance.new("TextLabel", screenGui_)
        textLabel.Size = UDim2.new(0, 180, 0, 36)
        textLabel.Position = UDim2.new(1, -190, 0, 10)
        textLabel.BackgroundTransparency = 0.35
        textLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        textLabel.TextColor3 = Color3.fromRGB(0, 255, 200)
        textLabel.Font = Enum.Font.GothamBold
        textLabel.TextSize = 18

        connection2 = RunService.RenderStepped:Connect(function()
            textLabel.Text = "Players: " .. #Players:GetPlayers()
        end)
    end

    local function fn33()
        if connection2 then
            connection2:Disconnect()
        end

        if screenGui_ then
            screenGui_:Destroy()
        end

        screenGui_ = nil
        connection2 = nil
    end

    fn6 = function()
        for i, player in ipairs(Players:GetPlayers()) do
            if player ~= localPlayer then
                if tbl2.espName and player.Character then
                    fn26(player.Character, player)
                else
                    fn27(player)
                end

                if tbl2.espHighlight and player.Character then
                    fn28(player.Character, player)
                else
                    fn29(player)
                end

                if tbl2.espHRPBox and player.Character then
                    fn30(player.Character, player)
                else
                    fn31(player)
                end
            end
        end

        if tbl2.espPlayerCount then
            fn32()
        else
            fn33()
        end
    end

    Players.PlayerAdded:Connect(function(player)
        player.CharacterAdded:Connect(function()
            fn6()
        end)
    end)

    Players.PlayerRemoving:Connect(function(player)
        fn27(player)
        fn29(player)
        fn31(player)
    end)

    local function fn34(arg, arg2)
        if not tbl2.loop then
            return
        end

        if not arg or not arg2 then
            return
        end
        local humanoidRootPart_ = arg:FindFirstChild("HumanoidRootPart")
        local humanoidRootPart_2 = arg2:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart_ or not humanoidRootPart_2 then
            return
        end
        task.wait(tbl.loopDelay)
        if not tbl2.loop then
            return
        end

        local function fn35(arg3, arg4)
            local raycastParams = RaycastParams.new()
            raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
            local filterDescendantsInstances = arg4 or {}
            raycastParams.FilterDescendantsInstances = filterDescendantsInstances
            local n_ = arg3 + Vector3.new(0, 80, 0)
            local vector = Vector3.new(0, -300, 0)
            local hit_ = Workspace:Raycast(n_, vector, raycastParams)
            if hit_ and hit_.Position then
                return hit_.Position.Y
            end
            return arg3.Y
        end

        local v = fn35(humanoidRootPart_.Position, {arg})
        local n_ = math.min(humanoidRootPart_.Position.Y - v, tbl.loopMaxHeight)

        if n_ < 0.5 then
            n_ = 2
        end

        pcall(function()
            fn21(arg)
        end)

        local now = tick()
        local n_2 = now + 0.5
        local n_3 = math.pi * 2
        local n_4 = humanoidRootPart_.Position - humanoidRootPart_2.Position
        local v2 = math.atan2(n_4.Z, n_4.X)
        local n_5 = tick() - tbl.loopDashInterval
        local n_6 = math.random() * 1000
        local connection3 = nil

        connection3 = RunService.Heartbeat:Connect(function()
            if tbl2.loop and arg.Parent and arg2.Parent and humanoidRootPart_.Parent and humanoidRootPart_2.Parent then
                local now2 = tick()

                if n_2 <= now2 then
                    if connection3 then
                        connection3:Disconnect()
                    end

                    local position = humanoidRootPart_2.Position
                    local n_7 = fn35(position, {arg, arg2}) + math.min(n_, tbl.loopMaxHeight)
                    local vector = Vector3.new(position.X, n_7, position.Z)
                    local cframe = CFrame.new(vector, position + Vector3.new(0, 0.1, 0))
                    local tween = TweenService:Create(humanoidRootPart_, TweenInfo.new(tbl.loopSettleTime, Enum.EasingStyle.Quad), {CFrame = cframe})
                    tween:Play()
                    tween.Completed:Wait()
                    local bodyPosition = Instance.new("BodyPosition")
                    bodyPosition.MaxForce = Vector3.new(100000, 100000, 100000)
                    bodyPosition.P = 10000
                    bodyPosition.D = 100
                    bodyPosition.Position = vector
                    bodyPosition.Parent = humanoidRootPart_
                    local bodyGyro = Instance.new("BodyGyro")
                    bodyGyro.MaxTorque = Vector3.new(100000, 100000, 100000)
                    bodyGyro.P = 5000
                    bodyGyro.D = 100
                    bodyGyro.CFrame = cframe
                    bodyGyro.Parent = humanoidRootPart_
                    local connection4 = nil

                    connection4 = RunService.Heartbeat:Connect(function()
                        if bodyGyro.Parent and humanoidRootPart_2.Parent and humanoidRootPart_.Parent then
                            local lookVector = humanoidRootPart_.CFrame.LookVector
                            local n_8 = humanoidRootPart_2.Position - humanoidRootPart_.Position
                            local unit = n_8

                            if n_8.Magnitude > 0 then
                                unit = n_8.Unit
                            end

                            local n_9 = lookVector + unit

                            if n_9.Magnitude > 0 then
                                bodyGyro.CFrame = CFrame.new(humanoidRootPart_.Position, humanoidRootPart_.Position + n_9.Unit)
                            end

                            return
                        end

                        if connection4 then
                            connection4:Disconnect()
                        end
                    end)

                    task.delay(tbl.loopSettleHold, function()
                        if connection4 then
                            connection4:Disconnect()
                        end

                        if bodyPosition.Parent then
                            bodyPosition:Destroy()
                        end

                        if bodyGyro.Parent then
                            bodyGyro:Destroy()
                        end
                    end)

                    return
                end

                local n_7 = math.clamp((now2 - now) / 0.5, 0, 1)
                local n_8 = v2 + n_3 * n_7
                local position = humanoidRootPart_2.Position
                local n_9 = math.sin((n_7 * 12 + n_6) * math.pi * 2) * 0.12
                local n_10 = math.cos((n_7 * 9 + n_6 * 0.7) * math.pi * 2) * 0.09
                local n_11 = tbl.loopRadius + math.sin((n_7 * 6 + n_6) * 1.7) * 0.35
                local n_12 = Vector3.new(math.cos(n_8), 0, math.sin(n_8)) * n_11 + Vector3.new(n_9, 0, n_10)
                local n_13 = fn35(position, {arg, arg2}) + math.min(n_, tbl.loopMaxHeight)
                local vector = Vector3.new(position.X + n_12.X, n_13, position.Z + n_12.Z)
                local n_14 = n_8 + n_3 / tbl.loopSteps
                local n_15 = Vector3.new(math.cos(n_14), 0, math.sin(n_14)) * n_11 + Vector3.new(n_9, 0, n_10)
                local vector2 = Vector3.new(position.X + n_15.X, n_13, position.Z + n_15.Z)
                humanoidRootPart_.CFrame = CFrame.new(vector, vector2)

                if tbl.loopDashInterval <= now2 - n_5 then
                    n_5 = now2

                    pcall(function()
                        fn21(arg)
                    end)
                end

                return
            end

            if connection3 then
                connection3:Disconnect()
            end
        end)
    end

    fn7 = function(arg)
        if tbl3.loop then
            tbl3.loop:Disconnect()
            tbl3.loop = nil
        end

        if not tbl2.loop then
            return
        end
        local humanoid_ = arg:FindFirstChild("Humanoid")
        if not humanoid_ then
            return
        end
        local flag3 = false
        local flag4 = false
        local flag5 = false

        tbl3.loop = RunService.Heartbeat:Connect(function()
            if not arg.Parent then
                return
            end

            if not arg:FindFirstChild("HumanoidRootPart") then
                return
            end
            local flag6 = false

            for i, v in ipairs(humanoid_:GetPlayingAnimationTracks()) do
                if v.Animation and tbl7[v.Animation.AnimationId] then
                    flag6 = true
                    break
                end
            end

            if flag6 and not flag3 and not flag4 and not flag5 then
                flag3 = true
                flag4 = true
                flag5 = true

                task.spawn(function()
                    task.wait(tbl.detectBuffer)
                    task.wait(0.045)
                    local n_ = 0

                    while n_ < tbl.loopDelay do
                        task.wait(0.01)
                        n_ = n_ + 0.01
                        if not tbl2.loop then
                            flag3 = false
                            return
                        end
                        local flag7 = false

                        for i, v in ipairs(humanoid_:GetPlayingAnimationTracks()) do
                            if v.Animation and tbl7[v.Animation.AnimationId] then
                                flag7 = true
                                break
                            end
                        end

                        if not flag7 then
                            flag3 = false
                            return
                        end
                        continue
                    end

                    local v = fn20(arg, tbl.loopMinTargetDist)

                    if v and tbl2.loop then
                        fn34(arg, v)
                    end

                    flag3 = false

                    task.delay(tbl.cooldown, function()
                        flag5 = false
                    end)
                end)
            else
                flag4 = false
            end
        end)
    end

    KAKYO_DETECT_ANIM = "rbxassetid://12273188754"
    KAKYO_KYOTO_ANIM = "rbxassetid://10480793962"

    KAKYO_safeSendKey = function(arg)
        pcall(function()
            if VirtualInputManager and type(VirtualInputManager.SendKeyEvent) == "function" then
                VirtualInputManager:SendKeyEvent(true, arg, false, game)
                VirtualInputManager:SendKeyEvent(false, arg, false, game)
                return
            end

            local value = rawget(_G, "syn")

            if value and type(value.virtual_input) == "function" then
                pcall(function()
                    value.virtual_input(arg, true)
                    value.virtual_input(arg, false)
                end)

                return
            end

            local VirtualUser = nil

            pcall(function()
                VirtualUser = game:GetService("VirtualUser")
            end)

            if not VirtualUser or type(VirtualUser.SetKeyDown) ~= "function" then
                return
            end

            pcall(function()
                VirtualUser:SetKeyDown(tostring(arg))
                VirtualUser:SetKeyUp(tostring(arg))
            end)
        end)
    end

    KAKYO_stopAllAnimations = function(arg)
        pcall(function()
            for i, v in ipairs(arg:GetPlayingAnimationTracks()) do
                v:Stop()
            end
        end)
    end

    KAKYO_performSingleMove = function(arg, arg2, arg3, arg4, arg5)
        if not arg or not arg.Parent then
            return
        end
        local n_ = arg.Position + arg2 * arg4
        local cframe = CFrame.new(n_, n_ + arg3)

        if arg5 and arg5 > 0.05 then
            local tweenInfo = TweenInfo.new(arg5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
            local tween = TweenService:Create(arg, tweenInfo, {CFrame = cframe})
            local flag3 = false
            local connection3 = nil

            connection3 = tween.Completed:Connect(function()
                flag3 = true

                if connection3 then
                    connection3:Disconnect()
                    connection3 = nil
                end
            end)

            tween:Play()

            while not flag3 do
                RunService.Heartbeat:Wait()
            end

            pcall(function()
                if arg and arg.Parent then
                    arg.CFrame = cframe
                end
            end)

            return
        end

        pcall(function()
            if arg and arg.Parent then
                arg.CFrame = cframe
            end
        end)
    end

    KAKYO_DoKyoto = function()
        if kakyoDoKyotoRunning then
            return
        end
        kakyoDoKyotoRunning = true

        local ok_, result = pcall(function()
            local character_ = localPlayer.Character
            if not character_ then
                return
            end
            local humanoid_ = character_:FindFirstChildOfClass("Humanoid")
            local humanoidRootPart_ = character_ and character_:FindFirstChild("HumanoidRootPart")
            if not humanoid_ or not humanoidRootPart_ then
                return
            end

            pcall(function()
                KAKYO_safeSendKey(Enum.KeyCode.One)
            end)

            pcall(function()
                KAKYO_stopAllAnimations(humanoid_)
            end)

            local animation = Instance.new("Animation")
            animation.AnimationId = KAKYO_KYOTO_ANIM
            local v = humanoid_:LoadAnimation(animation)

            pcall(function()
                v:Play()
            end)

            local autoRotate = humanoid_.AutoRotate

            if autoRotate ~= false then
                pcall(function()
                    humanoid_.AutoRotate = false
                end)
            end

            if kakyoDoKyotoWatcher then
                pcall(function()
                    kakyoDoKyotoWatcher:Disconnect()
                end)

                kakyoDoKyotoWatcher = nil
            end

            if humanoid_.GetPropertyChangedSignal then
                local connection3 = humanoid_:GetPropertyChangedSignal("AutoRotate"):Connect(function()
                    if humanoid_.AutoRotate == true then
                        pcall(function()
                            humanoid_.AutoRotate = false
                        end)
                    end
                end)

                kakyoDoKyotoWatcher = connection3
            end

            spawn(function()
                local num = tonumber(kakyoAutoRotateLockTime)
                local n_ = num or 0.5
                local now = tick()

                while tick() - now < n_ do
                    if not humanoid_ or not humanoid_.Parent then
                        return
                    end
                    RunService.Heartbeat:Wait()
                end

                pcall(function()
                    if kakyoDoKyotoWatcher then
                        kakyoDoKyotoWatcher:Disconnect()
                        kakyoDoKyotoWatcher = nil
                    end

                    if humanoid_ and humanoid_.Parent then
                        humanoid_.AutoRotate = autoRotate
                    end
                end)
            end)

            local lookVector = humanoidRootPart_.CFrame.LookVector
            local vector = Vector3.new(lookVector.X, 0, lookVector.Z)
            local vector2 = vector

            if vector.Magnitude == 0 then
                vector2 = Vector3.new(0, 0, 1)
            end

            local unit = vector2.Unit
            local rightVector = humanoidRootPart_.CFrame.RightVector
            local vector3 = Vector3.new(rightVector.X, 0, rightVector.Z)
            local vector4 = vector3

            if vector3.Magnitude == 0 then
                vector4 = Vector3.new(1, 0, 0)
            end

            local unit2 = vector4.Unit
            local num = tonumber(kakyoMoveDuration)
            local n_ = num or 0.2
            local num2 = tonumber(kakyoDistance)
            local n_2 = num2 or 20

            local thread = coroutine.create(function()
                KAKYO_performSingleMove(humanoidRootPart_, unit, unit2, n_2, n_)
            end)

            coroutine.resume(thread)

            pcall(function()
                KAKYO_safeSendKey(Enum.KeyCode.Two)
            end)

            while coroutine.status(thread) ~= "dead" do
                RunService.Heartbeat:Wait()
            end
        end)

        if not ok_ then
            warn("", result)
        end

        kakyoDoKyotoRunning = false
    end

    KAKYO_findToolByName = function(arg)
        local backpack = localPlayer:FindFirstChild("Backpack")

        if backpack then
            local v = backpack:FindFirstChild(arg)
            if v then
                return v
            end
        end

        local character_ = localPlayer.Character

        if character_ then
            local v = character_:FindFirstChild(arg)
            if v then
                return v
            end
        end

        return nil
    end

    KAKYO_DetectorHeartbeat = function()
        if not kakyoAutoEnabled then
            return
        end
        local character_ = localPlayer.Character
        if not character_ then
            return
        end
        local humanoid_ = character_:FindFirstChildOfClass("Humanoid")
        if not humanoid_ then
            return
        end

        for k2, v in pairs(humanoid_:GetPlayingAnimationTracks()) do
            if v.Animation and v.Animation.AnimationId == KAKYO_DETECT_ANIM and not kakyoDetected then
                kakyoDetected = true

                task.delay(3, function()
                    kakyoDetected = false
                end)

                task.spawn(function()
                    local now = tick()

                    while tick() - now < 1.4 do
                        if not kakyoAutoEnabled then
                            return
                        end
                        RunService.Heartbeat:Wait()
                    end

                    if not kakyoAutoEnabled then
                        return
                    end
                    local now2 = tick()

                    while tick() - now2 < 0.1 do
                        if not kakyoAutoEnabled then
                            return
                        end
                        RunService.Heartbeat:Wait()
                    end

                    if not kakyoAutoEnabled then
                        return
                    end
                    local v2 = KAKYO_findToolByName("Lethal Whirlwind Stream")
                    local num = tonumber(kakyoStartDelay)
                    local n_ = num or 0
                    local now3 = tick()

                    while tick() - now3 < n_ do
                        if not kakyoAutoEnabled then
                            return
                        end
                        RunService.Heartbeat:Wait()
                    end

                    if v2 then
                        local character_2 = localPlayer.Character
                        local communicate = character_2 and localPlayer.Character:FindFirstChild("Communicate")

                        if communicate and communicate.FireServer then
                            pcall(function()
                                communicate:FireServer({Tool = v2, Goal = "Console Move"})
                            end)
                        end
                    end

                    if kakyoAutoEnabled and not kakyoDoKyotoRunning then
                        pcall(function()
                            KAKYO_DoKyoto()
                        end)
                    end
                end)

                break
            end
        end
    end

    KAKYO_Start = function()
        if kakyoHeartbeatConn then
            pcall(function()
                kakyoHeartbeatConn:Disconnect()
            end)

            kakyoHeartbeatConn = nil
        end

        local connection3 = RunService.Heartbeat:Connect(KAKYO_DetectorHeartbeat)
        kakyoHeartbeatConn = connection3
        kakyoAutoEnabled = true
    end

    KAKYO_Stop = function()
        if kakyoHeartbeatConn then
            pcall(function()
                kakyoHeartbeatConn:Disconnect()
            end)

            kakyoHeartbeatConn = nil
        end

        if kakyoDoKyotoWatcher then
            pcall(function()
                kakyoDoKyotoWatcher:Disconnect()
            end)

            kakyoDoKyotoWatcher = nil
        end

        kakyoAutoEnabled = false
    end

    if kakyoAutoEnabled then
        KAKYO_Start()
    end

    fn8 = function()
        if not tbl2.instantTwisted then
            return
        end

        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Cyborg883/InstantTwistedRevamp/main/Protected_7455521176683315.lua"))()
        end)
    end

    local tbl22 = {}

    local tbl23 = {
        ["rbxassetid://10479335397"] = true,
        ["rbxassetid://13380255751"] = true,
        ["rbxassetid://134775406437626"] = true,
    }

    local tbl24 = {
        ["rbxassetid://10469493270"] = true,
        ["rbxassetid://10469630950"] = true,
        ["rbxassetid://10469639222"] = true,
        ["rbxassetid://10469643643"] = true,
    }

    local function fn35(arg, arg2, arg3)
        local flag3 = (arg - arg2).Magnitude <= arg3
        return flag3
    end

    local function fn36()
        local preySPeril = localPlayer.Backpack:FindFirstChild("Prey's Peril")

        if preySPeril then
            localPlayer.Character.Communicate:FireServer({Tool = preySPeril, Goal = "Console Move"})
        end

        local splitSecondCounter = localPlayer.Backpack:FindFirstChild("Split Second Counter")

        if splitSecondCounter then
            localPlayer.Character.Communicate:FireServer({Tool = splitSecondCounter, Goal = "Console Move"})
        end
    end

    setupAutoCounter = function()
        if tbl3.autoCounter then
            tbl3.autoCounter:Disconnect()
            tbl3.autoCounter = nil
        end

        tbl3.autoCounter = RunService.Heartbeat:Connect(function()
            if not tbl2.autoCounter then
                return
            end
            local character_ = localPlayer.Character
            if not character_ or not character_:FindFirstChild("HumanoidRootPart") then
                return
            end
            local humanoidRootPart_ = character_.HumanoidRootPart
            local v, v2, v3 = pairs(workspace.Live:GetChildren())
            local v4 = v3
            local v5 = v
            local v6 = v2

            while true do
                local v7, v8 = v5(v6, v4)
                if v7 == nil then
                    break
                end
                v4 = v7

                if v8:IsA("Model") and v8 ~= character_ and v8:FindFirstChild("HumanoidRootPart") then
                    local humanoid_ = v8:FindFirstChildOfClass("Humanoid")
                    local animator = humanoid_ and humanoid_:FindFirstChildOfClass("Animator")

                    if animator then
                        for k2, v9 in pairs(animator:GetPlayingAnimationTracks()) do
                            local animationId = v9.Animation.AnimationId
                            local str = v8:GetDebugId() .. animationId
                            local autoCounterDistance = tbl.autoCounterDistance
                            local n_ = autoCounterDistance or 13

                            if (tbl23[animationId] or tbl24[animationId]) and fn35(humanoidRootPart_.Position, v8.HumanoidRootPart.Position, n_) then
                                if not tbl22[str] then
                                    tbl22[str] = true

                                    if tbl23[animationId] then
                                        task.delay(0.0001, fn36)
                                    else
                                        fn36()
                                    end
                                end
                            else
                                tbl22[str] = nil
                            end
                        end

                        v4 = v7
                    end
                end
            end
        end)
    end

    yoyoAlignPos = nil
    yoyoAlignOri = nil
    yoyoRenderConn = nil
    yoyoTargetOffsetPart = nil
    yoyoCooldown = false

    yoyoDetach = function()
        if yoyoAlignPos then
            yoyoAlignPos:Destroy()
            yoyoAlignPos = nil
        end

        if yoyoAlignOri then
            yoyoAlignOri:Destroy()
            yoyoAlignOri = nil
        end

        if yoyoRenderConn then
            yoyoRenderConn:Disconnect()
            yoyoRenderConn = nil
        end

        if yoyoTargetOffsetPart then
            yoyoTargetOffsetPart:Destroy()
            yoyoTargetOffsetPart = nil
        end

        char = localPlayer.Character

        if char then
            local humanoidRootPart_ = char:FindFirstChild("HumanoidRootPart")
            hrp = humanoidRootPart_

            if hrp then
                for i, child in ipairs(hrp:GetChildren()) do
                    if child:IsA("Attachment") or child.Name == "HasSnapped" then
                        child:Destroy()
                    end
                end
            end
        end
    end

    yoyoAttach = function(arg)
        yoyoDetach()
        if not localPlayer.Character then
            return
        end
        local part2 = Instance.new("Part")
        yoyoTargetOffsetPart = part2
        yoyoTargetOffsetPart.Size = Vector3.new(0.5, 0.5, 0.5)
        yoyoTargetOffsetPart.Transparency = 1
        yoyoTargetOffsetPart.Anchored = true
        yoyoTargetOffsetPart.CanCollide = false
        yoyoTargetOffsetPart.Name = "YOYOFollowPart"
        yoyoTargetOffsetPart.Parent = Workspace
        local humanoidRootPart_ = localPlayer.Character:FindFirstChild("HumanoidRootPart")
        hrp = humanoidRootPart_
        if not hrp then
            return
        end
        local attachment = Instance.new("Attachment", hrp)
        local attachment2 = Instance.new("Attachment", yoyoTargetOffsetPart)
        local attachment3 = Instance.new("Attachment", hrp)
        local attachment4 = Instance.new("Attachment", yoyoTargetOffsetPart)
        local alignPosition2 = Instance.new("AlignPosition")
        yoyoAlignPos = alignPosition2
        yoyoAlignPos.Attachment0 = attachment
        yoyoAlignPos.Attachment1 = attachment2
        yoyoAlignPos.RigidityEnabled = true
        yoyoAlignPos.Responsiveness = 200
        yoyoAlignPos.MaxForce = math.huge
        yoyoAlignPos.Parent = hrp
        local alignOrientation2 = Instance.new("AlignOrientation")
        yoyoAlignOri = alignOrientation2
        yoyoAlignOri.Attachment0 = attachment3
        yoyoAlignOri.Attachment1 = attachment4
        yoyoAlignOri.RigidityEnabled = true
        yoyoAlignOri.Responsiveness = 200
        yoyoAlignOri.MaxTorque = math.huge
        yoyoAlignOri.Parent = hrp

        local connection3 = RunService.RenderStepped:Connect(function()
            if tbl2.yoyo and arg and arg.Parent then
                if localPlayer.Character and hrp.Parent then
                    local n_ = arg.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(85), 0, 0)
                    offset = n_
                    yoyoTargetOffsetPart.CFrame = offset

                    if not hrp:FindFirstChild("HasSnapped") then
                        hrp.CFrame = offset
                        local boolValue = Instance.new("BoolValue")
                        tag = boolValue
                        tag.Name = "HasSnapped"
                        tag.Parent = hrp
                    end

                    return
                end

                yoyoDetach()
                return
            end

            yoyoDetach()
        end)

        yoyoRenderConn = connection3
    end

    yoyoGetClosestValidTarget = function()
        char = localPlayer.Character
        if not char then
            return nil
        end
        local humanoidRootPart_ = char:FindFirstChild("HumanoidRootPart")
        hrp = humanoidRootPart_
        if not hrp then
            return nil
        end
        closest = nil
        shortest = tbl2.yoyoDistanceLimit
        local live_ = Workspace:FindFirstChild("Live")
        live = live_
        if not live then
            return nil
        end

        for k2, child in pairs(live:GetChildren()) do
            if child:IsA("Model") and child ~= char then
                local humanoidRootPart_2 = child:FindFirstChild("HumanoidRootPart")
                targetHRP = humanoidRootPart_2
                local humanoid_ = child:FindFirstChildOfClass("Humanoid")
                hum = humanoid_

                if targetHRP and hum and hum.Health > 0 then
                    dist = (targetHRP.Position - hrp.Position).Magnitude

                    if dist <= shortest and (child.Name == "Weakest Dummy" or Players:GetPlayerFromCharacter(child)) then
                        closest = targetHRP
                        shortest = dist
                    end
                end
            end
        end

        return closest
    end

    yoyoAnimationIDs = {["10503381238"] = true, ["13379003796"] = true}
    yoyoCooldownAnimations = {["10479335397"] = true, ["13380255751"] = true}

    yoyoOnAnimationPlayed = function(arg)
        if not tbl2.yoyo or yoyoCooldown then
            return
        end
        local v = string.match(arg.Animation.AnimationId, "%d+")
        animId = v

        if yoyoCooldownAnimations[animId] then
            yoyoCooldown = true

            task.delay(4.8, function()
                yoyoCooldown = false
            end)
        elseif yoyoAnimationIDs[animId] then
            yoyoCooldown = true

            task.delay(0.32, function()
                if not tbl2.yoyo then
                    return
                end

                pcall(function()
                    fn21(localPlayer.Character)
                end)

                local v2 = yoyoGetClosestValidTarget()
                targetHRP = v2

                if targetHRP then
                    yoyoAttach(targetHRP)
                    task.delay(0.5, yoyoDetach)
                end
            end)

            task.delay(4.8, function()
                yoyoCooldown = false
            end)
        end
    end

    setupYOYOCharacter = function(arg)
        if tbl3.yoyo then
            tbl3.yoyo:Disconnect()
            tbl3.yoyo = nil
        end

        yoyoDetach()
        if not tbl2.yoyo then
            return
        end
        local humanoid_ = arg:FindFirstChildOfClass("Humanoid")
        humanoid = humanoid_
        if not humanoid then
            return
        end
        tbl3.yoyo = humanoid.AnimationPlayed:Connect(yoyoOnAnimationPlayed)
    end

    if tbl2.yoyo and localPlayer.Character then
        setupYOYOCharacter(localPlayer.Character)
    end

    localPlayer.CharacterAdded:Connect(function(character_)
        task.wait(0.5)

        if tbl2.yoyo then
            setupYOYOCharacter(character_)
        end
    end)
end

local function fn9()
    if tbl3.noClip then
        tbl3.noClip:Disconnect()
        tbl3.noClip = nil
    end

    if not tbl2.noClip then
        return
    end

    tbl3.noClip = RunService.Stepped:Connect(function()
        if not tbl2.noClip then
            return
        end
        local v, v2, v3 = ipairs(Players:GetPlayers())
        local v4 = v3
        local v5 = v
        local v6 = v2

        while true do
            local v7, v8 = v5(v6, v4)
            if v7 == nil then
                break
            end
            v4 = v7

            if v8 ~= localPlayer then
                local character_ = v8.Character

                if character_ then
                    for i, descendant in ipairs(character_:GetDescendants()) do
                        if descendant:IsA("BasePart") then
                            descendant.CanCollide = false
                        end
                    end

                    v4 = v7
                end
            end
        end
    end)
end

local fn10, fn11, fn12, fn13, fn14, connection, fn15, fn16, connection2, flag, flag2, fn17, fn18, fn19

do
    local tbl7 = {}
    local v = nil
    local tbl8 = {}
    local flag3 = true
    local v2 = nil
    local humanoid_ = nil
    local v3 = nil

    loopReworkSafeDestroy = function(arg)
        if arg and arg.Parent then
            pcall(function()
                arg:Destroy()
            end)
        end
    end

    loopReworkGetCharParts = function()
        local character_ = localPlayer.Character
        if not character_ then
            return nil
        end
        local humanoid_2 = character_:FindFirstChildOfClass("Humanoid")
        local humanoidRootPart_ = character_:FindFirstChild("HumanoidRootPart")
        if humanoid_2 and humanoidRootPart_ then
            return character_, humanoid_2, humanoidRootPart_
        end
        return nil
    end

    loopReworkFireDashQW = function()
        local character_ = localPlayer.Character
        if not character_ then
            return
        end
        local communicate = character_:FindFirstChild("Communicate")

        if communicate and typeof(communicate.FireServer) == "function" then
            local tbl9 = {
                {
                    Dash = Enum.KeyCode.W,
                    Key = Enum.KeyCode.Q,
                    Goal = "KeyPress",
                },
            }

            pcall(function()
                communicate:FireServer(unpack(tbl9))
            end)
        end
    end

    loopReworkFindBestTarget = function(arg)
        local loopReworkTargetRadius = arg or tbl2.loopReworkTargetRadius
        local live_ = Workspace:FindFirstChild("Live")
        if not live_ then
            return nil
        end
        local v4, v5
        v5, v5, v4 = loopReworkGetCharParts()
        if not v4 then
            return nil
        end
        local v6 = nil
        local v7 = loopReworkTargetRadius

        for i, child in ipairs(live_:GetChildren()) do
            if child and child:IsA("Model") and child ~= localPlayer.Character then
                local humanoidRootPart_ = child:FindFirstChild("HumanoidRootPart")
                local humanoid_2 = child:FindFirstChildOfClass("Humanoid")

                if humanoidRootPart_ and humanoid_2 and humanoid_2.Health > 0 then
                    local flag4 = child.Name == "Weakest Dummy" or Players:GetPlayerFromCharacter(child) ~= nil

                    if flag4 then
                        local magnitude = (humanoidRootPart_.Position - v4.Position).Magnitude

                        if magnitude <= v7 then
                            v7 = magnitude
                            v6 = humanoidRootPart_
                        end
                    end
                end
            end
        end

        return v6
    end

    loopReworkModelHasBlockingAnim = function(arg)
        if not arg or not arg.Parent then
            return false
        end
        local humanoid_2 = arg:FindFirstChildOfClass("Humanoid")
        if not humanoid_2 then
            return false
        end

        local ok_, result = pcall(function()
            return humanoid_2:GetPlayingAnimationTracks()
        end)

        if ok_ and result then
            for i, v4 in ipairs(result) do
                if v4 and v4.Animation then
                    local v5 = tostring
                    local animationId = v4.Animation.AnimationId
                    local str = animationId or ""
                    if v5(str):find(tbl.loopReworkBlockAnimId, 1, true) then
                        return true
                    end
                end
            end
        else
            for i, child in ipairs(humanoid_2:GetChildren()) do
                if not child:IsA("Animation") then
                    continue
                end
                local v4 = tostring
                local animationId = child.AnimationId
                local str = animationId or ""
                if v4(str):find(tbl.loopReworkBlockAnimId, 1, true) then
                    return true
                end
            end
        end

        return false
    end

    loopReworkScanForBlockingAnim = function()
        local live_ = Workspace:FindFirstChild("Live")
        if not live_ then
            return false
        end

        for i, child in ipairs(live_:GetChildren()) do
            if child and child:IsA("Model") and child ~= localPlayer.Character then
                local humanoid_2 = child:FindFirstChildOfClass("Humanoid")
                if humanoid_2 and humanoid_2.Health > 0 and loopReworkModelHasBlockingAnim(child) then
                    return true, child
                end
            end
        end

        return false
    end

    loopReworkStartHorizontalLockLerp = function(arg, arg2)
        if not arg or not arg.Parent then
            return nil
        end
        local v4, v5, v6 = loopReworkGetCharParts()
        if not v6 or not v5 then
            return nil
        end

        if arg2 <= 0 then
            return nil
        end
        local now = tick()
        local connection3 = nil

        connection3 = RunService.RenderStepped:Connect(function(deltaTime)
            if not tbl2.loopReworkBlocked and tbl2.loopRework then
                if arg and arg.Parent then
                    local position = v6.Position
                    local vector = Vector3.new(arg.Position.X, position.Y, arg.Position.Z)

                    if (vector - position).Magnitude >= 0.001 then
                        local cframe = CFrame.new(position, vector)
                        local n_ = math.clamp(tbl2.loopReworkResponsiveness, 1, 10000)
                        local n_2

                        if n_ >= 1000 then
                            n_2 = 1
                        else
                            local n_3 = 1 - math.exp(-0.02 * n_ * deltaTime)
                            n_2 = math.clamp(n_3, 0, 1)
                        end

                        if n_2 >= 0.999999 then
                            pcall(function()
                                v6.CFrame = cframe
                            end)
                        else
                            local v7 = v6.CFrame:Lerp(cframe, n_2)
                            local cFrame = CFrame.new(position) * CFrame.fromMatrix(Vector3.new(), v7.RightVector, v7.UpVector)

                            pcall(function()
                                v6.CFrame = cFrame
                            end)
                        end
                    end

                    if arg2 > tick() - now then
                        return
                    end

                    if connection3 then
                        connection3:Disconnect()
                    end

                    return
                end

                if connection3 then
                    connection3:Disconnect()
                end

                return
            end

            if connection3 then
                connection3:Disconnect()
            end
        end)

        return function()
            if connection3 then
                pcall(function()
                    connection3:Disconnect()
                end)
            end
        end
    end

    loopReworkCancelActiveLockAndRestore = function()
        if v then
            pcall(v)
            v = nil
        end

        local character_ = localPlayer.Character
        local humanoid_2 = nil

        if character_ then
            humanoid_2 = character_:FindFirstChildOfClass("Humanoid")
        end

        pcall(function()
            if humanoid_2 and humanoid_2.Parent then
                humanoid_2.AutoRotate = true
            end
        end)
    end

    loopReworkForceJumpUpdateCharacter = function(arg)
        if not arg then
            v2 = nil
            humanoid_ = nil
            v3 = nil
            return
        end

        v2 = arg
        humanoid_ = arg:FindFirstChildOfClass("Humanoid")
        local humanoidRootPart_ = arg:FindFirstChild("HumanoidRootPart")
        local torso_ = humanoidRootPart_ or arg:FindFirstChild("Torso")
        v3 = torso_
    end

    loopReworkForceJumpDoJump = function(arg, arg2)
        if tbl2.ForceJumpEnabled == false then
            return false
        end

        if not flag3 then
            return true
        end
        flag3 = false

        pcall(function()
            if arg and arg.Parent then
                arg.PlatformStand = false
                arg.Jump = true
                arg:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)

        if arg2 and arg2.Parent then
            pcall(function()
                local assemblyLinearVelocity = arg2.AssemblyLinearVelocity
                local forceJumpUpwardVelocity = tbl2.ForceJumpUpwardVelocity
                local n_ = forceJumpUpwardVelocity or 52
                arg2.AssemblyLinearVelocity = Vector3.new(assemblyLinearVelocity.X, n_, assemblyLinearVelocity.Z)
            end)

            pcall(function()
                local velocity = arg2.Velocity
                local forceJumpUpwardVelocity = tbl2.ForceJumpUpwardVelocity
                local n_ = forceJumpUpwardVelocity or 52
                arg2.Velocity = Vector3.new(velocity.X, n_, velocity.Z)
            end)
        end

        local forceJumpDebounceTime = tbl2.ForceJumpDebounceTime
        local n_ = forceJumpDebounceTime or 18

        delay(n_ / 100, function()
            flag3 = true
        end)

        return true
    end

    loopReworkForceJumpSetup = function()
        if tbl8.charAdded then
            return
        end

        tbl8.charAdded = localPlayer.CharacterAdded:Connect(function(character_)
            task.wait(1)
            loopReworkForceJumpUpdateCharacter(character_)
        end)

        if localPlayer.Character then
            loopReworkForceJumpUpdateCharacter(localPlayer.Character)
        end
    end

    loopReworkForceJumpUnload = function()
        if tbl8.charAdded then
            pcall(function()
                tbl8.charAdded:Disconnect()
            end)

            tbl8.charAdded = nil
        end

        v2 = nil
        humanoid_ = nil
        v3 = nil
        flag3 = true
    end

    loopReworkRunSequence = function()
        if tbl2.loopReworkDebounce or not tbl2.loopRework or tbl2.loopReworkBlocked then
            return
        end
        tbl2.loopReworkDebounce = true
        local n_ = tbl2.loopReworkWaitDetect / 10
        local n_2 = tbl2.loopReworkWaitJump / 10
        local n_3 = tbl2.loopReworkWaitRemote / 10
        local n_4 = tbl2.loopReworkLockDuration / 10
        local n_5 = tbl2.loopReworkCooldown / 10
        local now = tick()

        while tick() - now < n_ do
            if tbl2.loopRework and not tbl2.loopReworkBlocked then
                RunService.Heartbeat:Wait()
                continue
            end
            tbl2.loopReworkDebounce = false
            return
        end

        if tbl2.loopRework and not tbl2.loopReworkBlocked then
            local v4, v5, v6 = loopReworkGetCharParts()

            if v5 and v6 then
                local autoRotate = nil

                pcall(function()
                    autoRotate = v5.AutoRotate
                end)

                pcall(function()
                    v5.AutoRotate = false
                end)

                if tbl2.ForceJumpEnabled == false then
                    pcall(function()
                        v5.Jump = true
                        v5:ChangeState(Enum.HumanoidStateType.Jumping)
                    end)
                else
                    loopReworkForceJumpSetup()
                    loopReworkForceJumpUpdateCharacter(v4)

                    if not loopReworkForceJumpDoJump(v5, v6) then
                        pcall(function()
                            v5.Jump = true
                            v5:ChangeState(Enum.HumanoidStateType.Jumping)
                        end)
                    end
                end

                local now2 = tick()

                while tick() - now2 < n_2 do
                    if tbl2.loopRework and not tbl2.loopReworkBlocked then
                        RunService.Heartbeat:Wait()
                        continue
                    end

                    pcall(function()
                        if v5 and v5.Parent and autoRotate ~= nil then
                            v5.AutoRotate = autoRotate
                        end
                    end)

                    tbl2.loopReworkDebounce = false
                    return
                end

                if tbl2.loopRework and not tbl2.loopReworkBlocked then
                    loopReworkFireDashQW()
                    local now3 = tick()

                    while tick() - now3 < n_3 do
                        if tbl2.loopRework and not tbl2.loopReworkBlocked then
                            RunService.Heartbeat:Wait()
                            continue
                        end

                        pcall(function()
                            if v5 and v5.Parent and autoRotate ~= nil then
                                v5.AutoRotate = autoRotate
                            end
                        end)

                        tbl2.loopReworkDebounce = false
                        return
                    end

                    if tbl2.loopRework and not tbl2.loopReworkBlocked then
                        local v7 = loopReworkFindBestTarget()
                        local v8 = nil

                        if v7 and not tbl2.loopReworkBlocked then
                            v8 = loopReworkStartHorizontalLockLerp(v7, n_4)
                            v = v8
                        end

                        local n_6 = tick() + math.max(n_4, 1.2)

                        task.spawn(function()
                            while tick() < n_6 and tbl2.loopRework and not tbl2.loopReworkBlocked do
                                pcall(function()
                                    if v5 and v5.Parent then
                                        v5.AutoRotate = false
                                    end
                                end)

                                RunService.Heartbeat:Wait()
                            end

                            pcall(function()
                                if v5 and v5.Parent and autoRotate ~= nil then
                                    v5.AutoRotate = autoRotate
                                end
                            end)
                        end)

                        task.delay(n_4, function()
                            if v8 then
                                pcall(v8)
                                v = nil
                            end
                        end)

                        task.delay(n_5, function()
                            tbl2.loopReworkDebounce = false
                        end)

                        return
                    end

                    pcall(function()
                        if v5 and v5.Parent and autoRotate ~= nil then
                            v5.AutoRotate = autoRotate
                        end
                    end)

                    tbl2.loopReworkDebounce = false
                    return
                end

                pcall(function()
                    if v5 and v5.Parent and autoRotate ~= nil then
                        v5.AutoRotate = autoRotate
                    end
                end)

                tbl2.loopReworkDebounce = false
                return
            end

            tbl2.loopReworkDebounce = false
            return
        end

        tbl2.loopReworkDebounce = false
    end

    loopReworkOnAnimationPlayed = function(arg)
        if not tbl2.loopRework or tbl2.loopReworkDebounce or tbl2.loopReworkBlocked then
            return
        end

        if not arg or not arg.Animation then
            return
        end
        local v4 = tostring
        local animationId = arg.Animation.AnimationId
        local str = animationId or ""
        local v5 = v4(str)

        if v5 == tbl.loopReworkAnimDetectId or v5:find(tbl.loopReworkAnimDetectId, 1, true) then
            task.spawn(loopReworkRunSequence)
        end
    end

    loopReworkHookCharacter = function()
        if tbl7.anim then
            pcall(function()
                tbl7.anim:Disconnect()
            end)

            tbl7.anim = nil
        end

        local character_ = localPlayer.Character
        if not character_ then
            return
        end
        local humanoid_2 = character_:FindFirstChildOfClass("Humanoid")

        if humanoid_2 then
            tbl7.anim = humanoid_2.AnimationPlayed:Connect(loopReworkOnAnimationPlayed)
        end
    end

    loopReworkStartBlockChecker = function()
        if tbl7.blockChecker then
            pcall(function()
                tbl7.blockChecker:Disconnect()
            end)

            tbl7.blockChecker = nil
        end

        local n_ = 0

        tbl7.blockChecker = RunService.Heartbeat:Connect(function(deltaTime)
            if not tbl2.loopRework then
                return
            end
            n_ = n_ + deltaTime
            if n_ < 0.12 then
                return
            end
            n_ = 0
            local v4 = loopReworkScanForBlockingAnim()

            if v4 and not tbl2.loopReworkBlocked then
                tbl2.loopReworkBlocked = true
                loopReworkCancelActiveLockAndRestore()

                if tbl7.anim then
                    pcall(function()
                        tbl7.anim:Disconnect()
                    end)

                    tbl7.anim = nil
                end
            elseif not v4 and tbl2.loopReworkBlocked then
                tbl2.loopReworkBlocked = false

                if tbl2.loopRework then
                    loopReworkHookCharacter()
                end
            end
        end)
    end

    loopReworkSetupLoopRework = function()
        if not tbl2.loopRework then
            if tbl7.anim then
                pcall(function()
                    tbl7.anim:Disconnect()
                end)

                tbl7.anim = nil
            end

            if tbl7.blockChecker then
                pcall(function()
                    tbl7.blockChecker:Disconnect()
                end)

                tbl7.blockChecker = nil
            end

            if tbl7.charAdded then
                pcall(function()
                    tbl7.charAdded:Disconnect()
                end)

                tbl7.charAdded = nil
            end

            loopReworkCancelActiveLockAndRestore()
            tbl2.loopReworkDebounce = false
            tbl2.loopReworkBlocked = false
            return
        end

        loopReworkHookCharacter()
        loopReworkStartBlockChecker()

        if tbl7.charAdded then
            pcall(function()
                tbl7.charAdded:Disconnect()
            end)
        end

        tbl7.charAdded = localPlayer.CharacterAdded:Connect(function()
            task.wait(1)

            if tbl2.loopRework then
                loopReworkHookCharacter()
            end
        end)

        loopReworkForceJumpSetup()
    end

    fn10 = function()
        if tbl3.m2Block then
            tbl3.m2Block:Disconnect()
            tbl3.m2Block = nil
        end

        if not tbl2.m2Block then
            return
        end

        tbl3.m2Block = UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if not gameProcessed and input.UserInputType == Enum.UserInputType.MouseButton2 then
                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F, false, game)
            end
        end)

        tbl3.m2BlockEnd = UserInputService.InputEnded:Connect(function(input, gameProcessed)
            if not gameProcessed and input.UserInputType == Enum.UserInputType.MouseButton2 then
                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.F, false, game)
            end
        end)
    end

    fn11 = function()
        if tbl3.m1BlockConnection then
            tbl3.m1BlockConnection:Disconnect()
            tbl3.m1BlockConnection = nil
        end

        if tbl2.m1Block then
            local localPlayer2 = Players.LocalPlayer
            if not localPlayer2 then
                warn("")
                return
            end

            if not localPlayer2.Character then
                localPlayer2.CharacterAdded:Wait()
            end

            local mouse_ = localPlayer2:GetMouse()
            if not mouse_ then
                warn("")
                return
            end

            tbl3.m1BlockConnection = mouse_.Button1Down:Connect(function()
                local character_ = localPlayer2.Character

                if character_ then
                    local communicate = character_:WaitForChild("Communicate", 5)

                    if communicate then
                        communicate:FireServer(unpack({{Goal = "KeyRelease", Key = Enum.KeyCode.F}}))
                    else
                        warn("")
                    end
                else
                    warn("")
                end
            end)
        end
    end

    fn12 = function()
        if tbl3.downSlam then
            tbl3.downSlam:Disconnect()
            tbl3.downSlam = nil
        end

        if not tbl2.downSlam then
            return
        end
        local character_ = localPlayer.Character
        local humanoid_2 = nil
        local humanoidRootPart_ = nil

        local tbl9 = {
            ["rbxassetid://10469639222"] = true,
            ["rbxassetid://13532604085"] = true,
            ["rbxassetid://13295919399"] = true,
            ["rbxassetid://13378751717"] = true,
            ["rbxassetid://14001963401"] = true,
            ["rbxassetid://15240176873"] = true,
            ["rbxassetid://16515448089"] = true,
            ["rbxassetid://17889471098"] = true,
            ["rbxassetid://104895379416342"] = true,
        }

        local function fn20()
            if not humanoidRootPart_ then
                return false
            end

            for i, child in ipairs(Workspace:WaitForChild("Live"):GetChildren()) do
                if child:IsA("Model") and child ~= character_ then
                    local humanoidRootPart_2 = child:FindFirstChild("HumanoidRootPart")
                    if humanoidRootPart_2 and (humanoidRootPart_2.Position - humanoidRootPart_.Position).Magnitude <= 15 and (Players:GetPlayerFromCharacter(child) or child.Name == "Weakest Dummy") then
                        return true
                    end
                end
            end

            return false
        end

        local function fn21()
            if not humanoidRootPart_ or not humanoid_2 then
                return
            end

            if not fn20() then
                return
            end
            TweenService:Create(humanoidRootPart_, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = humanoidRootPart_.CFrame + Vector3.new(0, 6, 0)}):Play()

            for i, v4 in ipairs({
                Enum.HumanoidStateType.PlatformStanding,
                Enum.HumanoidStateType.Freefall,
                Enum.HumanoidStateType.GettingUp,
            }) do
                if humanoid_2:GetState() == v4 then
                    humanoid_2:ChangeState(Enum.HumanoidStateType.Physics)
                    task.wait()
                end
            end

            humanoid_2:ChangeState(Enum.HumanoidStateType.Jumping)
        end

        local function fn22()
            if humanoid_2 then
                humanoid_2.AnimationPlayed:Connect(function(arg)
                    if tbl2.downSlam and arg.Animation and tbl9[arg.Animation.AnimationId] then
                        fn21()
                    end
                end)
            end
        end

        local function fn23()
            local character_2 = localPlayer.Character
            local result = character_2 or localPlayer.CharacterAdded:Wait()
            character_ = result
            humanoid_2 = character_:WaitForChild("Humanoid")
            humanoidRootPart_ = character_:WaitForChild("HumanoidRootPart")
            fn22()
        end

        fn23()
        localPlayer.CharacterAdded:Connect(fn23)
    end

    local tbl9 = {}

    local function fn20(arg, arg2)
        local torso_ = arg:FindFirstChild("Torso")
        local upperTorso = torso_ or arg:FindFirstChild("UpperTorso")
        if not upperTorso then
            return
        end
        local billboardGui = Instance.new("BillboardGui")
        billboardGui.Name = "ArrowBillboard"
        billboardGui.Adornee = upperTorso
        billboardGui.Size = UDim2.new(4, 0, 2, 0)
        billboardGui.StudsOffset = Vector3.new(0, 5, 0)
        billboardGui.AlwaysOnTop = true
        billboardGui.Parent = upperTorso
        local textLabel = Instance.new("TextLabel")
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.Text = "⬇"
        textLabel.Font = Enum.Font.GothamBold
        textLabel.TextScaled = true
        textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
        textLabel.Parent = billboardGui

        task.spawn(function()
            local n_, n_2, n_3
            n_3 = 1

            while true do
                if n_3 == 1 then
                    if billboardGui and billboardGui.Parent then
                        n_3 = 3
                    else
                        n_3 = 2
                    end
                elseif n_3 == 2 then
                    return
                elseif n_3 == 3 then
                    n_ = -0.05
                    n_3 = 4
                elseif n_3 == 4 then
                    n_2 = n_ + 0.05

                    if n_2 <= 1 then
                        n_3 = 5
                    else
                        n_3 = 1
                    end
                elseif n_3 == 5 then
                    n_ = n_2

                    if billboardGui and billboardGui.Parent and tbl2.arrowIndicator then
                        n_3 = 6
                    else
                        n_3 = 1
                    end
                elseif n_3 == 6 then
                    textLabel.TextColor3 = Color3.new(1, 0, 0):Lerp(Color3.new(0.5, 0, 0), math.sin(n_2 * math.pi))
                    task.wait(0.1)
                    n_3 = 4
                end
            end
        end)

        arg2.Stopped:Connect(function()
            if billboardGui then
                billboardGui:Destroy()
            end
        end)
    end

    local function fn21(arg)
        if tbl9[arg] then
            tbl9[arg]:Disconnect()
            tbl9[arg] = nil
        end

        if not tbl2.arrowIndicator then
            return
        end

        local connection3 = arg.AnimationPlayed:Connect(function(arg2)
            if not tbl2.arrowIndicator then
                return
            end

            if arg2.Animation.AnimationId == "rbxassetid://10470389827" then
                fn20(arg.Parent, arg2)
            end
        end)

        tbl9[arg] = connection3
    end

    fn13 = function()
        for k, v4 in pairs(tbl9) do
            if v4.Connected then
                v4:Disconnect()
            end
        end

        tbl9 = {}
        if not tbl2.arrowIndicator then
            return
        end

        for i, player in ipairs(Players:GetPlayers()) do
            if player.Character then
                local humanoid_2 = player.Character:FindFirstChildOfClass("Humanoid")

                if humanoid_2 then
                    fn21(humanoid_2)
                end
            end
        end

        Players.PlayerAdded:Connect(function(player)
            player.CharacterAdded:Connect(function(character_)
                fn21(character_:WaitForChild("Humanoid"))
            end)
        end)
    end

    UpperGraspAnimIds = {
        ["rbxassetid://10503381238"] = true,
        ["rbxassetid://13379003796"] = true,
    }

    UpperGraspConnections = {}

    UpperGraspMatchAnimId = function(arg)
        if not arg then
            return false
        end
        local str = tostring(arg)
        if UpperGraspAnimIds[str] then
            return true
        end
        local match = str:match("(%d+)")

        if match then
            if UpperGraspAnimIds[match] then
                return true
            end

            if UpperGraspAnimIds["rbxassetid://" .. match] then
                return true
            end
        end

        return false
    end

    UpperGraspFindClosestTarget = function(arg, arg2)
        local upperGraspSearchRadius = tbl2.upperGraspSearchRadius
        local live_ = Workspace:FindFirstChild("Live")
        if not live_ then
            return nil
        end
        local v4 = nil
        local v5 = upperGraspSearchRadius

        for i, child in ipairs(live_:GetChildren()) do
            if child:IsA("Model") and child ~= arg then
                local torso_ = child:FindFirstChild("Torso")
                local upperTorso = torso_ or child:FindFirstChild("UpperTorso") or child:FindFirstChild("HumanoidRootPart") or child:FindFirstChild("Head")

                if upperTorso and upperTorso.Position then
                    local magnitude = (arg2.Position - upperTorso.Position).Magnitude

                    if magnitude <= v5 then
                        v5 = magnitude
                        v4 = upperTorso
                    end
                end
            end
        end

        return v4
    end

    UpperGraspPerformGrasp = function()
        if not tbl2.upperGrasp then
            return
        end
        local character_ = localPlayer.Character
        if not character_ then
            return
        end
        local humanoidRootPart_ = character_:FindFirstChild("HumanoidRootPart")
        local humanoid_2 = character_:FindFirstChild("Humanoid")
        if not humanoidRootPart_ or not humanoid_2 then
            return
        end
        local v4 = UpperGraspFindClosestTarget(character_, humanoidRootPart_)

        if v4 then
            local n_ = v4.Position + Vector3.new(0, 5, 0)
            local n_2 = tbl2.upperGraspTweenTime / 100

            pcall(function()
                local tween = TweenService:Create(humanoidRootPart_, TweenInfo.new(n_2, Enum.EasingStyle.Linear), {CFrame = CFrame.new(n_)})
                tween:Play()
                tween.Completed:Wait()
            end)
        end

        local backpack = localPlayer.Backpack
        local hunterzzzzzSGrasp = backpack and localPlayer.Backpack:FindFirstChild("Hunterzzzzz's Grasp")
        local communicate = character_:FindFirstChild("Communicate")

        if hunterzzzzzSGrasp and communicate then
            local tbl10 = {{Tool = hunterzzzzzSGrasp, Goal = "Console Move"}}

            pcall(function()
                communicate:FireServer(unpack(tbl10))
            end)
        end
    end

    UpperGraspOnAnimationPlayed = function(arg)
        if not tbl2.upperGrasp then
            return
        end

        if tbl2.upperGraspCooldown then
            return
        end

        if not arg or not arg.Animation then
            return
        end

        if UpperGraspMatchAnimId(arg.Animation.AnimationId) then
            tbl2.upperGraspCooldown = true

            task.delay(tbl2.upperGraspAfterDelay / 100, function()
                if not tbl2.upperGrasp then
                    task.delay(tbl2.upperGraspCooldownSeconds / 10, function()
                        tbl2.upperGraspCooldown = false
                    end)

                    return
                end

                pcall(UpperGraspPerformGrasp)

                task.delay(tbl2.upperGraspCooldownSeconds / 10, function()
                    tbl2.upperGraspCooldown = false
                end)
            end)
        end
    end

    UpperGraspHookCharacter = function()
        if UpperGraspConnections.anim then
            pcall(function()
                UpperGraspConnections.anim:Disconnect()
            end)

            UpperGraspConnections.anim = nil
        end

        local character_ = localPlayer.Character
        if not character_ then
            return
        end
        local humanoid_2 = character_:FindFirstChild("Humanoid")

        if humanoid_2 then
            UpperGraspConnections.anim = humanoid_2.AnimationPlayed:Connect(UpperGraspOnAnimationPlayed)
        end
    end

    SetupUpperGrasp = function()
        if UpperGraspConnections.anim then
            pcall(function()
                UpperGraspConnections.anim:Disconnect()
            end)

            UpperGraspConnections.anim = nil
        end

        if UpperGraspConnections.charAdded then
            pcall(function()
                UpperGraspConnections.charAdded:Disconnect()
            end)

            UpperGraspConnections.charAdded = nil
        end

        if not tbl2.upperGrasp then
            tbl2.upperGraspCooldown = false
            return
        end
        UpperGraspHookCharacter()

        UpperGraspConnections.charAdded = localPlayer.CharacterAdded:Connect(function(character_)
            task.wait(0.9)

            if tbl2.upperGrasp then
                UpperGraspHookCharacter(character_)
            end
        end)

        lib:Notify({
            Title = "Upper Grasp",
            Content = "Enabled - Will trigger on dash animations",
            Duration = 3,
            Icon = "lucide:hand",
        })
    end

    task.spawn(function()
        task.wait(3)

        if tbl2.upperGrasp then
            SetupUpperGrasp()
        end
    end)

    sideDashConnections = {}
    target = nil
    local weakestDummy = game.Workspace.Live:FindFirstChild("Weakest Dummy")
    dummy = weakestDummy
    toggle = false
    q = true
    f = true
    m = true
    a = true
    noClip = false
    click = false
    silent = false
    lastmagnitude = math.huge
    mobileDashGui = nil
    lastTapTime = 0
    local mouse_ = game.Players.LocalPlayer:GetMouse()
    mouse = mouse_

    getTargetColor = function()
        return Color3.fromRGB(tbl2.sideDashTargetColorR, tbl2.sideDashTargetColorG, tbl2.sideDashTargetColorB)
    end

    setTargetColorFromColor3 = function(arg)
        local color = arg

        if type(arg) == "table" and arg.Color then
            color = arg.Color
        end

        if not color then
            return
        end
        local sideDashTargetColorR = math.clamp(math.floor(color.R * 255 + 0.5), 0, 255)
        tbl2.sideDashTargetColorR = sideDashTargetColorR
        local sideDashTargetColorG = math.clamp(math.floor(color.G * 255 + 0.5), 0, 255)
        tbl2.sideDashTargetColorG = sideDashTargetColorG
        local sideDashTargetColorB = math.clamp(math.floor(color.B * 255 + 0.5), 0, 255)
        tbl2.sideDashTargetColorB = sideDashTargetColorB
        updateTargetColor()
    end

    updateTargetColor = function()
        if target then
            local character_ = target == dummy and target or target.Character
            char = character_
            removeHighlight(char)

            if tbl2.sideDashShow then
                addHighlight(char)
            end
        end
    end

    dash = function()
        local Players2 = game:GetService("Players")
        Playerss = Players2
        Communicatee = Playerss.LocalPlayer.Character.Communicate

        Communicatee:FireServer({
            Dash = Enum.KeyCode.A,
            Key = Enum.KeyCode.Q,
            Goal = "KeyPress",
        })
    end

    dashLV = nil
    dashAtt = nil

    ensureLV = function(parent)
        local v4 = dashAtt
        local attachment = v4 or Instance.new("Attachment", parent)
        dashAtt = attachment

        if not dashLV then
            local linearVelocity = Instance.new("LinearVelocity")
            dashLV = linearVelocity
            dashLV.Attachment0 = dashAtt
            dashLV.MaxForce = math.huge
            dashLV.VelocityConstraintMode = Enum.VelocityConstraintMode.Vector
            dashLV.RelativeTo = Enum.ActuatorRelativeTo.World
            dashLV.Parent = parent
        end

        return dashLV
    end

    setDashVelocity = function(arg, arg2, arg3)
        local v4 = ensureLV(arg)
        lv = v4
        local vector = Vector3.new(arg2.X, arg.Position.Y, arg2.Z)
        flatTarget = vector
        delta = flatTarget - arg.Position
        local n_ = delta / math.max(arg3, 0.01)
        needed = n_
        lv.VectorVelocity = Vector3.new(needed.X, 0, needed.Z)
    end

    stopDash = function()
        if dashLV then
            dashLV.VectorVelocity = Vector3.new()
            dashLV:Destroy()
            dashLV = nil
        end

        if dashAtt then
            dashAtt:Destroy()
            dashAtt = nil
        end
    end

    addHighlight = function(parent)
        if not parent or not tbl2.sideDashShow then
            return
        end
        local highlight_ = Instance.new("Highlight")
        highlight = highlight_
        highlight.Parent = parent
        highlight.OutlineColor = getTargetColor()
        highlight.FillColor = getTargetColor()
        highlight.FillTransparency = 0.8
        highlight.OutlineTransparency = 0.3
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    end

    removeHighlight = function(arg)
        for i, descendant in ipairs(arg:GetDescendants()) do
            if descendant:IsA("Highlight") then
                descendant:Destroy()
            end
        end
    end

    silentAim = function(arg, arg2)
        humm = game.Players.LocalPlayer.Character.HumanoidRootPart

        if arg ~= nil and arg == dummy then
            local rightArm_ = arg:FindFirstChild("Right Arm")
            get = rightArm_
            directionMM = get.CFrame.Position - humm.CFrame.Position
            local n_ = CFrame.fromAxisAngle(Vector3.new(0, arg2, 0), math.rad(140)) * directionMM
            newDirection = n_
            ddirect = get.CFrame.Position + newDirection
            local vector = Vector3.new(ddirect.X, humm.CFrame.Position.Y, ddirect.Z)
            n = vector
            local cframe = CFrame.new(humm.CFrame.Position, n)
            finalCF = cframe
            humm.CFrame = humm.CFrame:Lerp(finalCF, tbl2.sideDashSmoothness)
        elseif arg ~= nil and arg ~= dummy then
            local rightArm_ = arg.Character:FindFirstChild("Right Arm")
            get = rightArm_
            directionMM = get.CFrame.Position - humm.CFrame.Position
            local n_ = CFrame.fromAxisAngle(Vector3.new(0, arg2, 0), math.rad(140)) * directionMM
            newDirection = n_
            ddirect = get.CFrame.Position + newDirection
            local vector = Vector3.new(ddirect.X, humm.CFrame.Position.Y, ddirect.Z)
            n = vector
            local cframe = CFrame.new(humm.CFrame.Position, n)
            finalCF = cframe
            humm.CFrame = humm.CFrame:Lerp(finalCF, tbl2.sideDashSmoothness)
        end
    end

    aimlock = function(arg)
        cam = workspace.CurrentCamera

        if arg ~= nil and arg == dummy then
            local vector = Vector3.new(arg.HumanoidRootPart.CFrame.Position.X, 438, arg.HumanoidRootPart.CFrame.Position.Z)
            vv = vector
            cam.CFrame = CFrame.new(cam.CFrame.Position, vv)
        elseif arg ~= nil and arg ~= dummy then
            local vector = Vector3.new(arg.Character.HumanoidRootPart.CFrame.Position.X, 438, arg.Character.HumanoidRootPart.CFrame.Position.Z)
            vv = vector
            cam.CFrame = CFrame.new(cam.CFrame.Position, vv)
        end
    end

    deselectTarget = function()
        if target then
            local character_ = target == dummy and target or target.Character
            char = character_
            removeHighlight(char)
            target = nil
            toggle = false
        end
    end

    getdiddy = function(arg)
        local weakestDummy2 = game.Workspace.Live:FindFirstChild("Weakest Dummy")
        dummy = weakestDummy2
        local v4 = workspace.CurrentCamera:ScreenPointToRay(arg.X, arg.Y)
        ray = v4
        local raycastParams = RaycastParams.new()
        params = raycastParams
        params.FilterDescendantsInstances = {game.Players.LocalPlayer.Character}
        params.FilterType = Enum.RaycastFilterType.Blacklist
        local hit_ = workspace:Raycast(ray.Origin, ray.Direction * 1000, params)
        hit = hit_

        if hit then
            local model_ = hit.Instance:FindFirstAncestorOfClass("Model")
            model = model_
            local playerFromCharacter = game.Players:GetPlayerFromCharacter(model)
            local v5 = playerFromCharacter
            local flag4 = v5 or (model == dummy and dummy or nil)
            selected = flag4

            if selected then
                if selected == target then
                    deselectTarget()
                else
                    deselectTarget()
                    target = selected
                    local character_ = target == dummy and target or target.Character
                    char = character_
                    addHighlight(char)
                    toggle = true
                end
            end
        else
            deselectTarget()
        end
    end

    GetTarget = function()
        local weakestDummy2 = game.Workspace.Live:FindFirstChild("Weakest Dummy")
        dummy = weakestDummy2
        local p_ = game.Players.LocalPlayer:GetMouse().Hit.p
        mousepos = p_
        lastmagnitude = math.huge
        local v4 = nil

        for k, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer and player.Character then
                charpos = player.Character.HumanoidRootPart.CFrame.Position

                if (charpos - mousepos).Magnitude < lastmagnitude then
                    lastmagnitude = (charpos - mousepos).Magnitude
                    v4 = player
                end
            end
        end

        if dummy and dummy.HumanoidRootPart and (dummy.HumanoidRootPart.Position - mousepos).Magnitude < lastmagnitude then
            v4 = dummy
        end

        if v4 then
            if v4 == target then
                deselectTarget()
            else
                deselectTarget()
                target = v4
                local character_ = target == dummy and target or target.Character
                char = character_
                addHighlight(char)
                toggle = true
            end
        else
            deselectTarget()
        end
    end

    simulateLeftClickMobile = function()
        if click then
            Communicate = game.Players.LocalPlayer.Character.Communicate
            args = {{Goal = "KeyRelease", Key = Enum.KeyCode.F}}
            game.Players.LocalPlayer.Character:WaitForChild("Communicate"):FireServer(unpack(args))
            Communicate:FireServer({Mobile = true, Goal = "LeftClick"})
            Communicate:FireServer({Mobile = true, Goal = "LeftClickRelease"})
        end
    end

    pressQA = function()
        if q == true then
            q = false
            local character_ = game.Players.LocalPlayer.Character
            local result = character_ or game.Players.LocalPlayer.CharacterAdded:Wait()
            c = result
            local humanoid_2 = c:WaitForChild("Humanoid")
            h = humanoid_2
            local animator = h:FindFirstChildOfClass("Animator")
            local animator2 = animator or Instance.new("Animator", h)
            a = animator2
            local animation = Instance.new("Animation")
            anim = animation
            anim.AnimationId = "rbxassetid://10480796021"
            a:LoadAnimation(anim):Play()
        end
    end

    pressQD = function()
        if q == true then
            q = false
            local character_ = game.Players.LocalPlayer.Character
            local result = character_ or game.Players.LocalPlayer.CharacterAdded:Wait()
            c = result
            local humanoid_2 = c:WaitForChild("Humanoid")
            h = humanoid_2
            local animator = h:FindFirstChildOfClass("Animator")
            local animator2 = animator or Instance.new("Animator", h)
            a = animator2
            local animation = Instance.new("Animation")
            anim = animation
            anim.AnimationId = "rbxassetid://10480793962"
            a:LoadAnimation(anim):Play()
        end
    end

    performDash = function()
        if not toggle or not target then
            return
        end
        local character_ = game.Players.LocalPlayer.Character
        if not character_ then
            return
        end
        local humanoidRootPart_ = character_:FindFirstChild("HumanoidRootPart")
        p = humanoidRootPart_
        if not p then
            return
        end

        if p.Position.Y > 442 then
            return
        end
        local humanoidRootPart_2 = target == dummy and target.HumanoidRootPart or target.Character.HumanoidRootPart
        targetHRP = humanoidRootPart_2
        if not targetHRP or targetHRP.Position.Y > 448 then
            return
        end

        if tbl2.sideDashDistance < (targetHRP.CFrame.Position - p.CFrame.Position).Magnitude or not f then
            return
        end
        click = true
        f = false
        noClip = false
        m = true
        a = true
        dash()

        task.spawn(function()
            task.delay(tbl2.sideDashDuration, function()
                silent = false
                m = false
                noClip = true
                q = true

                task.spawn(function()
                    local connection3 = game:GetService("RunService").Stepped:Connect(function()
                        aimlock(target)

                        task.delay(0.5, function()
                            ran:Disconnect()
                        end)
                    end)

                    ran = connection3
                end)

                task.wait(tbl2.sideDashCooldown)
                f = true
            end)
        end)

        task.spawn(function()
            task.delay(tbl2.sideDashDelay, function()
                simulateLeftClickMobile()
                click = false
            end)
        end)

        direction = (targetHRP.Position - p.Position).Unit
        forward = targetHRP.CFrame.LookVector
        local unit = Vector3.new(direction.X, 0, direction.Z).Unit
        di = unit
        local vector = Vector3.new(di.Z, 0, -di.X)
        jok = vector
        local vector2 = Vector3.new(-di.Z, 0, di.X)
        jok2 = vector2
        des = targetHRP.Position + jok * tbl2.sideDashRange
        des100 = targetHRP.Position + jok2 * tbl2.sideDashRange
        des1 = (des - p.Position).Unit
        des70 = (des100 - p.Position).Unit

        if (targetHRP.Position + targetHRP.CFrame.RightVector * tbl2.sideDashRange - p.CFrame.Position).Magnitude < (targetHRP.Position + -targetHRP.CFrame.RightVector * tbl2.sideDashRange - p.CFrame.Position).Magnitude then
            if forward:Dot(direction) < 0 then
                silent = true
                pressQA()
                character_.Humanoid.AutoRotate = false

                local connection3 = game:GetService("RunService").Stepped:Connect(function()
                    p = character_.HumanoidRootPart
                    des = targetHRP.Position + targetHRP.CFrame.RightVector * tbl2.sideDashRange
                    des100 = targetHRP.Position + -targetHRP.CFrame.RightVector * tbl2.sideDashRange
                    silentAim(target, -1)

                    if not m then
                        run:Disconnect()
                    end
                end)

                run = connection3
                sideDashConnections.silentRun = run
            elseif forward:Dot(direction) > 0 then
                silent = true
                pressQD()
                character_.Humanoid.AutoRotate = false

                local connection3 = game:GetService("RunService").Stepped:Connect(function()
                    p = character_.HumanoidRootPart
                    des = targetHRP.Position + targetHRP.CFrame.RightVector * tbl2.sideDashRange
                    des100 = targetHRP.Position + -targetHRP.CFrame.RightVector * tbl2.sideDashRange
                    silentAim(target, 1)

                    if not m then
                        run:Disconnect()
                    end
                end)

                run = connection3
                sideDashConnections.silentRun = run
            end
        elseif forward:Dot(direction) < 0 then
            silent = true
            pressQD()
            character_.Humanoid.AutoRotate = false

            local connection3 = game:GetService("RunService").Stepped:Connect(function()
                p = character_.HumanoidRootPart
                des = targetHRP.Position + targetHRP.CFrame.RightVector * tbl2.sideDashRange
                des100 = targetHRP.Position + -targetHRP.CFrame.RightVector * tbl2.sideDashRange
                silentAim(target, 1)

                if not m then
                    run:Disconnect()
                end
            end)

            run = connection3
            sideDashConnections.silentRun = run
        elseif forward:Dot(direction) > 0 then
            silent = true
            pressQA()
            character_.Humanoid.AutoRotate = false

            local connection3 = game:GetService("RunService").Stepped:Connect(function()
                p = character_.HumanoidRootPart
                des = targetHRP.Position + targetHRP.CFrame.RightVector * tbl2.sideDashRange
                des100 = targetHRP.Position + -targetHRP.CFrame.RightVector * tbl2.sideDashRange
                silentAim(target, -1)

                if not m then
                    run:Disconnect()
                end
            end)

            run = connection3
            sideDashConnections.silentRun = run
        end

        dashLoop = nil

        local connection3 = game:GetService("RunService").Heartbeat:Connect(function()
            if not m then
                if dashLoop then
                    pcall(function()
                        dashLoop:Disconnect()
                    end)

                    dashLoop = nil
                end

                return
            end

            p = character_.HumanoidRootPart
            pred = targetHRP.AssemblyLinearVelocity
            des = targetHRP.Position + jok * tbl2.sideDashRange + pred * tbl2.sideDashPrediction
            des100 = targetHRP.Position + jok2 * tbl2.sideDashRange + pred * tbl2.sideDashPrediction
            des2 = des + des1 * tbl2.sideDashReach
            des50 = des100 + des70 * tbl2.sideDashReach
            local vector3 = Vector3.new(des50.X, p.Position.Y, des50.Z)
            fDes2 = vector3
            local vector4 = Vector3.new(des2.X, p.Position.Y, des2.Z)
            fDes = vector4
            ps = nil

            if (targetHRP.Position + targetHRP.CFrame.RightVector * tbl2.sideDashRange - p.CFrame.Position).Magnitude < (targetHRP.Position + -targetHRP.CFrame.RightVector * tbl2.sideDashRange - p.CFrame.Position).Magnitude then
                local cframe = CFrame.new(fDes)
                ps = cframe
            else
                local cframe = CFrame.new(fDes2)
                ps = cframe
            end

            setDashVelocity(p, ps.Position, tbl2.sideDashDuration)
        end)

        dashLoop = connection3
        sideDashConnections.dashLoop = dashLoop

        task.delay(tbl2.sideDashDuration, function()
            m = false
            stopDash()
        end)
    end

    createMobileDashButton = function()
        if mobileDashGui then
            return
        end
        local screenGui_ = Instance.new("ScreenGui")
        mobileDashGui = screenGui_
        mobileDashGui.Parent = game:GetService("CoreGui")
        mobileDashGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        local imageButton = Instance.new("ImageButton")
        dashButton = imageButton
        dashButton.Parent = mobileDashGui
        dashButton.Position = UDim2.new(0.9, 0, 0.8, 0)
        dashButton.Size = UDim2.new(0, 60, 0, 60)
        dashButton.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
        dashButton.BackgroundTransparency = 0.3
        dashButton.Image = "rbxassetid://12443244342"
        dashButton.ImageColor3 = Color3.fromRGB(255, 0, 0)
        dashButton.Draggable = true
        dashButton.Active = true
        dashButton.Selectable = true
        dashButton.MouseButton1Click:Connect(performDash)
        local uiCorner = Instance.new("UICorner")
        uicorner = uiCorner
        uicorner.CornerRadius = UDim.new(0, 10)
        uicorner.Parent = dashButton
    end

    setupFakeMobile = function()
        sideDashConnections.fakeMouse = mouse.Button1Down:Connect(function()
            if os.clock() - lastTapTime < 0.3 then
                getdiddy(Vector2.new(mouse.X, mouse.Y))
            end

            local now = os.clock()
            lastTapTime = now
        end)
    end

    cleanupFakeMobile = function()
        if sideDashConnections.fakeMouse then
            sideDashConnections.fakeMouse:Disconnect()
            sideDashConnections.fakeMouse = nil
        end
    end

    setupSideDash = function()
        local UserInputService2 = game:GetService("UserInputService")
        uis = UserInputService2
        local UserInputService3 = game:GetService("UserInputService")
        U = UserInputService3
        C = workspace.CurrentCamera
        local Players2 = game:GetService("Players")
        P = Players2
        local character_ = game.Players.LocalPlayer.Character

        if character_ then
            sideDashConnections.autoRotate = character_.Humanoid:GetPropertyChangedSignal("AutoRotate"):Connect(function()
                if tbl2.sideDashSilent and character_.Humanoid.AutoRotate then
                    character_.Humanoid.AutoRotate = false
                end
            end)
        end

        sideDashConnections.characterAdded = game.Players.LocalPlayer.CharacterAdded:Connect(function(character_2)
            character_ = character_2

            sideDashConnections.autoRotate = character_2:WaitForChild("Humanoid"):GetPropertyChangedSignal("AutoRotate"):Connect(function()
                if tbl2.sideDashSilent and character_2.Humanoid.AutoRotate then
                    character_2.Humanoid.AutoRotate = false
                end
            end)
        end)

        sideDashConnections.playerRemoving = game.Players.PlayerRemoving:Connect(function(player)
            if target == player then
                if target.Character then
                    removeHighlight(target.Character)
                end

                target = nil
                toggle = false
            end
        end)

        sideDashConnections.healthLoop = game:GetService("RunService").Heartbeat:Connect(function()
            if toggle then
                local weakestDummy2 = game.Workspace.Live:FindFirstChild("Weakest Dummy")
                dummy = weakestDummy2

                if target ~= nil and target == dummy then
                    if target.Humanoid.Health == 0 then
                        toggle = false
                        removeHighlight(target)
                        target = nil
                    end
                elseif target ~= nil and target ~= dummy then
                    local humanoid_2 = target.Character:FindFirstChild("Humanoid")
                    oppo = humanoid_2

                    if oppo and oppo.Health == 0 then
                        toggle = false
                        removeHighlight(target.Character)
                        target = nil
                    end
                end
            end
        end)

        sideDashConnections.touchInput = U.InputBegan:Connect(function(input, gameProcessed)
            if gameProcessed then
                return
            end

            if input.UserInputType == Enum.UserInputType.Touch then
                if os.clock() - lastTapTime < 0.3 then
                    getdiddy(input.Position)
                end

                local now = os.clock()
                lastTapTime = now
            end
        end)

        sideDashConnections.keyInput = uis.InputBegan:Connect(function(input, gameProcessed)
            if gameProcessed or not tbl2.sideDashEnabled then
                return
            end

            if input.UserInputType == Enum.UserInputType.Keyboard then
                if input.KeyCode == Enum.KeyCode.V then
                    GetTarget()
                end

                if input.KeyCode == Enum.KeyCode.C then
                    performDash()
                end
            end
        end)

        if tbl2.sideDashMobileMode then
            createMobileDashButton()
        end

        if tbl2.sideDashFakeMobile then
            setupFakeMobile()
        end
    end

    cleanupSideDash = function()
        for k, v4 in pairs(sideDashConnections) do
            if v4 then
                v4:Disconnect()
            end
        end

        sideDashConnections = {}

        if target then
            local character_ = target == dummy and target or target.Character
            char = character_
            removeHighlight(char)
        end

        target = nil
        toggle = false
        stopDash()
        silent = false

        if game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true
        end

        if mobileDashGui then
            mobileDashGui:Destroy()
            mobileDashGui = nil
        end
    end

    DC_Connections = {}
    DC_Highlights = {}

    DC_RemoveHighlight = function(arg)
        if DC_Highlights[arg] then
            if DC_Highlights[arg].Highlight then
                pcall(function()
                    DC_Highlights[arg].Highlight:Destroy()
                end)
            end

            DC_Highlights[arg] = nil
        end
    end

    DC_CreateHighlight = function(arg, adornee)
        if not tbl2.deathCounterESP then
            return
        end
        DC_RemoveHighlight(arg)
        local highlight_ = Instance.new("Highlight")
        hl = highlight_
        hl.Name = "DeathCounterHighlight"
        hl.Adornee = adornee
        hl.FillColor = Color3.fromRGB(255, 60, 60)
        hl.OutlineColor = Color3.fromRGB(160, 0, 0)
        hl.FillTransparency = 0.6
        hl.OutlineTransparency = 0.1
        hl.Parent = game:GetService("CoreGui")
        DC_Highlights[arg] = {Highlight = hl, StartTime = tick()}

        task.delay(12, function()
            if DC_Highlights[arg] and DC_Highlights[arg].Highlight == hl then
                DC_RemoveHighlight(arg)
            end
        end)
    end

    DC_WatchCharacter = function(arg)
        if not arg then
            return
        end
        local playerFromCharacter = game:GetService("Players"):GetPlayerFromCharacter(arg)
        plr = playerFromCharacter
        if not plr then
            return
        end

        if arg:FindFirstChild("Death Counter") then
            DC_CreateHighlight(plr, arg)
        end

        local connection3 = arg.ChildAdded:Connect(function(child)
            if child.Name == "Death Counter" then
                DC_CreateHighlight(plr, arg)
            end
        end)

        childConn = connection3
        table.insert(DC_Connections, childConn)
    end

    setupDeathCounterESP = function()
        for k, v4 in pairs(DC_Connections) do
            pcall(function()
                v4:Disconnect()
            end)
        end

        DC_Connections = {}

        for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
            if player.Character then
                DC_WatchCharacter(player.Character)
            end

            local connection3 = player.CharacterAdded:Connect(function(character_)
                task.wait(1)

                if tbl2.deathCounterESP then
                    DC_WatchCharacter(character_)
                end
            end)

            charAddedConn = connection3
            table.insert(DC_Connections, charAddedConn)
        end

        local connection3 = game:GetService("Players").PlayerAdded:Connect(function(player)
            local connection3 = player.CharacterAdded:Connect(function(character_)
                task.wait(1)

                if tbl2.deathCounterESP then
                    DC_WatchCharacter(character_)
                end
            end)

            charAddedConn = connection3
            table.insert(DC_Connections, charAddedConn)
        end)

        playerAddedConn = connection3
        table.insert(DC_Connections, playerAddedConn)

        local connection4 = game:GetService("Players").PlayerRemoving:Connect(function(player)
            DC_RemoveHighlight(player)
        end)

        playerRemovingConn = connection4
        table.insert(DC_Connections, playerRemovingConn)
    end

    stopDeathCounterESP = function()
        for k, v4 in pairs(DC_Connections) do
            pcall(function()
                v4:Disconnect()
            end)
        end

        DC_Connections = {}

        for k in pairs(DC_Highlights) do
            DC_RemoveHighlight(k)
        end
    end

    local hitboxAbuse = tbl4.HitboxAbuse

    hitboxAbuse:Paragraph({
        Title = "Hitbox Abuse (W.I.P)",
        Desc = "Side M1[THIS ONLY WORKS FOR PC FOR NOW!]",
        Image = "geist:box",
        ImageSize = 20,
        Color = Color3.fromHex("#26067e"),
    })

    local tbl10 = {
        Enabled = false,
        Angle = 45,
        Duration = 50,
        Delay = 0,
        SilentLock = false,
        simpleShowHitbox = false,
    }

    local tbl11 = {}

    local function fn22(arg)
        local character_ = localPlayer.Character
        if not character_ then
            return
        end
        local humanoidRootPart_ = character_:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart_ then
            return
        end
        local humanoid_2 = character_:FindFirstChildOfClass("Humanoid")
        local autoRotate = humanoid_2 and humanoid_2.AutoRotate

        if humanoid_2 then
            humanoid_2.AutoRotate = false
        end

        humanoidRootPart_.CFrame = humanoidRootPart_.CFrame * CFrame.Angles(0, math.rad(arg), 0)
        local position = currentCamera and currentCamera.CFrame.Position or humanoidRootPart_.Position + Vector3.new(0, 5, 0)
        local y = position.Y
        local n_ = position - humanoidRootPart_.Position
        local vector = Vector3.new(n_.X, 0, n_.Z)
        local n_2 = CFrame.fromAxisAngle(Vector3.yAxis, math.rad(arg)) * vector
        local n_3 = humanoidRootPart_.Position + n_2

        if currentCamera and currentCamera:IsA("Camera") then
            currentCamera.CFrame = CFrame.lookAt(Vector3.new(n_3.X, y, n_3.Z), humanoidRootPart_.Position)
        end

        if humanoid_2 then
            task.delay(tbl10.Duration / 1000, function()
                if humanoid_2 and humanoid_2.Parent then
                    humanoid_2.AutoRotate = autoRotate
                end
            end)
        end
    end

    local function fn23()
        task.delay(tbl10.Duration / 1000, function()
            fn22(-tbl10.Angle)
        end)
    end

    local function fn24()
        local character_ = localPlayer.Character
        if not character_ then
            return
        end
        local humanoidRootPart_ = character_:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart_ then
            return
        end
        local humanoid_2 = character_:FindFirstChildOfClass("Humanoid")
        local autoRotate = humanoid_2 and humanoid_2.AutoRotate

        if humanoid_2 then
            humanoid_2.AutoRotate = false
        end

        humanoidRootPart_.CFrame = humanoidRootPart_.CFrame * CFrame.Angles(0, math.rad(tbl10.Angle), 0)

        if humanoid_2 then
            task.delay(tbl10.Duration / 1000, function()
                if humanoid_2 and humanoid_2.Parent then
                    humanoid_2.AutoRotate = autoRotate
                    humanoidRootPart_.CFrame = humanoidRootPart_.CFrame * CFrame.Angles(0, math.rad(-tbl10.Angle), 0)
                end
            end)
        end
    end

    local function fn25()
        if tbl11.InputHandler then
            tbl11.InputHandler:Disconnect()
            tbl11.InputHandler = nil
        end

        if tbl10.Enabled then
            tbl11.InputHandler = UserInputService.InputBegan:Connect(function(input, gameProcessed)
                if not tbl10.Enabled or gameProcessed then
                    return
                end

                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    task.wait(tbl10.Delay / 1000)

                    if tbl10.SilentLock then
                        fn24()
                    else
                        fn22(tbl10.Angle)
                        fn23()
                    end
                end
            end)
        end
    end

    local tbl12 = {
        hitboxPart = nil,
        selectionBox = nil,
        offsetCFrame = nil,
        renderSteppedConn = nil,
    }

    local hitboxColor = tbl10.hitboxColor
    local color = hitboxColor or Color3.fromRGB(255, 0, 0)
    tbl10.hitboxColor = color

    local function fn26()
        if tbl12.renderSteppedConn then
            tbl12.renderSteppedConn:Disconnect()
            tbl12.renderSteppedConn = nil
        end

        if tbl12.selectionBox then
            tbl12.selectionBox:Destroy()
            tbl12.selectionBox = nil
        end

        if tbl12.hitboxPart then
            tbl12.hitboxPart:Destroy()
            tbl12.hitboxPart = nil
        end

        tbl12.offsetCFrame = nil
        if not tbl10.simpleShowHitbox then
            return
        end
        local localPlayer2 = Players.LocalPlayer
        if not localPlayer2 then
            return
        end
        local character_ = localPlayer2.Character
        local result = character_ or localPlayer2.CharacterAdded:Wait()
        if not result:WaitForChild("HumanoidRootPart", 5) then
            return
        end
        local part = Instance.new("Part")
        part.Name = "ScriptSimpleHitboxVisual_HitboxAbuse"
        part.Size = Vector3.new(8, 5, 8)
        part.Transparency = 1
        part.Anchored = true
        part.CanCollide = false
        part.Parent = workspace
        tbl12.hitboxPart = part
        local selectionBox = Instance.new("SelectionBox")
        selectionBox.Name = "ScriptSimpleHitboxVisual_Outline"
        selectionBox.Adornee = part
        selectionBox.LineThickness = 0.05
        local hitboxColor2 = tbl10.hitboxColor
        local color2 = hitboxColor2 or Color3.fromRGB(255, 0, 0)
        selectionBox.Color3 = color2
        selectionBox.Transparency = 0.5
        selectionBox.Parent = part
        tbl12.selectionBox = selectionBox
        tbl12.offsetCFrame = CFrame.new(0, 0, -(part.Size.Z / 2 - 1))

        tbl12.renderSteppedConn = RunService.RenderStepped:Connect(function()
            local character_2 = localPlayer2.Character
            local humanoidRootPart_ = character_2 and character_2:FindFirstChild("HumanoidRootPart")

            if tbl10.simpleShowHitbox and humanoidRootPart_ and humanoidRootPart_.Parent and tbl12.hitboxPart and tbl12.hitboxPart.Parent then
                if tbl12.hitboxPart and tbl12.offsetCFrame then
                    tbl12.hitboxPart.CFrame = humanoidRootPart_.CFrame * tbl12.offsetCFrame
                end

                if tbl12.selectionBox and tbl12.selectionBox.Color3 ~= tbl10.hitboxColor then
                    tbl12.selectionBox.Color3 = tbl10.hitboxColor
                end

                return
            end

            if tbl12.renderSteppedConn then
                tbl12.renderSteppedConn:Disconnect()
                tbl12.renderSteppedConn = nil
            end

            if tbl12.selectionBox then
                tbl12.selectionBox:Destroy()
                tbl12.selectionBox = nil
            end

            if tbl12.hitboxPart then
                tbl12.hitboxPart:Destroy()
                tbl12.hitboxPart = nil
            end

            tbl12.offsetCFrame = nil
        end)
    end

    hitboxAbuse:Toggle({
        Title = "Enable ",
        Flag = "Save7",
        Value = tbl10.Enabled,
        Callback = function(enabled)
            tbl10.Enabled = enabled
            fn25()
        end,
    })

    hitboxAbuse:Toggle({
        Title = "Silent Lock",
        Flag = "Save8",
        Value = tbl10.SilentLock,
        Callback = function(silentLock)
            tbl10.SilentLock = silentLock
        end,
    })

    tbl4.HitboxAbuse:Toggle({
        Title = "Simple Show Hitbox",
        Flag = "Save9",
        Value = tbl10.simpleShowHitbox,
        Callback = function(simpleShowHitbox)
            tbl10.simpleShowHitbox = simpleShowHitbox
            fn26()
        end,
    })

    local hitboxAbuse2 = tbl4.HitboxAbuse
    local colorpicker = hitboxAbuse2.Colorpicker

    local tbl13 = {
        Title = "Hitbox Color",
        Desc = "Pick a color for the hitbox outline",
    }

    local hitboxColor2 = tbl10.hitboxColor
    local color2 = hitboxColor2 or Color3.fromRGB(255, 0, 0)
    tbl13.Default = color2
    tbl13.Transparency = 0
    tbl13.Locked = false

    tbl13.Callback = function(arg)
        local color3 = type(arg) == "table" and arg.Color or arg
        tbl10.hitboxColor = color3

        if tbl12.selectionBox then
            tbl12.selectionBox.Color3 = color3
        end
    end

    colorpicker(hitboxAbuse2, tbl13)

    hitboxAbuse:Slider({
        Flag = "Save10",
        Title = "Angle (degrees)",
        Value = {Min = 0, Max = 180, Default = tbl10.Angle},
        Callback = function(angle_)
            tbl10.Angle = angle_
        end,
    })

    hitboxAbuse:Slider({
        Title = "Duration (ms)",
        Flag = "Save11",
        Value = {Min = 10, Max = 500, Default = tbl10.Duration},
        Callback = function(duration_)
            tbl10.Duration = duration_
        end,
    })

    hitboxAbuse:Slider({
        Title = "Delay (ms)",
        Flag = "Save12",
        Value = {Min = 0, Max = 200, Default = tbl10.Delay},
        Callback = function(delay_)
            tbl10.Delay = delay_
        end,
    })

    fn14 = function(arg)
        local currentCamera2 = workspace.CurrentCamera
        currentCamera2.CFrame = currentCamera2.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, arg / 100, 0, 0, 0, 1)
    end

    connection = nil

    fn15 = function()
        if connection then
            connection:Disconnect()
            connection = nil
        end

        if tbl2.stretchScreenValue ~= 100 then
            connection = RunService.RenderStepped:Connect(function()
                fn14(tbl2.stretchScreenValue)
            end)
        end
    end

    fn16 = function()
        if tbl3.respawnAtDeath then
            tbl3.respawnAtDeath:Disconnect()
            tbl3.respawnAtDeath = nil
        end

        if not tbl2.respawnAtDeath then
            return
        end
        getgenv().RespawnAtDeathPos = true
        getgenv()._LastDeathPosition = nil

        local function fn27()
            local character_ = localPlayer.Character
            local result = character_ or localPlayer.CharacterAdded:Wait()
            local humanoid_2 = result:FindFirstChildOfClass("Humanoid")
            local humanoidRootPart_ = result:FindFirstChild("HumanoidRootPart")

            if humanoid_2 and humanoidRootPart_ then
                tbl3.diedConn = humanoid_2.Died:Connect(function()
                    if tbl2.respawnAtDeath then
                        getgenv()._LastDeathPosition = humanoidRootPart_.Position
                    end
                end)
            end
        end

        tbl3.respawnAtDeath = localPlayer.CharacterAdded:Connect(function(character_)
            if not tbl2.respawnAtDeath then
                return
            end
            local lastDeathPosition = getgenv()._LastDeathPosition

            if lastDeathPosition then
                local humanoidRootPart_ = character_:WaitForChild("HumanoidRootPart", 5)

                if humanoidRootPart_ then
                    humanoidRootPart_.CFrame = CFrame.new(lastDeathPosition + Vector3.new(0, 3, 0))
                end
            end

            getgenv()._LastDeathPosition = nil
            fn27()
        end)

        fn27()
    end

    connection2 = nil
    flag = false
    flag2 = false

    local function fn27(arg)
        local currentCamera2 = Workspace.CurrentCamera
        if not currentCamera2 then
            return
        end
        local n_ = currentCamera2.ViewportSize / 2
        VirtualInputManager:SendMouseButtonEvent(n_.X, n_.Y, 0, arg, game, 0)
    end

    holdForMs = function(arg)
        if flag then
            return
        end
        flag = true
        fn27(true)

        task.delay(arg / 1000, function()
            fn27(false)
            flag = false
        end)
    end

    isCharacterModel = function(arg)
        if not arg or arg == localPlayer.Character then
            return false
        end
        local humanoid_2 = arg:FindFirstChildOfClass("Humanoid")
        local humanoidRootPart_ = arg:FindFirstChild("HumanoidRootPart")
        local flag4 = humanoid_2 and humanoidRootPart_ and humanoid_2.Health > 0
        return flag4
    end

    predictedPositionFromHRP = function(arg, arg2)
        return arg.Position + arg.Velocity * (arg2 / 100)
    end

    predictedInsideBox = function(arg, arg2, arg3)
        if not arg2 then
            return false
        end
        local v4 = arg.CFrame:PointToObjectSpace(arg2)
        relative = v4
        local flag4 = relative.Z < 0 and math.abs(relative.X) <= arg3.X / 2 and math.abs(relative.Y) <= arg3.Y / 2 and math.abs(relative.Z) <= arg3.Z / 2
        return flag4
    end

    detectAnyTarget = function()
        char = localPlayer.Character
        local v4 = char
        local humanoidRootPart_ = v4 and char:FindFirstChild("HumanoidRootPart")
        hrp = humanoidRootPart_
        if not hrp then
            return false
        end
        range = tbl2.m1Range
        local vector = Vector3.new(4, 4, range)
        boxSize = vector
        local n_ = hrp.CFrame * CFrame.new(0, 0, -(range / 2))
        cf = n_
        local overlapParams = OverlapParams.new()
        overlapParams.FilterType = Enum.RaycastFilterType.Exclude
        overlapParams.FilterDescendantsInstances = {char}
        local partBoundsInBox = Workspace:GetPartBoundsInBox(cf, boxSize, overlapParams)
        local m1Pred = tbl2.m1Pred

        for i, v5 in ipairs(partBoundsInBox) do
            local model_ = v5:FindFirstAncestorOfClass("Model")
            if not isCharacterModel(model_) then
                continue
            end
            local humanoidRootPart_2 = model_:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart_2 then
                continue
            end
            local v6 = predictedPositionFromHRP(humanoidRootPart_2, m1Pred)
            if predictedInsideBox(hrp, v6, boxSize) then
                return true
            end
        end

        return false
    end

    local function fn28()
        if connection2 then
            connection2:Disconnect()
        end

        connection2 = RunService.Heartbeat:Connect(function()
            local v4 = detectAnyTarget()

            if v4 and not flag2 and not flag then
                flag2 = true
                holdForMs(tbl2.m1Hold)
            end

            if not v4 then
                flag2 = false
            end
        end)
    end

    local function fn29()
        if connection2 then
            connection2:Disconnect()
            connection2 = nil
        end

        flag2 = false
        flag = false
    end

    fn17 = function(arg)
        if arg then
            fn28()
        else
            fn29()
        end
    end

    local v4 = ESPObjects
    local tbl14 = v4 or {}
    ESPObjects = tbl14
    local v5 = espRenderConnection
    local v6 = v5 or nil
    espRenderConnection = v6
    Players = game:GetService("Players")
    RunService = game:GetService("RunService")
    Camera = workspace.CurrentCamera
    LocalPlayer = Players.LocalPlayer

    newDrawingSafe = function(arg, arg2)
        local ok_, result = pcall(function()
            return Drawing.new(arg)
        end)

        if not ok_ or not result then
            return nil
        end
        local v7 = pairs
        local tbl15 = arg2 or {}

        for k, v8 in v7(tbl15) do
            pcall(function()
                result[k] = v8
            end)
        end

        return result
    end

    createESPElements = function()
        local tbl15 = {
            Box = newDrawingSafe("Square", {Visible = false, Thickness = 1, Filled = false}),
            BoxOutline = newDrawingSafe("Square", {Visible = false, Thickness = 3, Filled = false}),
            Name = newDrawingSafe("Text", {
                Visible = false,
                Center = true,
                Outline = true,
                Size = 16,
                Font = 2,
            }),
            Tracer = newDrawingSafe("Line", {Visible = false, Thickness = 1}),
            HealthBar = newDrawingSafe("Line", {Visible = false, Thickness = 4}),
            Edges = {},
        }

        for i = 1, 12 do
            tbl15.Edges[i] = newDrawingSafe("Line", {Visible = false, Thickness = 1})
        end

        return tbl15
    end

    getRainbowColor = function(arg)
        return Color3.new(math.sin(2 * arg) * 0.5 + 0.5, math.sin(2 * arg + 2) * 0.5 + 0.5, math.sin(2 * arg + 4) * 0.5 + 0.5)
    end

    getWorldCorners = function(arg, arg2)
        local n_ = arg2 / 2
        local tbl15 = {}
        local n_2 = -3

        while true do
            local n_3 = n_2 + 2
            if n_3 > 1 then
                break
            end
            local v7 = n_3

            for i = -1, 1, 2 do
                for i2 = -1, 1, 2 do
                    table.insert(tbl15, arg * Vector3.new(n_.X * n_3, n_.Y * i, n_.Z * i2))
                end
            end

            n_2 = v7
        end

        return tbl15
    end

    hideAll = function(arg)
        if not arg then
            return
        end

        if arg.Box then
            pcall(function()
                arg.Box.Visible = false
            end)
        end

        if arg.BoxOutline then
            pcall(function()
                arg.BoxOutline.Visible = false
            end)
        end

        if arg.Name then
            pcall(function()
                arg.Name.Visible = false
            end)
        end

        if arg.Tracer then
            pcall(function()
                arg.Tracer.Visible = false
            end)
        end

        if arg.HealthBar then
            pcall(function()
                arg.HealthBar.Visible = false
            end)
        end

        if arg.Edges then
            for i, edge in ipairs(arg.Edges) do
                if edge then
                    pcall(function()
                        edge.Visible = false
                    end)
                end
            end
        end
    end

    removePlayerDrawings = function(arg)
        local v7 = ESPObjects[arg]
        if not v7 then
            return
        end
        local v8, v9, v10 = pairs(v7)
        local v11 = v10
        local v12 = v8
        local v13 = v9

        while true do
            local v14, v15 = v12(v13, v11)
            if v14 == nil then
                break
            end
            v11 = v14

            if type(v15) == "table" then
                for k, v16 in pairs(v15) do
                    if v16 and v16.Remove then
                        pcall(function()
                            v16:Remove()
                        end)
                    end
                end

                v11 = v14
            elseif v15 and v15.Remove then
                pcall(function()
                    v15:Remove()
                end)
            end
        end

        ESPObjects[arg] = nil
    end

    edgePairs = {
        {1, 2},
        {2, 4},
        {4, 3},
        {3, 1},
        {5, 6},
        {6, 8},
        {8, 7},
        {7, 5},
        {1, 5},
        {2, 6},
        {3, 7},
        {4, 8},
    }

    renderESP = function()
        if tbl2 and tbl2.espEnabled then
            local now = tick()
            local espColor = tbl2.espColor
            local v7 = espColor or getRainbowColor(now)
            local vector2 = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
            local v8, v9, v10 = ipairs(Players:GetPlayers())
            local v11 = v10
            local v12 = v8
            local v13 = v9

            while true do
                local v14, v15 = v12(v13, v11)
                if v14 == nil then
                    break
                end
                v11 = v14

                if v15 ~= LocalPlayer then
                    local character_ = v15.Character
                    local humanoid_2 = character_ and character_:FindFirstChildOfClass("Humanoid")

                    if character_ and humanoid_2 and humanoid_2.Health > 0 then
                        local ok_, result, result2 = pcall(function()
                            return character_:GetBoundingBox()
                        end)

                        if ok_ and result and result2 then
                            local tbl15 = {}
                            local flag4 = true
                            local v16 = getWorldCorners(result, result2)

                            for i, v17 in ipairs(v16) do
                                local v18, v19 = Camera:WorldToViewportPoint(v17)

                                if not v19 then
                                    flag4 = false
                                end

                                tbl15[i] = Vector2.new(v18.X, v18.Y)
                            end

                            local v17 = v12
                            local v18 = v13
                            v11 = v14
                            v12 = v17
                            v13 = v18
                            local v19 = ESPObjects[v15]
                            local v20 = v19 or createESPElements()
                            ESPObjects[v15] = v20

                            if flag4 then
                                local huge = math.huge
                                local huge2 = math.huge
                                local n_ = -math.huge
                                local n_2 = -math.huge

                                for i, v21 in ipairs(tbl15) do
                                    huge = math.min(huge, v21.X)
                                    huge2 = math.min(huge2, v21.Y)
                                    n_ = math.max(n_, v21.X)
                                    n_2 = math.max(n_2, v21.Y)
                                end

                                local n_3 = n_ - huge
                                local n_4 = n_2 - huge2
                                local n_5 = n_3 * 0.7
                                local n_6 = huge + (n_3 - n_5) / 2
                                local clamp_ = math.clamp
                                local health = humanoid_2.Health
                                local maxHealth = humanoid_2.MaxHealth
                                local n_7 = maxHealth or 100
                                local v21 = clamp_(health / n_7, 0, 1)
                                local color3 = v7

                                if tbl2.espColor == nil then
                                    if v21 > 0.7 then
                                        color3 = Color3.fromRGB(0, 255, 0)
                                    elseif v21 > 0.3 then
                                        color3 = Color3.fromRGB(255, 165, 0)
                                    else
                                        color3 = Color3.fromRGB(255, 0, 0)
                                    end
                                end

                                if tbl2.espShowBoxes and tbl2.espShapeMode ~= "3D" then
                                    if v20.Box then
                                        v20.Box.Visible = true
                                        v20.Box.Position = Vector2.new(n_6, huge2)
                                        v20.Box.Size = Vector2.new(n_5, n_4)
                                        v20.Box.Color = color3
                                    end
                                elseif v20.Box then
                                    v20.Box.Visible = false
                                end

                                if tbl2.espShapeMode == "Outlines" and tbl2.espShowBoxes then
                                    if v20.BoxOutline then
                                        v20.BoxOutline.Visible = true
                                        v20.BoxOutline.Position = Vector2.new(n_6 - 1, huge2 - 1)
                                        v20.BoxOutline.Size = Vector2.new(n_5 + 2, n_4 + 2)
                                        v20.BoxOutline.Color = Color3.new(0, 0, 0)
                                    end

                                    if v20.Box then
                                        v20.Box.Visible = true
                                        v20.Box.Position = Vector2.new(n_6, huge2)
                                        v20.Box.Size = Vector2.new(n_5, n_4)
                                        v20.Box.Color = color3
                                    end
                                elseif v20.BoxOutline then
                                    v20.BoxOutline.Visible = false
                                end

                                if tbl2.espShowNames then
                                    v20.Name.Visible = true
                                    v20.Name.Text = v15.Name
                                    v20.Name.Position = Vector2.new(n_6 + n_5 / 2, huge2 - 18)
                                    v20.Name.Color = color3
                                else
                                    v20.Name.Visible = false
                                end

                                if tbl2.espShowTracers then
                                    v20.Tracer.Visible = true
                                    v20.Tracer.From = vector2
                                    v20.Tracer.To = Vector2.new(n_6 + n_5 / 2, n_2)
                                    v20.Tracer.Color = color3
                                else
                                    v20.Tracer.Visible = false
                                end

                                if tbl2.espShowHealth then
                                    v20.HealthBar.Visible = true
                                    v20.HealthBar.From = Vector2.new(n_6 - 6, n_2)
                                    v20.HealthBar.To = Vector2.new(n_6 - 6, n_2 - n_4 * v21)
                                    v20.HealthBar.Color = color3
                                else
                                    v20.HealthBar.Visible = false
                                end

                                if tbl2.espShapeMode == "3D" then
                                    for i, v22 in ipairs(edgePairs) do
                                        local v23 = tbl15[v22[1]]
                                        local v24 = tbl15[v22[2]]
                                        local v25 = v20.Edges[i]

                                        if v23 and v24 and v25 then
                                            v25.Visible = true
                                            v25.From = v23
                                            v25.To = v24
                                            v25.Color = color3
                                        end
                                    end

                                    v11 = v14
                                    v12 = v17
                                    v13 = v18

                                    if v20.Box then
                                        v20.Box.Visible = false
                                    end

                                    if v20.BoxOutline then
                                        v20.BoxOutline.Visible = false
                                    end
                                else
                                    for i, edge in ipairs(v20.Edges) do
                                        if edge then
                                            edge.Visible = false
                                        end
                                    end

                                    v11 = v14
                                    v12 = v17
                                    v13 = v18
                                end
                            else
                                hideAll(v20)
                            end
                        elseif ESPObjects[v15] then
                            hideAll(ESPObjects[v15])
                        end
                    elseif ESPObjects[v15] then
                        hideAll(ESPObjects[v15])
                    end
                end
            end

            return
        end

        for k, v7 in pairs(ESPObjects) do
            hideAll(v7)
        end
    end

    StartESP = function()
        if espRenderConnection then
            return
        end
        local connection3 = RunService.RenderStepped:Connect(renderESP)
        espRenderConnection = connection3
    end

    StopESP = function()
        if espRenderConnection then
            pcall(function()
                espRenderConnection:Disconnect()
            end)

            espRenderConnection = nil
        end

        for k, v7 in pairs(ESPObjects) do
            hideAll(v7)
        end
    end

    Players.PlayerRemoving:Connect(function(player)
        removePlayerDrawings(player)
    end)

    Players.PlayerAdded:Connect(function(player)
        player.CharacterAdded:Connect(function(character_)
            wait(0.1)
        end)
    end)

    if tbl2 and tbl2.espEnabled then
        StartESP()
    else
        StopESP()
    end

    local v7 = _G
    local espUtility = _G.__ESP_Utility
    local espUtility2 = espUtility or {}
    v7.__ESP_Utility = espUtility2
    _G.__ESP_Utility.Start = StartESP
    _G.__ESP_Utility.Stop = StopESP

    fn18 = function()
        if not tbl2.fpsBoost then
            return
        end
        local Lighting = game:GetService("Lighting")
        local Players2 = game:GetService("Players")
        game:GetService("UserInputService")
        local localPlayer2 = Players2.LocalPlayer
        local map = workspace.Map

        if map:FindFirstChild("GrassBottom") then
            map.GrassBottom:Destroy()
        end

        if map:FindFirstChild("GrassTop") then
            map.GrassTop:Destroy()
        end

        if map:FindFirstChild("Grass") then
            map.Grass:Destroy()
        end

        if map:FindFirstChild("Trash") then
            map.Trash:Destroy()
        end

        if map:FindFirstChild("Trees") then
            map.Trees:Destroy()
        end

        if map:FindFirstChild("Walls") then
            map.Walls:Destroy()
        end

        if map:FindFirstChild("GrassTop") then
            map.GrassTop:Destroy()
        end

        if map:FindFirstChild("Grass") then
            map.Grass:Destroy()
        end

        if map:FindFirstChild("Total Kills Leaderboard") then
            map["Total Kills Leaderboard"]:Destroy()
        end

        if map:FindFirstChild("Total Kills Leaderboard Real") then
            map["Total Kills Leaderboard Real"]:Destroy()
        end

        if map:FindFirstChild("Benchs") then
            map.Benchs:Destroy()
        end

        for k, descendant in pairs(workspace:GetDescendants()) do
            if descendant:IsA("BasePart") then
                descendant.CastShadow = false
            end
        end

        if workspace:FindFirstChild("Thrown") then
            for k, child in pairs(workspace.Thrown:GetChildren()) do
                if child.Name ~= "Aurora" and child.Name ~= "Donation Leaderboard" then
                    child:Destroy()
                end
            end

            if workspace.Thrown:FindFirstChild("Donation Leaderboard") then
                workspace.Thrown["Donation Leaderboard"]:Destroy()
            end
        end

        pcall(function()
            settings().Rendering.QualityLevel = 1
        end)

        pcall(function()
            settings().Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level01
        end)

        pcall(function()
            settings().Physics.ThrottleAdjustTime = 5
        end)

        Lighting.FogEnd = 1000000
        Lighting.FogStart = 1000000
        Lighting.FogColor = Color3.new(0, 0, 0)
        Lighting.GlobalShadows = false
        Lighting.Brightness = 2
        Lighting.ClockTime = 12
        Lighting.EnvironmentDiffuseScale = 0
        Lighting.EnvironmentSpecularScale = 0
        Lighting.OutdoorAmbient = Color3.new(0.5, 0.5, 0.5)

        for i, descendant in ipairs(workspace:GetDescendants()) do
            if descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") or descendant:IsA("Fire") or descendant:IsA("Smoke") or descendant:IsA("Sparkles") then
                pcall(function()
                    descendant:Destroy()
                end)
            end

            if descendant:IsA("Part") or descendant:IsA("MeshPart") or descendant:IsA("UnionOperation") then
                descendant.Material = Enum.Material.SmoothPlastic
                descendant.Reflectance = 0
                descendant.CastShadow = false
            end

            if descendant:IsA("Decal") or descendant:IsA("Texture") or descendant:IsA("SurfaceGui") then
                pcall(function()
                    descendant:Destroy()
                end)
            end

            if descendant:IsA("Light") then
                pcall(function()
                    descendant:Destroy()
                end)
            end
        end

        if workspace:FindFirstChildOfClass("Terrain") then
            workspace.Terrain.Decoration = false
            workspace.Terrain.WaterWaveSize = 0
            workspace.Terrain.WaterWaveSpeed = 0
            workspace.Terrain.WaterReflectance = 0
            workspace.Terrain.WaterTransparency = 1
        end

        local genv = getgenv()
        local settings_ = getgenv().Settings
        local settings_2 = settings_ or {}
        genv.Settings = settings_2
        local v8 = Settings
        local limb = Settings.Limb
        local limb2 = limb or {}
        v8.Limb = limb2
        local limb3 = Settings.Limb
        local arms = Settings.Limb.Arms == nil and true or Settings.Limb.Arms
        limb3.Arms = arms
        local limb4 = Settings.Limb
        local legs = Settings.Limb.Legs == nil and true or Settings.Limb.Legs
        limb4.Legs = legs
        local v9 = Settings
        local shiftlock = Settings.Shiftlock == nil and true or Settings.Shiftlock
        v9.Shiftlock = shiftlock

        if not getgenv().executed then
            local function fn30(arg)
                if not arg then
                    return
                end

                local ok_, result = pcall(function()
                    return arg.Character
                end)

                if ok_ and result then
                    local humanoid_2 = result:FindFirstChildOfClass("Humanoid")

                    if humanoid_2 then
                        pcall(function()
                            humanoid_2.Health = 0
                        end)

                        task.wait(0.15)

                        if arg.Character == result then
                            pcall(function()
                                arg:LoadCharacter()
                            end)
                        end
                    else
                        pcall(function()
                            arg:LoadCharacter()
                        end)
                    end

                    return
                end

                pcall(function()
                    arg:LoadCharacter()
                end)
            end

            local v10 = nil

            v10 = hookmetamethod(game, "__namecall", function(arg, ...)
                local v11 = getnamecallmethod()
                local tbl15 = {...}

                local ok_, result = pcall(function()
                    local name = arg and arg.Name
                    return name
                end)

                if ok_ and result == "Communicate" and v11 == "FireServer" and type(tbl15[1]) == "table" and tbl15[1].Goal == "Reset" then
                    task.spawn(function()
                        fn30(localPlayer2)
                    end)
                end

                return v10(arg, ...)
            end)

            local v11 = nil

            v11 = hookmetamethod(game, "__newindex", function(arg, arg2, arg3)
                local ok_, result = pcall(function()
                    return arg2
                end)

                if ok_ and result == "Parent" then
                    local ok_2 = pcall(function()
                        return arg:IsA("ParticleEmitter")
                    end)

                    local isParticleEmitter = ok_2 and arg:IsA("ParticleEmitter")

                    if arg3 == workspace:FindFirstChild("Thrown") or isParticleEmitter then
                        pcall(function()
                            arg:Destroy()
                        end)

                        return nil
                    end
                end

                return v11(arg, arg2, arg3)
            end)

            if workspace:FindFirstChild("Thrown") then
                workspace.Thrown.ChildAdded:Connect(function(child)
                    task.wait()

                    pcall(function()
                        child:Destroy()
                    end)
                end)
            end

            local function fn31(arg)
                if not arg or not arg.Parent then
                    return
                end
                local humanoidRootPart_ = arg:FindFirstChild("HumanoidRootPart")
                if not humanoidRootPart_ then
                    return
                end

                humanoidRootPart_.ChildAdded:Connect(function(child)
                    local flag4 = (not child or child.Name ~= "dodgevelocity") and child and (child.Name == "moveme" or child.Name == "Sound")
                end)
            end

            local function fn32()
                local character_ = localPlayer2.Character
                local result = character_ or localPlayer2.CharacterAdded:Wait()

                if result:WaitForChild("HumanoidRootPart", 5) then
                    fn31(result)
                end
            end

            if localPlayer2.Character then
                task.spawn(fn32)
            end

            localPlayer2.CharacterAdded:Connect(function()
                task.wait(0.1)
                pcall(fn32)
            end)

            getgenv().executed = true
        end

        workspace.DescendantAdded:Connect(function(descendant)
            if descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") or descendant:IsA("Fire") or descendant:IsA("Smoke") or descendant:IsA("Sparkles") then
                pcall(function()
                    descendant:Destroy()
                end)
            end

            if descendant:IsA("Part") or descendant:IsA("MeshPart") or descendant:IsA("UnionOperation") then
                descendant.Material = Enum.Material.SmoothPlastic
                descendant.Reflectance = 0
                descendant.CastShadow = false
            end

            if descendant:IsA("Decal") or descendant:IsA("Texture") then
                pcall(function()
                    descendant:Destroy()
                end)
            end
        end)
    end

    local tbl15 = {}
    local Players2 = Players or game:GetService("Players")
    Players = Players2
    local RunService2 = RunService or game:GetService("RunService")
    RunService = RunService2
    local Workspace2 = Workspace or game:GetService("Workspace")
    Workspace = Workspace2
    local localPlayer2 = localPlayer or Players.LocalPlayer
    localPlayer = localPlayer2
    local v8 = tspeed
    local n_ = v8 or 0.1
    tspeed = n_
    local v9 = tpwalking
    local flag4 = v9 or false
    tpwalking = flag4
    local v10 = character
    local character_ = v10 or localPlayer.Character
    character = character_
    local v11 = humanoid
    local humanoid_2 = v11

    if not v11 then
        local v12 = character
        humanoid_2 = v12 and character:FindFirstChildOfClass("Humanoid")
    end

    humanoid = humanoid_2
    local v12 = humanoidRootPart
    local humanoidRootPart_ = v12

    if not v12 then
        local v13 = character
        humanoidRootPart_ = v13 and character:FindFirstChild("HumanoidRootPart")
    end

    humanoidRootPart = humanoidRootPart_
    local v13 = Teleports
    local v14 = v13

    if not v13 then
        local tbl16 = {}
        v14 = tbl16
        tbl16.Middle = CFrame.new(148, 441, 27)
        tbl16.AtomicRoom = CFrame.new(1079, 155, 23003)
        tbl16.DeathCounter = CFrame.new(-92, 29, 20347)
        tbl16.Baseplate = CFrame.new(968, 20, 23088)
        tbl16.Mountain1 = CFrame.new(266, 699, 458)
        tbl16.Mountain2 = CFrame.new(551, 630, -265)
        tbl16.Mountain3 = CFrame.new(-107, 642, -328)
    end

    Teleports = v14

    localPlayer.CharacterAdded:Connect(function(character_2)
        character = character_2
        local humanoid_3 = character_2:WaitForChild("Humanoid")
        humanoid = humanoid_3
        local humanoidRootPart_2 = character_2:WaitForChild("HumanoidRootPart")
        humanoidRootPart = humanoidRootPart_2
    end)

    TeleportTo = function(arg)
        if humanoidRootPart and Teleports[arg] then
            humanoidRootPart.CFrame = Teleports[arg]
        end
    end

    RunService.Heartbeat:Connect(function()
        if not humanoid or not humanoidRootPart then
            local character_2 = localPlayer.Character

            if character_2 then
                local v15 = humanoid
                local humanoid_3 = v15 or character_2:FindFirstChildOfClass("Humanoid")
                humanoid = humanoid_3
                local v16 = humanoidRootPart
                local humanoidRootPart_2 = v16 or character_2:FindFirstChild("HumanoidRootPart")
                humanoidRootPart = humanoidRootPart_2
            end
        end

        local speedBoost = tpwalking
        local speedValue = tspeed

        if tbl2 then
            if tbl2.speedBoost ~= nil then
                speedBoost = tbl2.speedBoost
            end

            if tbl2.speedValue ~= nil then
                speedValue = tbl2.speedValue
            end
        end

        if speedBoost and humanoid and humanoidRootPart and humanoid.MoveDirection and humanoid.MoveDirection.Magnitude > 0 and speedValue then
            humanoidRootPart.CFrame = humanoidRootPart.CFrame + humanoid.MoveDirection * speedValue
        end

        if humanoid then
            if tbl2 and tbl2.jumpBoost ~= nil then
                local v15 = humanoid
                local useJumpPower

                if tbl2.jumpBoost then
                    useJumpPower = false
                else
                    useJumpPower = true
                end

                v15.UseJumpPower = useJumpPower
            end

            if tbl2 and tbl2.jumpValue ~= nil then
                humanoid.JumpHeight = tbl2.jumpValue
            end
        end

        if tbl2 and tbl2.gravityValue ~= nil then
            Workspace.Gravity = tbl2.gravityValue
        end

        if Workspace.CurrentCamera and tbl2 and tbl2.fovValue ~= nil then
            Workspace.CurrentCamera.FieldOfView = tbl2.fovValue
        end

        if tbl2 then
            local v15 = Workspace
            local setAttribute = v15.SetAttribute
            local flag5 = tbl2.noDashCooldown == true
            setAttribute(v15, "NoDashCooldown", flag5)
            local v16 = Workspace
            local setAttribute2 = v16.SetAttribute
            local flag6 = tbl2.noFatigue == true
            setAttribute2(v16, "NoFatigue", flag6)
            local v17 = localPlayer
            local setAttribute3 = v17.SetAttribute
            local flag7 = tbl2.emotesExtraSlots == true
            setAttribute3(v17, "ExtraSlots", flag7)
            local v18 = localPlayer
            local setAttribute4 = v18.SetAttribute
            local flag8 = tbl2.emotesSearchBar == true
            setAttribute4(v18, "EmoteSearchBar", flag8)
        else
            Workspace:SetAttribute("NoDashCooldown", Workspace:GetAttribute("NoDashCooldown"))
            Workspace:SetAttribute("NoFatigue", Workspace:GetAttribute("NoFatigue"))
        end
    end)

    dashclipActiveConnections = {}
    dashclipConnectedHumanoids = {}
    dashclipOriginalCanCollide = {}
    dashclipNoclipToken = 0
    dashclipInitialized = false

    dashclipSafeDisconnect = function(arg)
        if not arg then
            return
        end

        pcall(function()
            if type(arg.Disconnect) == "function" then
                arg:Disconnect()
            elseif type(arg.disconnect) == "function" then
                arg:disconnect()
            end
        end)
    end

    dashclipDisconnectAll = function()
        for i, v15 in ipairs(dashclipActiveConnections) do
            dashclipSafeDisconnect(v15)
        end

        dashclipActiveConnections = {}
        dashclipConnectedHumanoids = {}
    end

    dashclipStoreConnection = function(arg)
        if not arg then
            return
        end
        table.insert(dashclipActiveConnections, arg)
        return arg
    end

    dashclipEnableNoclip = function()
        if tbl2.dashclipUnloaded then
            return
        end

        if tbl2.dashclipActive then
            return
        end
        tbl2.dashclipActive = true
        local v15, v16, v17 = ipairs(Workspace:GetDescendants())
        local v18 = v17
        local v19 = v15
        local v20 = v16

        while true do
            local v21, v22 = v19(v20, v18)
            if v21 == nil then
                break
            end
            v18 = v21

            if v22:IsA("Model") then
                local humanoid_3 = nil

                if pcall(function()
                    return v22:FindFirstChildOfClass("Humanoid")
                end) then
                    humanoid_3 = v22:FindFirstChildOfClass("Humanoid")
                end

                if humanoid_3 then
                    for i, descendant in ipairs(v22:GetDescendants()) do
                        if descendant:IsA("BasePart") then
                            if dashclipOriginalCanCollide[descendant] == nil then
                                pcall(function()
                                    dashclipOriginalCanCollide[descendant] = descendant.CanCollide
                                end)
                            end

                            pcall(function()
                                descendant.CanCollide = false
                            end)
                        end
                    end

                    v18 = v21
                end
            elseif v22:IsA("BasePart") then
                local model_ = v22:FindFirstAncestorOfClass("Model")

                if model_ and model_:FindFirstChildOfClass("Humanoid") then
                    if dashclipOriginalCanCollide[v22] == nil then
                        pcall(function()
                            dashclipOriginalCanCollide[v22] = v22.CanCollide
                        end)
                    end

                    pcall(function()
                        v22.CanCollide = false
                    end)
                end
            end
        end
    end

    dashclipDisableNoclip = function()
        for k, v15 in pairs(dashclipOriginalCanCollide) do
            if k and k.Parent then
                pcall(function()
                    k.CanCollide = v15
                end)
            end
        end

        dashclipOriginalCanCollide = {}
        tbl2.dashclipActive = false
    end

    dashclipTriggerNoclipWithTimer = function()
        if tbl2.dashclipUnloaded or not tbl2.dashclipEnabled then
            return
        end
        dashclipEnableNoclip()
        dashclipNoclipToken = dashclipNoclipToken + 1
        local v15 = dashclipNoclipToken

        task.delay(tbl.dashclipEnableDuration, function()
            if tbl2.dashclipUnloaded then
                return
            end

            if v15 == dashclipNoclipToken then
                dashclipDisableNoclip()
            end
        end)
    end

    dashclipOnTargetAnimationDetected = function()
        if tbl2.dashclipUnloaded then
            return
        end

        if not tbl2.dashclipEnabled then
            return
        end
        dashclipTriggerNoclipWithTimer()
    end

    dashclipConnectToHumanoid = function(arg)
        if tbl2.dashclipUnloaded or not arg then
            return
        end

        if dashclipConnectedHumanoids[arg] then
            return
        end
        dashclipConnectedHumanoids[arg] = true

        local connection3 = arg.AnimationPlayed:Connect(function(arg2)
            if not arg2 then
                return
            end
            local match = nil

            pcall(function()
                local animation = arg2.Animation

                if animation and animation.AnimationId then
                    match = tostring(animation.AnimationId):match("%d+")
                end
            end)

            if match == tbl.dashclipTargetAnimationId then
                dashclipOnTargetAnimationDetected()
            end
        end)

        dashclipStoreConnection(connection3)

        local connection4 = arg.Died:Connect(function()
            dashclipConnectedHumanoids[arg] = nil
        end)

        dashclipStoreConnection(connection4)

        local connection5 = arg.AncestryChanged:Connect(function(child, parent)
            if not parent then
                dashclipConnectedHumanoids[arg] = nil
                dashclipSafeDisconnect(ancestryConn)
            end
        end)

        dashclipStoreConnection(connection5)
    end

    dashclipAggressiveScanAndConnect = function()
        if tbl2.dashclipUnloaded then
            return
        end

        for i, descendant in ipairs(Workspace:GetDescendants()) do
            if descendant:IsA("Humanoid") then
                pcall(dashclipConnectToHumanoid, descendant)
            end

            if descendant:IsA("Model") then
                local humanoid_3 = descendant:FindFirstChildOfClass("Humanoid")

                if humanoid_3 then
                    pcall(dashclipConnectToHumanoid, humanoid_3)
                end
            end
        end

        local v15, v16, v17 = ipairs(Workspace:GetChildren())
        local v18 = v17
        local v19 = v15
        local v20 = v16

        while true do
            local v21, v22 = v19(v20, v18)
            if v21 == nil then
                break
            end
            v18 = v21
            local str = tostring(v22.Name):lower()

            if str:find("live") or str:find("players") or str:find("files") then
                for i, descendant in ipairs(v22:GetDescendants()) do
                    if descendant:IsA("Humanoid") then
                        pcall(dashclipConnectToHumanoid, descendant)
                    elseif descendant:IsA("Model") then
                        local humanoid_3 = descendant:FindFirstChildOfClass("Humanoid")

                        if humanoid_3 then
                            pcall(dashclipConnectToHumanoid, humanoid_3)
                        end
                    end
                end

                v18 = v21
            end
        end
    end

    dashclipWatchForNewHumanoids = function()
        local connection3 = Workspace.DescendantAdded:Connect(function(descendant)
            if tbl2.dashclipUnloaded then
                return
            end

            if not descendant:IsA("Humanoid") then
                if descendant:IsA("Model") then
                    local humanoid_3 = descendant:FindFirstChildOfClass("Humanoid")
                    if humanoid_3 then
                        pcall(dashclipConnectToHumanoid, humanoid_3)
                        return
                    end

                    task.spawn(function()
                        local ok_, result = pcall(function()
                            return descendant:WaitForChild("Humanoid", 3)
                        end)

                        if ok_ and result then
                            pcall(dashclipConnectToHumanoid, result)
                        end
                    end)
                end

                return
            end

            pcall(dashclipConnectToHumanoid, descendant)
        end)

        dashclipStoreConnection(connection3)
    end

    dashclipStartPeriodicScan = function()
        local connection3 = nil
        local n_2 = 0

        connection3 = RunService.Heartbeat:Connect(function(deltaTime)
            if not tbl2.dashclipUnloaded then
                n_2 = n_2 + deltaTime

                if tbl.dashclipScanInterval <= n_2 then
                    n_2 = 0
                    dashclipAggressiveScanAndConnect()
                end

                return
            end

            dashclipSafeDisconnect(connection3)
        end)

        dashclipStoreConnection(connection3)
    end

    dashclipWatchLocalPlayerAnimations = function()
        local function fn30(arg)
            if not arg then
                return
            end
            task.wait(1)
            local humanoid_3 = arg:FindFirstChildOfClass("Humanoid")

            if humanoid_3 then
                pcall(dashclipConnectToHumanoid, humanoid_3)
            else
                task.spawn(function()
                    local ok_, result = pcall(function()
                        return arg:WaitForChild("Humanoid", 5)
                    end)

                    if ok_ and result then
                        pcall(dashclipConnectToHumanoid, result)
                    end
                end)
            end
        end

        if localPlayer.Character then
            pcall(fn30, localPlayer.Character)
        end

        dashclipStoreConnection(localPlayer.CharacterAdded:Connect(function(character_2)
            if tbl2.dashclipUnloaded then
                return
            end
            pcall(fn30, character_2)
        end))
    end

    dashclipSetupFeature = function()
        if tbl2.dashclipUnloaded then
            return
        end

        if not tbl2.dashclipEnabled then
            return
        end
        dashclipDisconnectAll()
        dashclipAggressiveScanAndConnect()
        dashclipWatchForNewHumanoids()
        dashclipStartPeriodicScan()
        dashclipWatchLocalPlayerAnimations()
        dashclipInitialized = true
    end

    dashclipUnload = function()
        tbl2.dashclipUnloaded = true
        tbl2.dashclipEnabled = false

        pcall(function()
            dashclipDisableNoclip()
        end)

        dashclipDisconnectAll()
        dashclipInitialized = false
    end

    task.spawn(function()
        task.wait(3)

        if tbl2.dashclipEnabled then
            dashclipSetupFeature()
        end
    end)

    localPlayer.CharacterAdded:Connect(function(character_2)
        task.wait(2)

        if tbl2.dashclipEnabled and not tbl2.dashclipUnloaded and not dashclipInitialized then
            dashclipSetupFeature()
        end
    end)

    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local TextChatService = game:GetService("TextChatService")
    local tbl16 = {}

    local tbl17 = {
        "EZ clap 💀",
        "Is your keyboard broken or what? ⌨️",
        "mommy wants counter",
        "counter if love men",
        "Simon says: touch some grass 🌱",
        "learn howtocounter",
        "L + ratio + ez + git gud",
        "Bro countered the wind 💀",
        "get rekt noob",
        "You must be new here 🐣",
        "Counter like the good boy you are",
        "why are you trying to dap me up 😭",
        "You call that *playing*? 😭",
        "never play this game again noob",
        "Is that the best your expensive gaming chair can do?",
        "Did you accidentally select the 'easy' mode for me?",
        "hi",
        "I wud say gud gme but u wud hav to know how to play d game first",
        "You fatherless 6 7 mom 💀",
        "Callmesentinal is 10x better than you 🙏",
        "go to steal a brairot newbie",
        "Yeah, ez… effort carrying that ego",
        "I’ve seen noobs do better 🐣",
        "my cat can play better than that",
        "get good",
        "ez",
        "L",
        "COUNTER IF YOU LIKE BIG MEN",
        "Mommy says POOKIE COUNTER!~",
        "Go back to training mode 🏋️",
        "Are you even trying? 🥱",
        "I’ve seen bots do more damage 🤖",
        "EZ like Sunday morning ☀️",
        "Simon says: stay in spawn 🚫",
        "Bro thinks it’s a tutorial 💀",
        "Go next, this one’s over 🫠",
        "simon says ur so bad i can't even say nothing to you",
        "even chro is better than you",
        "404: skill not found ⚠️",
    }

    local tbl18 = {
        ["12351854556"] = true,
        ["15311685628"] = true,
        ["78521642007560"] = true,
    }

    local function fn30(arg)
        if TextChatService and TextChatService.TextChannels and TextChatService.TextChannels:FindFirstChild("RBXGeneral") and pcall(function()
            TextChatService.TextChannels.RBXGeneral:SendAsync(arg)
        end) then
            return
        end
        local defaultChatSystemChatEvents = ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents")
        local sayMessageRequest = defaultChatSystemChatEvents and defaultChatSystemChatEvents:FindFirstChild("SayMessageRequest")

        if sayMessageRequest then
            pcall(function()
                sayMessageRequest:FireServer(arg, "All")
            end)
        end
    end

    local function fn31(arg, arg2)
        if not tbl2.counterToxic then
            return
        end

        if not arg.Animation or not arg.Animation.AnimationId then
            return
        end

        if not tbl18[tostring(arg.Animation.AnimationId):match("%d+")] then
            return
        end
        local parent = arg2.Parent
        local humanoidRootPart_2 = parent and parent:FindFirstChild("HumanoidRootPart")
        local character_2 = localPlayer.Character
        local humanoidRootPart_3 = character_2 and character_2:FindFirstChild("HumanoidRootPart")

        if humanoidRootPart_2 and humanoidRootPart_3 and (humanoidRootPart_2.Position - humanoidRootPart_3.Position).Magnitude <= 6 then
            fn30(tbl17[math.random(1, #tbl17)])
        end
    end

    local function fn32(arg)
        if tbl16[arg] then
            tbl16[arg]:Disconnect()
            tbl16[arg] = nil
        end

        if not tbl2.counterToxic then
            return
        end

        local connection3 = arg.AnimationPlayed:Connect(function(arg2)
            fn31(arg2, arg)
        end)

        tbl16[arg] = connection3
    end

    setupCounterToxic = function()
        for k, v15 in pairs(tbl16) do
            if v15.Connected then
                v15:Disconnect()
            end
        end

        tbl16 = {}
        if not tbl2.counterToxic then
            return
        end

        for i, player in ipairs(Players:GetPlayers()) do
            if player ~= localPlayer and player.Character then
                local humanoid_3 = player.Character:FindFirstChildOfClass("Humanoid")

                if humanoid_3 then
                    fn32(humanoid_3)
                end
            end

            player.CharacterAdded:Connect(function(character_2)
                fn32(character_2:WaitForChild("Humanoid"))
            end)
        end
    end

    local Debris = game:GetService("Debris")
    local tbl19 = {["10480796021"] = true, ["10480793962"] = true}
    local fastDash = tbl3.fastDash
    local v15 = fastDash or nil
    tbl3.fastDash = v15

    fn19 = function(arg)
        if tbl3.fastDash then
            tbl3.fastDash:Disconnect()
            tbl3.fastDash = nil
        end

        if not tbl2.fastDash then
            return
        end

        if not arg then
            return
        end
        local humanoid_3 = arg:FindFirstChildOfClass("Humanoid")
        local humanoidRootPart_2 = arg:FindFirstChild("HumanoidRootPart")
        if not humanoid_3 or not humanoidRootPart_2 then
            return
        end

        tbl3.fastDash = humanoid_3.AnimationPlayed:Connect(function(arg2)
            local ok_, result = pcall(function()
                local animation = arg2.Animation
                local str = animation and tostring(arg2.Animation.AnimationId)
                return str
            end)

            if not ok_ or not result then
                return
            end
            local match = result:match("%d+")
            if not match or not tbl19[match] then
                return
            end

            pcall(function()
                local n_2 = match == "10480796021" and -1 or 1
                local n_3 = humanoidRootPart_2.CFrame.RightVector * n_2
                local bodyVelocity = Instance.new("BodyVelocity")
                bodyVelocity.Velocity = n_3 * 250
                bodyVelocity.MaxForce = Vector3.new(100000, 0, 100000)
                bodyVelocity.Parent = humanoidRootPart_2
                Debris:AddItem(bodyVelocity, 0.25)
                humanoidRootPart_2.CFrame = humanoidRootPart_2.CFrame + n_3 * 5

                task.delay(0.22, function()
                    if arg2 and arg2.IsPlaying then
                        pcall(function()
                            arg2:Stop()
                        end)
                    end
                end)
            end)
        end)
    end

    if localPlayer.Character then
        task.spawn(function()
            if tbl2.fastDash then
                fn19(localPlayer.Character)
            end
        end)
    end

    localPlayer.CharacterAdded:Connect(function(character_2)
        task.wait(0.5)

        if tbl2.fastDash then
            fn19(character_2)
        end
    end)
end

local function fn20()
    if not tbl2.showCharacter then
        return
    end

    if _G.a then
        return
    end
    _G.a = true
    local Players2 = game:GetService("Players")

    local tbl7 = {
        KJ = "rbxassetid://17140853847",
        Sorcerer = "rbxassetid://15143528348",
        Tech = "rbxassetid://113596928331434",
    }

    local function fn21(arg)
        if tbl7[arg] then
            return tbl7[arg]
        end
        local playerGui = Players2.LocalPlayer:WaitForChild("PlayerGui")

        local ok_, result = pcall(function()
            return playerGui.TopbarPlus.TopbarContainer.UnnamedIcon.DropdownContainer.DropdownFrame[arg].IconButton.IconImage.Image
        end)

        local str = ok_ and result or "rbxassetid://12252402662"
        return str
    end

    local function fn22(arg)
        if not arg.Character then
            return
        end
        local head_ = arg.Character:WaitForChild("Head")
        local b_ = head_:FindFirstChild("b")

        if b_ then
            b_:Destroy()
        end

        local attribute = arg:GetAttribute("Character")
        if not attribute then
            return
        end
        local billboardGui = Instance.new("BillboardGui")
        billboardGui.Name = "b"
        billboardGui.Size = UDim2.new(2, 0, 2, 0)
        billboardGui.AlwaysOnTop = true
        billboardGui.MaxDistance = 50
        billboardGui.Adornee = head_
        billboardGui.Parent = head_
        billboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
        local imageLabel = Instance.new("ImageLabel")
        imageLabel.Size = UDim2.new(1, 0, 1, 0)
        imageLabel.BackgroundTransparency = 1
        imageLabel.Image = fn21(attribute)
        imageLabel.Parent = billboardGui
    end

    local function fn23(player)
        player.CharacterAdded:Connect(function()
            fn22(player)
        end)

        player:GetAttributeChangedSignal("Character"):Connect(function()
            if player.Character then
                fn22(player)
            end
        end)

        if player.Character then
            fn22(player)
        end
    end

    Players2.PlayerAdded:Connect(fn23)

    Players2.PlayerRemoving:Connect(function(player)
        if player.Character and player.Character:FindFirstChild("Head") then
            local b_ = player.Character.Head:FindFirstChild("b")

            if b_ then
                b_:Destroy()
            end
        end
    end)

    for i, player in ipairs(Players2:GetPlayers()) do
        fn23(player)
    end
end

local function fn21()
    if tbl3.dashTimer then
        tbl3.dashTimer:Disconnect()
        tbl3.dashTimer = nil
    end

    if not tbl2.dashTimer then
        return
    end
    local Players2 = game:GetService("Players")

    local tbl7 = {
        "10479335397",
        "15955393872",
        "16310343179",
        "15943915877",
        "16023456135",
        "15944317351",
        "15997042291",
        "16311141574",
        "18181589384",
        "131492147325921",
        "13380255751",
    }

    local function fn22(arg)
        local playerGui = arg:WaitForChild("PlayerGui")
        local cooldownSlider = playerGui:FindFirstChild("CooldownSlider")
        if cooldownSlider then
            return cooldownSlider.Main, cooldownSlider.Fill
        end
        local screenGui_ = Instance.new("ScreenGui")
        screenGui_.Name = "CooldownSlider"
        screenGui_.ResetOnSpawn = false
        screenGui_.Parent = playerGui
        local frame = Instance.new("Frame")
        frame.Name = "Main"
        frame.Size = UDim2.new(0, 120, 0, 6)
        frame.Position = UDim2.new(0.5, 0, 0, 10)
        frame.AnchorPoint = Vector2.new(0.5, 0)
        frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        frame.BorderSizePixel = 0
        frame.Visible = false
        frame.Parent = screenGui_
        local frame2 = Instance.new("Frame")
        frame2.Name = "Fill"
        frame2.Size = UDim2.new(1, 0, 1, 0)
        frame2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        frame2.BorderSizePixel = 0
        frame2.Parent = frame
        return frame, frame2
    end

    local function fn23(arg, arg2, arg3)
        if arg:GetAttribute("Active") then
            return
        end
        arg:SetAttribute("Active", true)
        arg.Visible = true
        local now = tick()

        while true do
            local n_ = tick() - now
            if arg3 <= n_ then
                break
            end
            local n_2 = math.clamp(1 - n_ / arg3, 0, 1)
            arg2.Size = UDim2.new(n_2, 0, 1, 0)
            arg2.BackgroundColor3 = Color3.new(n_2, 1 - n_2, 0)
            task.wait(0.03)
        end

        arg.Visible = false
        arg:SetAttribute("Active", false)
    end

    local function fn24(arg)
        local v, v2, n_, humanoid_, v3, v4, v5, v6, v7, v8, v9, v10, animation, str, v11, v12, v13, v14, v15, v16
        local v17, v18, n_2
        n_2 = 1

        while true do
            if n_2 == 1 then
                v, v2 = fn22(arg)
                n_ = 0
                n_2 = 2
            elseif n_2 == 2 then
                if arg.Parent then
                    n_2 = 3
                else
                    n_2 = 16
                end
            elseif n_2 == 3 then
                task.wait(0.1)

                if arg.Character then
                    n_2 = 4
                else
                    n_2 = 2
                end
            elseif n_2 == 4 then
                humanoid_ = arg.Character:FindFirstChild("Humanoid")

                if humanoid_ then
                    n_2 = 5
                else
                    n_2 = 2
                end
            elseif n_2 == 5 then
                v3, v4, v5 = pairs(humanoid_:GetPlayingAnimationTracks())
                v6 = v5
                v7 = v3
                v8 = v4
                n_2 = 6
            elseif n_2 == 6 then
                v9, v10 = v7(v8, v6)

                if v9 == nil then
                    n_2 = 2
                else
                    n_2 = 7
                end
            elseif n_2 == 7 then
                animation = v10.Animation
                str = animation

                if animation then
                    n_2 = 8
                else
                    n_2 = 9
                end
            elseif n_2 == 8 then
                str = tostring(v10.Animation.AnimationId)
                n_2 = 9
            elseif n_2 == 9 then
                if str then
                    n_2 = 11
                else
                    n_2 = 10
                end
            elseif n_2 == 10 then
                str = ""
                n_2 = 11
            elseif n_2 == 11 then
                v11, v12, v13 = ipairs(tbl7)
                v14 = v7
                v15 = v8
                v16 = v13
                n_2 = 12
            elseif n_2 == 12 then
                v17, v18 = v11(v12, v16)

                if v17 == nil then
                    n_2 = 15
                else
                    n_2 = 13
                end
            elseif n_2 == 13 then
                v16 = v17

                if str:find(v18, 1, true) and tick() - n_ >= 5 then
                    n_2 = 14
                else
                    n_2 = 12
                end
            elseif n_2 == 14 then
                n_ = tick()

                task.spawn(function()
                    fn23(v, v2, 4.9)
                end)

                n_2 = 15
            elseif n_2 == 15 then
                v6 = v9
                v7 = v14
                v8 = v15
                n_2 = 6
            elseif n_2 == 16 then
                return
            end
        end
    end

    Players2.PlayerAdded:Connect(function(player)
        task.spawn(fn24, player)
    end)

    for i, player in ipairs(Players2:GetPlayers()) do
        task.spawn(fn24, player)
    end
end

local function fn22(arg)
    if not arg then
        return
    end
    local character_ = localPlayer.Character
    local result = character_ or localPlayer.CharacterAdded:Wait()
    local humanoidRootPart_ = result:FindFirstChild("HumanoidRootPart")
    local humanoidRootPart_2 = humanoidRootPart_ or result:WaitForChild("HumanoidRootPart")
    humanoidRootPart_2.CFrame = CFrame.new(arg)
end

AutoLockJumpAnimDetectId = "12296113986"
AutoLockJumpBlockAnimId = "10471478869"
AutoLockJumpConnections = {}
AutoLockJumpActiveLockCleanup = nil
local tbl7 = tbl2 or {}
tbl2 = tbl7
local autoLockJumpForceJumpHeight = tbl2.autoLockJumpForceJumpHeight
local autoLockJumpForceJumpHeight2 = autoLockJumpForceJumpHeight or 70
tbl2.autoLockJumpForceJumpHeight = autoLockJumpForceJumpHeight2
local attribute = localPlayer and localPlayer:GetAttribute("AutoLockJumpEnabled") ~= nil and localPlayer:GetAttribute("AutoLockJumpEnabled")

if not attribute then
    local autoLockJump = tbl2.autoLockJump
    attribute = autoLockJump or false
end

tbl2.autoLockJump = attribute
local autoLockJumpUnloaded = tbl2.autoLockJumpUnloaded
local autoLockJumpUnloaded2 = autoLockJumpUnloaded or false
tbl2.autoLockJumpUnloaded = autoLockJumpUnloaded2
local autoLockJumpDebounce = tbl2.autoLockJumpDebounce
local autoLockJumpDebounce2 = autoLockJumpDebounce or false
tbl2.autoLockJumpDebounce = autoLockJumpDebounce2
local autoLockJumpBlocked = tbl2.autoLockJumpBlocked
local autoLockJumpBlocked2 = autoLockJumpBlocked or false
tbl2.autoLockJumpBlocked = autoLockJumpBlocked2
local autoLockJumpWaitDetect = tbl2.autoLockJumpWaitDetect
local autoLockJumpWaitDetect2 = autoLockJumpWaitDetect or 16.5
tbl2.autoLockJumpWaitDetect = autoLockJumpWaitDetect2
tbl2.autoLockJumpWaitJump = 0
local autoLockJumpWaitRemote = tbl2.autoLockJumpWaitRemote
local autoLockJumpWaitRemote2 = autoLockJumpWaitRemote or 1
tbl2.autoLockJumpWaitRemote = autoLockJumpWaitRemote2
local autoLockJumpLockDuration = tbl2.autoLockJumpLockDuration
local autoLockJumpLockDuration2 = autoLockJumpLockDuration or 16
tbl2.autoLockJumpLockDuration = autoLockJumpLockDuration2
local autoLockJumpTargetRadius = tbl2.autoLockJumpTargetRadius
local autoLockJumpTargetRadius2 = autoLockJumpTargetRadius or 15
tbl2.autoLockJumpTargetRadius = autoLockJumpTargetRadius2
local autoLockJumpCooldown = tbl2.autoLockJumpCooldown
local autoLockJumpCooldown2 = autoLockJumpCooldown or 0
tbl2.autoLockJumpCooldown = autoLockJumpCooldown2

local autoLockJumpResponsiveness = localPlayer and localPlayer:GetAttribute("AutoLockJumpResponsiveness") ~= nil and clamp and (function()
    return clamp(localPlayer:GetAttribute("AutoLockJumpResponsiveness"), 0, 1000)
end)()

if not autoLockJumpResponsiveness then
    local autoLockJumpResponsiveness2 = tbl2.autoLockJumpResponsiveness
    autoLockJumpResponsiveness = autoLockJumpResponsiveness2 or 600
end

tbl2.autoLockJumpResponsiveness = autoLockJumpResponsiveness

clamp = function(arg, arg2, arg3)
    if arg == nil then
        return arg2
    end

    if arg < arg2 then
        return arg2
    end

    if arg3 < arg then
        return arg3
    end
    return arg
end

AutoLockJumpSafeDestroy = function(arg)
    if arg and arg.Parent then
        pcall(function()
            arg:Destroy()
        end)
    end
end

AutoLockJumpGetCharParts = function()
    local now = tick()

    while tick() - now <= 0.6 do
        local v = localPlayer
        local character_ = v and localPlayer.Character

        if character_ then
            local humanoid_ = character_:FindFirstChildOfClass("Humanoid")
            local humanoidRootPart_ = character_:FindFirstChild("HumanoidRootPart")
            if humanoid_ and humanoidRootPart_ then
                return character_, humanoid_, humanoidRootPart_
            end
        end

        RunService.Heartbeat:Wait()
    end

    return nil
end

AutoLockJumpFireDashQW = function()
    local v = localPlayer
    local character_ = v and localPlayer.Character
    if not character_ then
        return
    end
    local communicate = character_:FindFirstChild("Communicate")

    if communicate and typeof(communicate.FireServer) == "function" then
        local tbl8 = {
            {
                Dash = Enum.KeyCode.W,
                Key = Enum.KeyCode.Q,
                Goal = "KeyPress",
            },
        }

        for i = 1, 3 do
            pcall(function()
                communicate:FireServer(unpack(tbl8))
            end)

            RunService.Heartbeat:Wait()
        end
    end
end

AutoLockJumpFindBestTarget = function(arg)
    local autoLockJumpTargetRadius3 = arg or tbl2.autoLockJumpTargetRadius
    local live_ = Workspace:FindFirstChild("Live")
    if not live_ then
        return nil
    end
    local v, v2
    v2, v2, v = AutoLockJumpGetCharParts()
    if not v then
        return nil
    end
    local v3 = nil
    local v4 = autoLockJumpTargetRadius3

    for i, child in ipairs(live_:GetChildren()) do
        if child and child:IsA("Model") and child ~= localPlayer.Character then
            local humanoidRootPart_ = child:FindFirstChild("HumanoidRootPart")
            local humanoid_ = child:FindFirstChildOfClass("Humanoid")

            if humanoidRootPart_ and humanoid_ and humanoid_.Health > 0 then
                local flag3 = child.Name == "Weakest Dummy" or Players:GetPlayerFromCharacter(child) ~= nil

                if flag3 then
                    local magnitude = (humanoidRootPart_.Position - v.Position).Magnitude

                    if magnitude <= v4 then
                        v4 = magnitude
                        v3 = humanoidRootPart_
                    end
                end
            end
        end
    end

    return v3
end

AutoLockJumpModelHasBlockingAnim = function(arg)
    if not arg or not arg.Parent then
        return false
    end
    local humanoid_ = arg:FindFirstChildOfClass("Humanoid")
    if not humanoid_ then
        return false
    end

    local ok_, result = pcall(function()
        return humanoid_:GetPlayingAnimationTracks()
    end)

    if ok_ and result then
        for i, v in ipairs(result) do
            if v and v.Animation then
                local v2 = tostring
                local animationId = v.Animation.AnimationId
                local str = animationId or ""
                if v2(str):find(AutoLockJumpBlockAnimId, 1, true) then
                    return true
                end
            end
        end
    else
        for i, child in ipairs(humanoid_:GetChildren()) do
            if not child:IsA("Animation") then
                continue
            end
            local v = tostring
            local animationId = child.AnimationId
            local str = animationId or ""
            if v(str):find(AutoLockJumpBlockAnimId, 1, true) then
                return true
            end
        end
    end

    return false
end

AutoLockJumpScanForBlockingAnim = function()
    local live_ = Workspace:FindFirstChild("Live")
    if not live_ then
        return false
    end

    for i, child in ipairs(live_:GetChildren()) do
        if child and child:IsA("Model") and child ~= localPlayer.Character then
            local humanoid_ = child:FindFirstChildOfClass("Humanoid")
            if humanoid_ and humanoid_.Health > 0 and AutoLockJumpModelHasBlockingAnim(child) then
                return true, child
            end
        end
    end

    return false
end

computeResponsiveAlpha = function(arg, arg2)
    local v = clamp
    local autoLockJumpResponsiveness2 = arg or tbl2.autoLockJumpResponsiveness
    local n_ = 0.6 + 119.4 * (v(autoLockJumpResponsiveness2, 0, 1000) / 1000) ^ 2
    local n_2 = 1 - math.exp(-n_ * arg2)
    local clamp_ = math.clamp
    local n_3 = clamp_ and math.clamp(n_2, 0, 1) or (n_2 < 0 and 0 or (n_2 > 1 and 1 or n_2))
    local v2 = n_3
    return v2
end

AutoLockJumpStartHorizontalLockLerp = function(arg, arg2)
    if not arg or not arg.Parent then
        return nil
    end
    local v, v2, v3 = AutoLockJumpGetCharParts()
    if not v3 or not v2 then
        return nil
    end

    if arg2 <= 0 then
        return nil
    end
    local now = tick()
    local connection3 = nil

    connection3 = RunService.RenderStepped:Connect(function(deltaTime)
        if not tbl2.autoLockJumpBlocked and tbl2.autoLockJump then
            if arg and arg.Parent then
                local position = v3.Position
                local vector = Vector3.new(arg.Position.X, position.Y, arg.Position.Z)

                if (vector - position).Magnitude >= 0.001 then
                    local cframe = CFrame.new(position, vector)
                    local v4 = clamp(tbl2.autoLockJumpResponsiveness, 0, 1000)
                    local v5 = computeResponsiveAlpha(v4, deltaTime)

                    if v5 >= 0.999999 then
                        pcall(function()
                            v3.CFrame = cframe
                        end)
                    else
                        local v6 = v3.CFrame:Lerp(cframe, v5)
                        local cFrame = CFrame.new(position) * CFrame.fromMatrix(Vector3.new(), v6.RightVector, v6.UpVector)

                        pcall(function()
                            v3.CFrame = cFrame
                        end)
                    end
                end

                if arg2 > tick() - now then
                    return
                end

                if connection3 then
                    connection3:Disconnect()
                end

                return
            end

            if connection3 then
                connection3:Disconnect()
            end

            return
        end

        if connection3 then
            connection3:Disconnect()
        end
    end)

    return function()
        if connection3 then
            pcall(function()
                connection3:Disconnect()
            end)
        end
    end
end

AutoLockJumpCancelActiveLockAndRestore = function()
    if AutoLockJumpActiveLockCleanup then
        pcall(AutoLockJumpActiveLockCleanup)
        AutoLockJumpActiveLockCleanup = nil
    end

    local character_ = localPlayer.Character
    local humanoid_ = character_ and character_:FindFirstChildOfClass("Humanoid")

    if humanoid_ then
        pcall(function()
            humanoid_.AutoRotate = true
        end)
    end
end

ReliableForceJump = function(arg)
    if not arg then
        return
    end

    pcall(function()
        arg.Jump = true
        arg:ChangeState(Enum.HumanoidStateType.Jumping)
        RunService.Heartbeat:Wait()
        arg.Jump = true
        arg:ChangeState(Enum.HumanoidStateType.Jumping)
        RunService.Heartbeat:Wait()
        arg.Jump = true
        arg:ChangeState(Enum.HumanoidStateType.Jumping)
        RunService.Heartbeat:Wait()
        local velocity = arg.Velocity
        arg.Velocity = Vector3.new(velocity.X, tbl2.autoLockJumpForceJumpHeight, velocity.Z)
    end)
end

AutoLockJumpRunSequence = function()
    if tbl2.autoLockJumpDebounce or not tbl2.autoLockJump or tbl2.autoLockJumpBlocked then
        return
    end
    tbl2.autoLockJumpDebounce = true
    local n_ = tbl2.autoLockJumpWaitDetect / 10
    local n_2 = tbl2.autoLockJumpWaitRemote / 10
    local n_3 = tbl2.autoLockJumpLockDuration / 10
    local n_4 = tbl2.autoLockJumpCooldown / 10
    local now = tick()

    while tick() - now < n_ do
        if tbl2.autoLockJump and not tbl2.autoLockJumpBlocked then
            RunService.Heartbeat:Wait()
            continue
        end
        tbl2.autoLockJumpDebounce = false
        return
    end

    local v, v2, v3 = AutoLockJumpGetCharParts()

    if v2 and v3 then
        local autoRotate = v2.AutoRotate
        v2.AutoRotate = false
        ReliableForceJump(v2)
        AutoLockJumpFireDashQW()
        local now2 = tick()

        while tick() - now2 < n_2 do
            if tbl2.autoLockJump and not tbl2.autoLockJumpBlocked then
                RunService.Heartbeat:Wait()
                continue
            end
            v2.AutoRotate = autoRotate
            tbl2.autoLockJumpDebounce = false
            return
        end

        local v4 = AutoLockJumpFindBestTarget()
        local v5 = nil

        if v4 and not tbl2.autoLockJumpBlocked then
            v5 = AutoLockJumpStartHorizontalLockLerp(v4, n_3)
            AutoLockJumpActiveLockCleanup = v5
        end

        local n_5 = tick() + math.max(n_3, 1.2)

        task.spawn(function()
            while tick() < n_5 and tbl2.autoLockJump and not tbl2.autoLockJumpBlocked do
                v2.AutoRotate = false
                RunService.Heartbeat:Wait()
            end

            v2.AutoRotate = autoRotate
        end)

        task.delay(n_3, function()
            if v5 then
                pcall(v5)
                AutoLockJumpActiveLockCleanup = nil
            end
        end)

        task.delay(n_4, function()
            tbl2.autoLockJumpDebounce = false
        end)

        return
    end

    tbl2.autoLockJumpDebounce = false
end

AutoLockJumpOnAnimationPlayed = function(arg)
    if not tbl2.autoLockJump or tbl2.autoLockJumpDebounce or tbl2.autoLockJumpBlocked then
        return
    end

    if not arg or not arg.Animation then
        return
    end
    local v = tostring
    local animationId = arg.Animation.AnimationId
    local str = animationId or ""
    local v2 = v(str)

    if v2 == AutoLockJumpAnimDetectId or v2:find(AutoLockJumpAnimDetectId, 1, true) then
        task.spawn(AutoLockJumpRunSequence)
    end
end

local v = AutoLockJumpConnections
local tbl8 = v or {}
AutoLockJumpConnections = tbl8

AutoLockJumpHookCharacter = function()
    if AutoLockJumpConnections.anim then
        pcall(function()
            AutoLockJumpConnections.anim:Disconnect()
        end)

        AutoLockJumpConnections.anim = nil
    end

    if AutoLockJumpConnections.trackScanner then
        pcall(function()
            AutoLockJumpConnections.trackScanner:Disconnect()
        end)

        AutoLockJumpConnections.trackScanner = nil
    end

    if AutoLockJumpConnections.diedConn then
        pcall(function()
            AutoLockJumpConnections.diedConn:Disconnect()
        end)

        AutoLockJumpConnections.diedConn = nil
    end

    local character_ = localPlayer.Character
    if not character_ then
        return
    end
    local humanoid_ = character_:FindFirstChildOfClass("Humanoid")

    if humanoid_ then
        AutoLockJumpConnections.anim = humanoid_.AnimationPlayed:Connect(AutoLockJumpOnAnimationPlayed)

        AutoLockJumpConnections.diedConn = humanoid_.Died:Connect(function()
            pcall(function()
                tbl2.autoLockJumpDebounce = false
            end)

            pcall(function()
                tbl2.autoLockJumpBlocked = false
            end)

            AutoLockJumpCancelActiveLockAndRestore()
        end)

        AutoLockJumpConnections.trackScanner = RunService.Heartbeat:Connect(function(deltaTime)
            if not tbl2.autoLockJump or tbl2.autoLockJumpDebounce or tbl2.autoLockJumpBlocked then
                return
            end

            local ok_, result = pcall(function()
                return humanoid_:GetPlayingAnimationTracks()
            end)

            if ok_ and result and #result > 0 then
                for i, v2 in ipairs(result) do
                    if v2 and v2.Animation then
                        local v3 = tostring
                        local animationId = v2.Animation.AnimationId
                        local str = animationId or ""
                        local v4 = v3(str)
                        if v4 == AutoLockJumpAnimDetectId or v4:find(AutoLockJumpAnimDetectId, 1, true) then
                            task.spawn(AutoLockJumpRunSequence)
                            break
                        end
                        continue
                    end
                end
            end
        end)
    end
end

AutoLockJumpStartBlockChecker = function()
    if AutoLockJumpConnections.blockChecker then
        pcall(function()
            AutoLockJumpConnections.blockChecker:Disconnect()
        end)

        AutoLockJumpConnections.blockChecker = nil
    end

    local n_ = 0

    AutoLockJumpConnections.blockChecker = RunService.Heartbeat:Connect(function(deltaTime)
        if not tbl2.autoLockJump then
            return
        end
        n_ = n_ + deltaTime
        if n_ < 0.12 then
            return
        end
        n_ = 0
        local v2 = AutoLockJumpScanForBlockingAnim()

        if v2 and not tbl2.autoLockJumpBlocked then
            tbl2.autoLockJumpBlocked = true
            AutoLockJumpCancelActiveLockAndRestore()

            if AutoLockJumpConnections.anim then
                pcall(function()
                    AutoLockJumpConnections.anim:Disconnect()
                end)

                AutoLockJumpConnections.anim = nil
            end

            if AutoLockJumpConnections.trackScanner then
                pcall(function()
                    AutoLockJumpConnections.trackScanner:Disconnect()
                end)

                AutoLockJumpConnections.trackScanner = nil
            end
        elseif not v2 and tbl2.autoLockJumpBlocked then
            tbl2.autoLockJumpBlocked = false

            if tbl2.autoLockJump then
                AutoLockJumpHookCharacter()
            end
        end
    end)
end

SetupAutoLockJump = function()
    if AutoLockJumpConnections.charAdded then
        pcall(function()
            AutoLockJumpConnections.charAdded:Disconnect()
        end)

        AutoLockJumpConnections.charAdded = nil
    end

    if AutoLockJumpConnections.charRemoving then
        pcall(function()
            AutoLockJumpConnections.charRemoving:Disconnect()
        end)

        AutoLockJumpConnections.charRemoving = nil
    end

    AutoLockJumpConnections.charAdded = localPlayer.CharacterAdded:Connect(function()
        task.wait(0)

        if localPlayer and localPlayer:GetAttribute("AutoLockJumpEnabled") ~= nil then
            local autoLockJump = localPlayer:GetAttribute("AutoLockJumpEnabled") == true
            tbl2.autoLockJump = autoLockJump
        end

        if tbl2.autoLockJump then
            AutoLockJumpHookCharacter()
            AutoLockJumpStartBlockChecker()
        end
    end)

    AutoLockJumpConnections.charRemoving = localPlayer.CharacterRemoving:Connect(function()
        if AutoLockJumpConnections.anim then
            pcall(function()
                AutoLockJumpConnections.anim:Disconnect()
            end)

            AutoLockJumpConnections.anim = nil
        end

        if AutoLockJumpConnections.trackScanner then
            pcall(function()
                AutoLockJumpConnections.trackScanner:Disconnect()
            end)

            AutoLockJumpConnections.trackScanner = nil
        end

        if AutoLockJumpConnections.diedConn then
            pcall(function()
                AutoLockJumpConnections.diedConn:Disconnect()
            end)

            AutoLockJumpConnections.diedConn = nil
        end

        AutoLockJumpCancelActiveLockAndRestore()
        tbl2.autoLockJumpDebounce = false
        tbl2.autoLockJumpBlocked = false
    end)

    if not tbl2.autoLockJump then
        if AutoLockJumpConnections.anim then
            pcall(function()
                AutoLockJumpConnections.anim:Disconnect()
            end)

            AutoLockJumpConnections.anim = nil
        end

        if AutoLockJumpConnections.blockChecker then
            pcall(function()
                AutoLockJumpConnections.blockChecker:Disconnect()
            end)

            AutoLockJumpConnections.blockChecker = nil
        end

        AutoLockJumpCancelActiveLockAndRestore()
        tbl2.autoLockJumpDebounce = false
        tbl2.autoLockJumpBlocked = false

        if localPlayer then
            pcall(function()
                localPlayer:SetAttribute("AutoLockJumpEnabled", false)
            end)
        end

        return
    end

    AutoLockJumpHookCharacter()
    AutoLockJumpStartBlockChecker()

    if localPlayer then
        pcall(function()
            localPlayer:SetAttribute("AutoLockJumpEnabled", true)
        end)
    end
end

task.spawn(function()
    task.wait(0)
    local autoLockJumpResponsiveness2 = tbl2.autoLockJumpResponsiveness
    local autoLockJumpResponsiveness3 = autoLockJumpResponsiveness2 or 600
    tbl2.autoLockJumpResponsiveness = autoLockJumpResponsiveness3

    if localPlayer and localPlayer:GetAttribute("AutoLockJumpResponsiveness") ~= nil then
        local v2 = clamp(localPlayer:GetAttribute("AutoLockJumpResponsiveness"), 0, 1000)
        tbl2.autoLockJumpResponsiveness = v2
    end

    if localPlayer and localPlayer:GetAttribute("AutoLockJumpEnabled") ~= nil then
        local autoLockJump = localPlayer:GetAttribute("AutoLockJumpEnabled") == true
        tbl2.autoLockJump = autoLockJump
    end

    SetupAutoLockJump()
end)

local connection3 = nil

local function fn23(arg)
    if arg then
        connection3 = RunService.Heartbeat:Connect(function()
            local character_ = localPlayer.Character
            local humanoid_ = character_ and character_:FindFirstChild("Humanoid")

            if humanoid_ and humanoid_:GetState() == Enum.HumanoidStateType.Running then
                humanoid_:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
    elseif connection3 then
        connection3:Disconnect()
        connection3 = nil
    end
end

local tbl9 = {}
tbl9.characterAdded = nil
tbl9.currentCharacter = {animPlayed = nil, ancestryChanged = nil}
tbl9.aimingLoop = nil
local n_ = 0
local v2 = nil

local function fn24()
    if tbl9.aimingLoop or not v2 then
        return
    end
    local humanoidRootPart_ = v2:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart_ then
        return
    end
    local mouse_ = Players.LocalPlayer:GetMouse()

    local connection4 = RunService.RenderStepped:Connect(function()
        local now = tick()

        if n_ > now and v2 and v2.Parent and tbl2.mouseDash then
            local ok_, result = pcall(function()
                return mouse_.Hit.Position
            end)

            if ok_ and result then
                local vector = Vector3.new(result.X, humanoidRootPart_.Position.Y, result.Z)
                local cframe = CFrame.new(humanoidRootPart_.Position, vector)

                pcall(function()
                    humanoidRootPart_.CFrame = cframe
                end)
            end

            return
        end

        if tbl9.aimingLoop then
            tbl9.aimingLoop:Disconnect()
            tbl9.aimingLoop = nil
        end
    end)

    tbl9.aimingLoop = connection4
end

local function fn25(arg)
    if not tbl2.mouseDash then
        return
    end

    local ok_, result = pcall(function()
        return arg.Animation
    end)

    if not ok_ or not result then
        return
    end
    local v3 = tostring
    local animationId = result.AnimationId
    local v4 = animationId or result
    local v5 = v3(v4)

    if string.find(v5, "10479335397", 1, true) then
        local n_2 = tbl2.mouseDashDelay / 1000
        n_ = tick() + n_2
        fn24()
    end
end

local function fn26(character_)
    if tbl9.currentCharacter.animPlayed then
        tbl9.currentCharacter.animPlayed:Disconnect()
        tbl9.currentCharacter.animPlayed = nil
    end

    if tbl9.currentCharacter.ancestryChanged then
        tbl9.currentCharacter.ancestryChanged:Disconnect()
        tbl9.currentCharacter.ancestryChanged = nil
    end

    if tbl9.aimingLoop then
        tbl9.aimingLoop:Disconnect()
        tbl9.aimingLoop = nil
    end

    n_ = 0
    v2 = nil
    if not tbl2.mouseDash then
        return
    end
    local humanoid_ = character_:WaitForChild("Humanoid", 5)
    if not humanoid_ then
        return
    end
    v2 = character_
    tbl9.currentCharacter.animPlayed = humanoid_.AnimationPlayed:Connect(fn25)

    local ok_, result = pcall(function()
        return humanoid_:GetPlayingAnimationTracks()
    end)

    if ok_ and result then
        for i, v3 in ipairs(result) do
            fn25(v3)
        end
    end

    tbl9.currentCharacter.ancestryChanged = character_.AncestryChanged:Connect(function(child, parent)
        if not parent then
            if tbl9.aimingLoop then
                tbl9.aimingLoop:Disconnect()
                tbl9.aimingLoop = nil
            end

            if tbl9.currentCharacter.animPlayed then
                tbl9.currentCharacter.animPlayed:Disconnect()
                tbl9.currentCharacter.animPlayed = nil
            end

            if tbl9.currentCharacter.ancestryChanged then
                tbl9.currentCharacter.ancestryChanged:Disconnect()
                tbl9.currentCharacter.ancestryChanged = nil
            end

            v2 = nil
        end
    end)
end

local function fn27()
    if tbl9.characterAdded then
        tbl9.characterAdded:Disconnect()
        tbl9.characterAdded = nil
    end

    if tbl9.currentCharacter.animPlayed then
        tbl9.currentCharacter.animPlayed:Disconnect()
        tbl9.currentCharacter.animPlayed = nil
    end

    if tbl9.currentCharacter.ancestryChanged then
        tbl9.currentCharacter.ancestryChanged:Disconnect()
        tbl9.currentCharacter.ancestryChanged = nil
    end

    if tbl9.aimingLoop then
        tbl9.aimingLoop:Disconnect()
        tbl9.aimingLoop = nil
    end

    n_ = 0
    v2 = nil

    if tbl2.mouseDash then
        local connection4 = localPlayer.CharacterAdded:Connect(fn26)
        tbl9.characterAdded = connection4

        if localPlayer.Character then
            fn26(localPlayer.Character)
        end
    end
end

autoSurfAnimationId = "rbxassetid://12309835105"
autoSurfActive = false
autoSurfIsTweening = false
autoSurfCharConnection = nil
autoSurfRenderConnection = nil

setupAutoSurf = function()
    if autoSurfCharConnection then
        autoSurfCharConnection:Disconnect()
        autoSurfCharConnection = nil
    end

    if autoSurfRenderConnection then
        autoSurfRenderConnection:Disconnect()
        autoSurfRenderConnection = nil
    end

    if not tbl2.autoSurf then
        return
    end
    autoSurfActive = true

    fn3 = function()
        local character_ = localPlayer.Character
        local result = character_ or localPlayer.CharacterAdded:Wait()
        return result
    end

    isTargetAnimPlaying = function()
        local humanoid_ = fn3():FindFirstChildOfClass("Humanoid")
        if not humanoid_ then
            return false
        end

        for i, v3 in ipairs(humanoid_:GetPlayingAnimationTracks()) do
            if v3.Animation and v3.Animation.AnimationId == autoSurfAnimationId then
                return true
            end
        end

        return false
    end

    local connection4 = RunService.RenderStepped:Connect(function()
        if not autoSurfActive or autoSurfIsTweening then
            return
        end

        if isTargetAnimPlaying() then
            autoSurfIsTweening = true
            task.wait(0.6)
            local humanoidRootPart_ = fn3():FindFirstChild("HumanoidRootPart")

            if humanoidRootPart_ then
                humanoidRootPart_.Anchored = false
                local unit = humanoidRootPart_.CFrame.LookVector.Unit
                local tween = TweenService:Create(humanoidRootPart_, TweenInfo.new(0.78), {CFrame = humanoidRootPart_.CFrame + unit * 50})
                tween:Play()
                tween.Completed:Wait()
            end

            task.wait(1.5)
            autoSurfIsTweening = false
        end
    end)

    autoSurfRenderConnection = connection4

    local connection5 = localPlayer.CharacterAdded:Connect(function()
        task.wait(1)
        fn3()
    end)

    autoSurfCharConnection = connection5
end

autoWhirlwindDunkAnimationId = "rbxassetid://12296113986"
autoWhirlwindDunkIsTeleporting = false
autoWhirlwindDunkLastTrack = nil
autoWhirlwindDunkConnection = nil

setupAutoWhirlwindDunk = function()
    if autoWhirlwindDunkConnection then
        autoWhirlwindDunkConnection:Disconnect()
        autoWhirlwindDunkConnection = nil
    end

    if not tbl2.autoWhirlwindDunk then
        return
    end

    local connection4 = RunService.RenderStepped:Connect(function()
        local character_ = localPlayer.Character
        if not character_ or autoWhirlwindDunkIsTeleporting then
            return
        end
        local humanoid_ = character_:FindFirstChildWhichIsA("Humanoid")
        local humanoidRootPart_ = character_:FindFirstChild("HumanoidRootPart")
        if not humanoid_ or not humanoidRootPart_ then
            return
        end

        for i, v3 in ipairs(humanoid_:GetPlayingAnimationTracks()) do
            if v3.Animation and v3.Animation.AnimationId == autoWhirlwindDunkAnimationId then
                if autoWhirlwindDunkLastTrack == v3 then
                    return
                end
                autoWhirlwindDunkLastTrack = v3
                autoWhirlwindDunkIsTeleporting = true

                task.delay(1, function()
                    if humanoidRootPart_ and humanoidRootPart_.Parent then
                        humanoidRootPart_.CFrame = humanoidRootPart_.CFrame + Vector3.new(0, 70, 0)
                    end

                    autoWhirlwindDunkIsTeleporting = false
                end)

                break
            end
        end

        if autoWhirlwindDunkLastTrack and not autoWhirlwindDunkLastTrack.IsPlaying then
            autoWhirlwindDunkLastTrack = nil
        end
    end)

    autoWhirlwindDunkConnection = connection4
end

slideM1TargetIDs = {["10480796021"] = true, ["10480793962"] = true}
slideM1AnimConnection = nil
slideM1CharConnection = nil
slideM1ToggleState = false

setupSlideM1 = function()
    if slideM1AnimConnection then
        slideM1AnimConnection:Disconnect()
        slideM1AnimConnection = nil
    end

    if slideM1CharConnection then
        slideM1CharConnection:Disconnect()
        slideM1CharConnection = nil
    end

    if not tbl2.slideM1 then
        return
    end
    slideM1ToggleState = true

    setupForCharacter = function(arg)
        local humanoid_ = arg:WaitForChild("Humanoid", 3)
        local animator = humanoid_ and humanoid_:FindFirstChildOfClass("Animator")
        local communicate = arg:FindFirstChild("Communicate")
        if not humanoid_ or not animator or not communicate then
            return
        end
        local flag3 = false

        if slideM1AnimConnection then
            slideM1AnimConnection:Disconnect()
        end

        local connection4 = animator.AnimationPlayed:Connect(function(arg2)
            if not slideM1ToggleState then
                return
            end
            local match = arg2.Animation.AnimationId:match("%d+")

            if match and slideM1TargetIDs[match] and not flag3 then
                flag3 = true
                communicate:FireServer({Mobile = true, Goal = "LeftClick"})
                communicate:FireServer({Goal = "LeftClickRelease", Mobile = true})

                task.delay(1.5, function()
                    flag3 = false
                end)
            end
        end)

        slideM1AnimConnection = connection4
    end

    if localPlayer.Character then
        setupForCharacter(localPlayer.Character)
    end

    local connection4 = localPlayer.CharacterAdded:Connect(function(character_)
        task.wait(1)

        if slideM1ToggleState then
            setupForCharacter(character_)
        end
    end)

    slideM1CharConnection = connection4
end

autoTwistedEnabled = false
autoTwistedCooldown = false
autoTwistedAnimationConnection = nil
autoTwistedCharAddedConnection = nil
autoTwistedAnimationId = "rbxassetid://13294471966"
autoTwistedDelayBeforeRemote = 0.23

autoTwistedUseRemote = function()
    if not autoTwistedEnabled then
        return
    end
    local character_ = localPlayer.Character

    if character_ and character_:FindFirstChild("Communicate") then
        args = {
            {
                Dash = Enum.KeyCode.W,
                Key = Enum.KeyCode.Q,
                Goal = "KeyPress",
            },
        }

        character_.Communicate:FireServer(unpack(args))
    end
end

autoTwistedStepBack = function()
    if not autoTwistedEnabled then
        return
    end
    local character_ = localPlayer.Character
    local humanoidRootPart_ = character_ and localPlayer.Character:FindFirstChild("HumanoidRootPart")

    if humanoidRootPart_ then
        humanoidRootPart_.CFrame = humanoidRootPart_.CFrame * CFrame.new(0, 0, 3.4)
    end
end

autoTwistedBindAnimationDetection = function()
    local character_ = localPlayer.Character
    local result = character_ or localPlayer.CharacterAdded:Wait()

    local connection4 = result:WaitForChild("Humanoid").AnimationPlayed:Connect(function(arg)
        if not autoTwistedEnabled then
            return
        end

        if arg.Animation and arg.Animation.AnimationId == autoTwistedAnimationId and not autoTwistedCooldown then
            autoTwistedCooldown = true

            task.delay(autoTwistedDelayBeforeRemote, function()
                if not autoTwistedEnabled then
                    return
                end
                autoTwistedStepBack()
                autoTwistedUseRemote()
            end)

            task.delay(5, function()
                autoTwistedCooldown = false
            end)
        end
    end)

    autoTwistedAnimationConnection = connection4
end

setupAutoTwisted = function()
    if autoTwistedAnimationConnection then
        autoTwistedAnimationConnection:Disconnect()
        autoTwistedAnimationConnection = nil
    end

    if autoTwistedCharAddedConnection then
        autoTwistedCharAddedConnection:Disconnect()
        autoTwistedCharAddedConnection = nil
    end

    if not tbl2.autoTwisted then
        return
    end
    autoTwistedEnabled = true
    autoTwistedBindAnimationDetection()

    local connection4 = localPlayer.CharacterAdded:Connect(function()
        task.wait(1)

        if autoTwistedEnabled then
            autoTwistedBindAnimationDetection()
        end
    end)

    autoTwistedCharAddedConnection = connection4
end

setupTechHelper = function()
    if tbl3.techHelper then
        pcall(function()
            tbl3.techHelper:Disconnect()
        end)

        tbl3.techHelper = nil
    end

    if not tbl2.techHelper then
        return
    end
    targetId = "10479335397"
    local v3 = RunService
    local RunService2 = v3 or game:GetService("RunService")
    RunService = RunService2

    applyFlip = function(arg)
        if not tbl2.techHelper then
            return
        end
        local humanoidRootPart_ = arg:FindFirstChild("HumanoidRootPart")
        hrp = humanoidRootPart_
        local humanoid_ = arg:FindFirstChildOfClass("Humanoid")
        humanoid = humanoid_
        if not hrp or not humanoid then
            return
        end

        if hrp:FindFirstChild("TechHelperActive") then
            return
        end
        local boolValue = Instance.new("BoolValue", hrp)
        marker = boolValue
        marker.Name = "TechHelperActive"
        origAutoRotate = humanoid.AutoRotate
        humanoid.AutoRotate = false
        origVel = hrp.Velocity
        origCFrame = hrp.CFrame
        local num = tonumber(tbl.techHelperLockPercent)
        local n_2 = num or 0
        percent = n_2

        if percent < 0 then
            percent = 0
        end

        if percent > 100 then
            percent = 100
        end

        factor = percent / 100
        local v4 = math.rad(90 * factor)
        ang = v4

        if not tbl.techHelperLookUp then
            ang = -ang
        end

        local cFrame = origCFrame * CFrame.Angles(ang, 0, 0)
        local bodyGyro = Instance.new("BodyGyro")
        bg = bodyGyro
        bg.MaxTorque = Vector3.new(1000000000, 1000000000, 1000000000)
        bg.P = 20000
        bg.D = 100
        bg.CFrame = cFrame
        bg.Parent = hrp
        local bodyVelocity = Instance.new("BodyVelocity")
        bv = bodyVelocity
        bv.MaxForce = Vector3.new(1000000000, 1000000000, 1000000000)
        bv.Velocity = origVel
        bv.Parent = hrp
        elapsed = 0

        tbl3.techHelper = RunService.Heartbeat:Connect(function(deltaTime)
            if hrp and hrp.Parent then
                if not tbl2.techHelper then
                    pcall(function()
                        if bg and bg.Parent then
                            bg:Destroy()
                        end

                        if bv and bv.Parent then
                            bv:Destroy()
                        end

                        humanoid.AutoRotate = origAutoRotate

                        if marker and marker.Parent then
                            marker:Destroy()
                        end
                    end)

                    if tbl3.techHelper then
                        pcall(function()
                            tbl3.techHelper:Disconnect()
                        end)

                        tbl3.techHelper = nil
                    end

                    return
                end

                pcall(function()
                    bv.Velocity = origVel
                end)

                return
            end

            if tbl3.techHelper then
                pcall(function()
                    tbl3.techHelper:Disconnect()
                end)

                tbl3.techHelper = nil
            end
        end)

        local delay_ = task.delay
        local techHelperHold = tbl.techHelperHold
        local n_3 = techHelperHold or 0.1

        delay_(n_3, function()
            pcall(function()
                if tbl3.techHelper then
                    pcall(function()
                        tbl3.techHelper:Disconnect()
                    end)

                    tbl3.techHelper = nil
                end

                if bg and bg.Parent then
                    bg:Destroy()
                end

                if bv and bv.Parent then
                    bv:Destroy()
                end

                humanoid.AutoRotate = origAutoRotate

                if marker and marker.Parent then
                    marker:Destroy()
                end
            end)
        end)
    end

    connectHumanoid = function(arg, arg2)
        arg.AnimationPlayed:Connect(function(arg3)
            if not tbl2.techHelper then
                return
            end
            anim = arg3.Animation

            if anim and string.find(tostring(anim.AnimationId), targetId, 1, true) then
                local wait_ = task.wait
                local techHelperDelay = tbl.techHelperDelay
                local n_2 = techHelperDelay or 0
                wait_(n_2)
                applyFlip(arg2)
            end
        end)
    end

    onCharacter = function(arg)
        local humanoid_ = arg:FindFirstChildOfClass("Humanoid")
        hum = humanoid_

        if hum then
            connectHumanoid(hum, arg)
        end

        arg.ChildAdded:Connect(function(child)
            if child:IsA("Humanoid") then
                connectHumanoid(child, arg)
            end
        end)
    end

    for i, player in ipairs(Players:GetPlayers()) do
        if player.Character then
            onCharacter(player.Character)
        end

        player.CharacterAdded:Connect(onCharacter)
    end

    Players.PlayerAdded:Connect(function(player)
        player.CharacterAdded:Connect(onCharacter)
    end)

    if localPlayer and localPlayer.Character then
        onCharacter(localPlayer.Character)
    end
end

localPlayer.CharacterAdded:Connect(function(character_)
    task.wait(0.5)

    if tbl2.supa then
        fn4(character_)
    end

    if tbl2.supaV2 then
        fn5(character_)
    end

    if tbl2.loop then
        fn7(character_)
    end

    if tbl2.autoCounter then
        setupAutoCounter()
    end

    if tbl2.noClip then
        fn9()
    end

    if tbl2.m2Block then
        fn10()
    end

    if tbl2.kiba then
        setupKiba()
    end

    if tbl2.downSlam then
        fn12()
    end

    if tbl2.autoSurf then
        setupAutoSurf()
    end

    if tbl2.autoWhirlwindDunk then
        setupAutoWhirlwindDunk()
    end

    if tbl2.slideM1 then
        setupSlideM1()
    end

    if tbl2.autoDownSlam then
        setupAutoDownSlam()
    end

    if tbl2.autoTwisted then
        setupAutoTwisted()
    end

    if tbl2.respawnAtDeath then
        fn16()
    end

    if tbl2.fpsBoost then
        fn18()
    end

    if tbl2.counterToxic then
        setupCounterToxic()
    end

    if tbl2.showCharacter then
        fn20()
    end

    if tbl2.dashTimer then
        fn21()
    end

    if tbl2.techHelper then
        setupTechHelper()
    end
end)

local flag3 = false
local n_2 = 0
local connection4 = nil

local function fn28(arg)
    if connection4 then
        connection4:Disconnect()
        connection4 = nil
    end

    if not tbl2.noEndLag then
        return
    end

    if not arg then
        return
    end
    local humanoid_ = arg:FindFirstChildOfClass("Humanoid")
    local animator = humanoid_ and humanoid_:FindFirstChildOfClass("Animator")
    if not humanoid_ or not animator then
        return
    end

    connection4 = animator.AnimationPlayed:Connect(function(arg2)
        local match = arg2.Animation.AnimationId:match("%d+")

        if match == "10480793962" or match == "10480796021" then
            flag3 = true
            n_2 = os.clock() + 0.85

            task.delay(0.85, function()
                flag3 = false
            end)
        end
    end)
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed or not tbl2.noEndLag then
        return
    end

    if input.KeyCode == Enum.KeyCode.Q and flag3 and os.clock() <= n_2 then
        local character_ = localPlayer.Character
        local communicate = character_ and character_:FindFirstChild("Communicate")

        if communicate then
            pcall(function()
                communicate:FireServer({
                    Dash = Enum.KeyCode.W,
                    Key = Enum.KeyCode.Q,
                    Goal = "KeyPress",
                })
            end)
        end

        flag3 = false
    end
end)

localPlayer.CharacterAdded:Connect(function(character_)
    task.wait(0.5)

    if tbl2.noEndLag then
        fn28(character_)
    end
end)

if localPlayer.Character and tbl2.noEndLag then
    fn28(localPlayer.Character)
end

local tbl10 = {}
local connection5 = nil
local connection6 = nil

local function fn29(arg)
    if arg then
        connection5 = RunService.RenderStepped:Connect(function()
            local character_ = localPlayer.Character
            if not character_ then
                return
            end

            if character_:FindFirstChild("Stunned") then
                pcall(function()
                    character_.Stunned:Destroy()
                end)
            end

            local humanoid_ = character_:FindFirstChild("Humanoid")

            if humanoid_ then
                humanoid_.PlatformStand = false

                if humanoid_.WalkSpeed == 0 then
                    humanoid_.WalkSpeed = 16
                end
            end
        end)
    else
        if connection5 then
            connection5:Disconnect()
        end

        connection5 = nil
    end
end

local function fn30(arg)
    if arg then
        connection6 = RunService.RenderStepped:Connect(function()
            local character_ = localPlayer.Character
            if not character_ then
                return
            end
            local humanoid_ = character_:FindFirstChild("Humanoid")

            if humanoid_ then
                if humanoid_.WalkSpeed < 20 then
                    humanoid_.WalkSpeed = 20
                end

                humanoid_.PlatformStand = false
            end
        end)
    else
        if connection6 then
            connection6:Disconnect()
        end

        connection6 = nil
    end
end

Players = game:GetService("Players")
localPlayer = Players.LocalPlayer
tbl10 = {}
local function fn31() end

notify = function(arg, arg2, arg3)
    if type(lib) == "table" and lib.Notify then
        pcall(function()
            local v3 = lib
            local notify_ = v3.Notify
            local tbl11 = {Title = arg, Content = arg2}
            local duration_ = arg3 or 2
            tbl11.Duration = duration_
            notify_(v3, tbl11)
        end)
    end
end

local function fn32(arg)
    if not arg then
        return nil
    end
    local num = tonumber(tostring(arg))
    n = num
    if n and n > 0 then
        return n
    end

    local ok_, result = pcall(function()
        return Players:GetUserIdFromNameAsync(tostring(arg))
    end)

    ok = ok_
    userId = result
    if ok and type(userId) == "number" then
        return userId
    end
    return nil
end

accessorySignature = function(arg)
    if not arg then
        return nil
    end
    local handle_ = arg:FindFirstChild("Handle")
    h = handle_

    if h then
        local specialMesh = h:FindFirstChildWhichIsA("SpecialMesh")
        local mesh_ = specialMesh or h:FindFirstChildWhichIsA("Mesh")
        mesh = mesh_
        if mesh and type(mesh.MeshId) == "string" and mesh.MeshId ~= "" then
            return mesh.MeshId
        end
    end

    return arg.Name
end

clearAppliedItems = function()
    for i, v3 in ipairs(tbl10) do
        pcall(function()
            if v3 and v3.Parent then
                v3:Destroy()
            end
        end)
    end

    tbl10 = {}
end

copyAvatarFromUserId = function(arg)
    if arg and type(arg) == "number" then
        fn31()
        notify("Avatar Changer", "Loading avatar for UserId: " .. tostring(arg), 2)
        desc = nil

        local ok_ = pcall(function()
            local humanoidDescriptionFromUserId = Players:GetHumanoidDescriptionFromUserId(arg)
            desc = humanoidDescriptionFromUserId
        end)

        ok = ok_

        if ok and desc then
            char = localPlayer.Character

            if not char then
                warn("AvatarChanger: Player character not found")
                notify("Avatar Changer", "Player character not found.", 3)
                return
            end

            local humanoid_ = char:FindFirstChildOfClass("Humanoid")
            humanoid = humanoid_

            if not humanoid then
                warn("AvatarChanger: Humanoid not found")
                notify("Avatar Changer", "Humanoid not found.", 3)
                return
            end

            playerRigType = Enum.HumanoidRigType.R15

            if char:FindFirstChild("Torso") then
                playerRigType = Enum.HumanoidRigType.R6
            end

            dummyModel = nil

            local ok_2 = pcall(function()
                local v3 = Players:CreateHumanoidModelFromDescription(desc, playerRigType)
                dummyModel = v3
            end)

            ok = ok_2

            if ok and dummyModel then
                newAccessorySignatures = {}
                dummyHasShirt = false
                dummyHasPants = false
                dummyHasShirtGraphic = false
                local flag4 = dummyModel:FindFirstChildOfClass("BodyColors") ~= nil
                dummyBodyColors = flag4

                for i, child in ipairs(dummyModel:GetChildren()) do
                    if child:IsA("Accessory") then
                        local v3 = accessorySignature(child)
                        sig = v3

                        if sig then
                            newAccessorySignatures[sig] = true
                        end
                    elseif child:IsA("Shirt") then
                        dummyHasShirt = true
                    elseif child:IsA("Pants") then
                        dummyHasPants = true
                    elseif child:IsA("ShirtGraphic") then
                        dummyHasShirtGraphic = true
                    end
                end

                for i, child in ipairs(char:GetChildren()) do
                    if child:IsA("Shirt") and dummyHasShirt then
                        pcall(function()
                            child:Destroy()
                        end)
                    elseif child:IsA("Pants") and dummyHasPants then
                        pcall(function()
                            child:Destroy()
                        end)
                    elseif child:IsA("ShirtGraphic") and dummyHasShirtGraphic then
                        pcall(function()
                            child:Destroy()
                        end)
                    elseif child:IsA("Accessory") then
                        local v3 = accessorySignature(child)
                        sig = v3

                        if sig and newAccessorySignatures[sig] then
                            pcall(function()
                                child:Destroy()
                            end)
                        end
                    end
                end

                for i, child in ipairs(dummyModel:GetChildren()) do
                    if not child:IsA("Shirt") and not child:IsA("Pants") and not child:IsA("ShirtGraphic") then
                        if child:IsA("Accessory") then
                            local clone_ = child:Clone()
                            clone = clone_
                            local handle_ = clone:FindFirstChild("Handle")
                            handle = handle_

                            if handle then
                                local attachment = handle:FindFirstChildWhichIsA("Attachment")
                                attachmentInHandle = attachment

                                if attachmentInHandle then
                                    local v3 = char:FindFirstChild(attachmentInHandle.Name, true)
                                    charAttachment = v3

                                    if charAttachment then
                                        local weld_ = Instance.new("Weld")
                                        weld = weld_
                                        weld.Name = "AccessoryWeld"
                                        weld.Part0 = charAttachment.Parent
                                        weld.Part1 = handle
                                        weld.C0 = charAttachment.CFrame
                                        weld.C1 = attachmentInHandle.CFrame
                                        weld.Parent = handle
                                    else
                                        local head_ = char:FindFirstChild("Head")
                                        head = head_

                                        if head then
                                            local weldConstraint = Instance.new("WeldConstraint")
                                            weld = weldConstraint
                                            weld.Part0 = handle
                                            weld.Part1 = head
                                            weld.Parent = handle
                                            handle.CFrame = head.CFrame
                                        end
                                    end
                                else
                                    local head_ = char:FindFirstChild("Head")
                                    head = head_

                                    if head then
                                        local weldConstraint = Instance.new("WeldConstraint")
                                        weld = weldConstraint
                                        weld.Part0 = handle
                                        weld.Part1 = head
                                        weld.Parent = handle
                                        handle.CFrame = head.CFrame
                                    end
                                end

                                handle.CanCollide = false
                                handle.Massless = true
                            end

                            clone.Parent = char
                            table.insert(tbl10, clone)
                        elseif child:IsA("BodyColors") then
                            local bodyColors = char:FindFirstChildOfClass("BodyColors")
                            bc = bodyColors

                            if not bc then
                                local bodyColors2 = Instance.new("BodyColors", char)
                                bc = bodyColors2
                            end

                            bc.HeadColor = child.HeadColor
                            bc.LeftArmColor = child.LeftArmColor
                            bc.RightArmColor = child.RightArmColor
                            bc.LeftLegColor = child.LeftLegColor
                            bc.RightLegColor = child.RightLegColor
                            bc.TorsoColor = child.TorsoColor
                            table.insert(tbl10, bc)
                        end
                    else
                        local clone_ = child:Clone()
                        clone = clone_
                        clone.Parent = char
                        table.insert(tbl10, clone)
                    end
                end

                pcall(function()
                    dummyModel:Destroy()
                end)

                notify("Avatar Changer", "Avatar successfully copied!", 3)
                return
            end

            warn("AvatarChanger: Failed to create dummy model from description")
            notify("Avatar Changer", "Failed to create avatar model.", 3)
            return
        end

        warn("AvatarChanger: Failed to fetch HumanoidDescription for", arg)
        notify("Avatar Changer", "Failed to fetch avatar for UserId: " .. tostring(arg), 3)
        return
    end

    warn("AvatarChanger: Invalid userId:", arg)
    notify("Avatar Changer", "Invalid UserId/Name provided.", 3)
end

lastAppliedTarget = nil

forceAvatarChange = function()
    local v3 = tbl2
    local avatarChangerUserId = v3 and tbl2.avatarChangerUserId
    inputText = avatarChangerUserId

    if inputText and inputText ~= "" then
        local v4 = fn32(inputText)
        userId = v4
        if not userId then
            notify("Avatar Changer", "Could not resolve UserId from input: " .. tostring(inputText), 3)
            return
        end
        lastAppliedTarget = userId

        task.spawn(function()
            clearAppliedItems()
            copyAvatarFromUserId(userId)
        end)

        return
    end

    notify("Avatar Changer", "Please enter a UserId or Username.", 3)
end

localPlayer.CharacterAdded:Connect(function(character_)
    task.delay(0.25, function()
        if lastAppliedTarget then
            clearAppliedItems()

            task.spawn(function()
                copyAvatarFromUserId(lastAppliedTarget)
            end)
        end
    end)
end)

_G.ForceAvatarChange = forceAvatarChange

_G.GetLastAvatarTarget = function()
    return lastAppliedTarget
end

_G.ClearAvatarChangerApplied = clearAppliedItems

tbl4.SupaTech:Paragraph({
    Title = "Supa Tech",
    Desc = "Dash in them",
    Image = "lucide:sword",
    ImageSize = 20,
    Color = Color3.fromHex("#ff6b6b"),
})

tbl4.SupaTech:Toggle({
    Title = "Enable Feature",
    Flag = "Save13",
    Value = tbl2.supa,
    Callback = function(supa)
        tbl2.supa = supa

        if supa then
            if localPlayer.Character then
                fn4(localPlayer.Character)
            end
        elseif tbl3.supa then
            tbl3.supa:Disconnect()
            tbl3.supa = nil
        end
    end,
})

tbl4.SupaTech:Toggle({
    Title = "Helper",
    Flag = "Save14",
    Desc = "Use this to headtab",
    Value = tbl2.upperGrasp,
    Callback = function(upperGrasp)
        tbl2.upperGrasp = upperGrasp
        SetupUpperGrasp()

        if not upperGrasp then
            lib:Notify({
                Title = "Upper Grasp",
                Content = "Disabled",
                Duration = 2,
                Icon = "lucide:hand",
            })
        end
    end,
})

tbl4.SupaTech:Slider({
    Title = "Supa Delay (ms)",
    Flag = "Save15",
    Value = {Min = 0, Max = 500, Default = tbl.supaDelay * 1000},
    Callback = function(arg)
        tbl.supaDelay = tonumber(arg) / 1000
    end,
})

tbl4.SupaTech:Slider({
    Title = "Supa Speed (x10)",
    Flag = "Save16",
    Value = {Min = 5, Max = 25, Default = tbl.supaSpeed * 10},
    Callback = function(arg)
        tbl.supaSpeed = tonumber(arg) / 10
    end,
})

tbl4.SideDash:Paragraph({
    Title = "Hook Dash",
    Desc = "Side dash like a pro !(V to choose target C to do hook dash, if ur mobile double tap on someone)",
    Image = "geist:anchor",
    ImageSize = 20,
    Color = Color3.fromHex("#ff6b6b"),
})

tbl4.SideDash:Toggle({
    Title = "Enable Hook Dash",
    Flag = "Save17",
    Value = tbl2.sideDashEnabled,
    Callback = function(sideDashEnabled)
        tbl2.sideDashEnabled = sideDashEnabled

        if sideDashEnabled then
            setupSideDash()
        else
            cleanupSideDash()
        end

        local v3 = lib
        local notify_ = v3.Notify
        local tbl11 = {Title = "Side Dash Assist"}
        local content = sideDashEnabled and "Enabled" or "Disabled"
        tbl11.Content = content
        tbl11.Duration = 2
        notify_(v3, tbl11)
    end,
})

local sideDash = tbl4.SideDash
local colorpicker = sideDash.Colorpicker

local tbl11 = {
    Title = "Target Color",
    Flag = "Save18",
    Desc = "Pick the highlight color",
}

local color = Color3.fromRGB
local sideDashTargetColorR = tbl2.sideDashTargetColorR
local n_3 = sideDashTargetColorR or 255
local sideDashTargetColorG = tbl2.sideDashTargetColorG
local n_4 = sideDashTargetColorG or 0
local sideDashTargetColorB = tbl2.sideDashTargetColorB
local n_5 = sideDashTargetColorB or 0
tbl11.Default = color(n_3, n_4, n_5)
tbl11.Transparency = 0
tbl11.Locked = false

tbl11.Callback = function(arg)
    local color2 = type(arg) == "table" and arg.Color or arg
    setTargetColorFromColor3(color2)

    lib:Notify({
        Title = "SideDash",
        Content = "Target color updated",
        Duration = 1,
    })
end

colorpicker(sideDash, tbl11)

tbl4.SideDash:Toggle({
    Title = "Mobile Mode",
    Flag = "Save19",
    Value = tbl2.sideDashMobileMode,
    Callback = function(sideDashMobileMode)
        tbl2.sideDashMobileMode = sideDashMobileMode

        if tbl2.sideDashEnabled then
            if sideDashMobileMode then
                createMobileDashButton()
            elseif mobileDashGui then
                mobileDashGui:Destroy()
                mobileDashGui = nil
            end
        end
    end,
})

tbl4.SideDash:Toggle({
    Title = "Show Highlight",
    Value = tbl2.sideDashShow,
    Callback = function(sideDashShow)
        tbl2.sideDashShow = sideDashShow
        updateTargetColor()
    end,
})

tbl4.SideDash:Paragraph({
    Title = "Sorry !",
    Desc = "Other configs will come in feture updates !",
    Image = "geist:anchor",
    ImageSize = 20,
    Color = Color3.fromHex("#ff6b6b"),
})

tbl4.LoopDash:Paragraph({
    Title = "Loop Dash",
    Desc = "Do a loop while dashing",
    Image = "lucide:refresh-ccw-dot",
    ImageSize = 20,
    Color = Color3.fromHex("#4ecdc4"),
})

tbl4.LoopDash:Toggle({
    Title = "Enable Feature",
    Flag = "Save20",
    Value = tbl2.loop,
    Callback = function(loop)
        tbl2.loop = loop

        if loop then
            if localPlayer.Character then
                fn7(localPlayer.Character)
            end
        elseif tbl3.loop then
            tbl3.loop:Disconnect()
            tbl3.loop = nil
        end
    end,
})

tbl4.LoopDash:Slider({
    Title = "Loop Delay ",
    Flag = "Save21",
    Value = {Min = 0, Max = 500, Default = tbl.loopDelay * 1000},
    Callback = function(arg)
        tbl.loopDelay = tonumber(arg) / 1000
    end,
})

tbl4.LoopDash:Slider({
    Title = "Loop Radius",
    Flag = "Save22",
    Value = {Min = 2, Max = 10, Default = tbl.loopRadius},
    Callback = function(arg)
        tbl.loopRadius = tonumber(arg)
    end,
})

tbl4.LoopDashv2:Paragraph({
    Title = "Loop Dash v2 / Rework",
    Desc = "Just better loop dash, can also be used for oreo tech !",
    Image = "lucide:refresh-ccw-dot",
    ImageSize = 20,
    Color = Color3.fromHex("#4ecdc4"),
})

tbl4.LoopDashv2:Toggle({
    Title = "LoopDash v2 Enabled",
    Flag = "Save23",
    Value = tbl2.loopRework,
    Callback = function(loopRework)
        tbl2.loopRework = loopRework
        loopReworkSetupLoopRework()
        local v3 = lib
        local notify_ = v3.Notify
        local tbl12 = {Title = "LoopDash v2"}
        local content = loopRework and "ENABLED" or "DISABLED"
        tbl12.Content = content
        local icon = loopRework and "lucide:check" or "lucide:x"
        tbl12.Icon = icon
        tbl12.Duration = 2
        notify_(v3, tbl12)
    end,
})

tbl4.LoopDashv2:Toggle({
    Title = "Jump Assist",
    Flag = "Save24",
    Desc = "Use this for oreo tech !",
    Value = tbl2.ForceJumpEnabled,
    Callback = function(forceJumpEnabled)
        tbl2.ForceJumpEnabled = forceJumpEnabled

        if forceJumpEnabled then
            loopReworkForceJumpSetup()
            loopReworkForceJumpUpdateCharacter(localPlayer.Character)
        else
            loopReworkForceJumpUnload()
        end
    end,
})

local loopDashv2 = tbl4.LoopDashv2
local slider = loopDashv2.Slider
local tbl12 = {Title = "Jump hight", Flag = "Save25"}
local value = {Min = 10, Max = 100}
local forceJumpUpwardVelocity = tbl2.ForceJumpUpwardVelocity
local default = forceJumpUpwardVelocity or 52
value.Default = default
tbl12.Value = value

tbl12.Callback = function(forceJumpUpwardVelocity2)
    tbl2.ForceJumpUpwardVelocity = forceJumpUpwardVelocity2
end

slider(loopDashv2, tbl12)

tbl4.LoopDashv2:Slider({
    Title = "Delay ",
    Flag = "Save26",
    Value = {Min = 0, Max = 10, Default = tbl2.loopReworkWaitDetect},
    Callback = function(loopReworkWaitDetect)
        tbl2.loopReworkWaitDetect = loopReworkWaitDetect
    end,
})

tbl4.LoopDashv2:Slider({
    Title = "First Flick Delay",
    Flag = "Save27",
    Value = {Min = 0, Max = 10, Default = tbl2.loopReworkWaitRemote},
    Callback = function(loopReworkWaitRemote)
        tbl2.loopReworkWaitRemote = loopReworkWaitRemote
    end,
})

tbl4.LoopDashv2:Slider({
    Title = "Smoothness",
    Flag = "Save28",
    Value = {
        Min = 1,
        Max = 1000,
        Default = tbl2.loopReworkResponsiveness,
    },
    Callback = function(loopReworkResponsiveness)
        tbl2.loopReworkResponsiveness = loopReworkResponsiveness
    end,
})

tbl4.KAKYO:Paragraph({
    Title = "Auto Kyoto tech!",
    Desc = "Flowing water into lethal",
    Image = "lucide:step-forward",
    ImageSize = 20,
    Color = Color3.fromHex("#052f8a"),
})

tbl4.KAKYO:Toggle({
    Title = "Auto Kyoto",
    Flag = "Save29",
    Value = kakyoAutoEnabled,
    Callback = function(arg)
        kakyoAutoEnabled = arg

        if arg then
            KAKYO_Start()
        else
            KAKYO_Stop()
        end
    end,
})

tbl4.KAKYO:Slider({
    Title = "Distance",
    Flag = "Save30",
    Value = {Min = 0, Max = 50, Default = kakyoDistance},
    Callback = function(arg)
        local floor = math.floor
        local num = tonumber(arg)
        local v3 = num or kakyoDistance
        local v4 = floor(v3)
        kakyoDistance = v4
    end,
})

local kakyo = tbl4.KAKYO
local slider2 = kakyo.Slider
local tbl13 = {Title = "Delay", Flag = "Save31"}
local value2 = {Min = 1, Max = 1000}
local floor = math.floor
local v3 = kakyoStartDelay
local n_6 = v3 or 0
value2.Default = floor(n_6 * 1000)
tbl13.Value = value2

tbl13.Callback = function(arg)
    local num = tonumber(arg)
    local n_7 = num or 0
    kakyoStartDelay = n_7 / 1000
end

slider2(kakyo, tbl13)

tbl4.KAKYO:Toggle({
    Title = "Auto Hunter Surf",
    Flag = "Save32",
    Value = tbl2.autoSurf,
    Callback = function(autoSurf)
        tbl2.autoSurf = autoSurf

        if autoSurf then
            setupAutoSurf()
        else
            if autoSurfCharConnection then
                autoSurfCharConnection:Disconnect()
                autoSurfCharConnection = nil
            end

            if autoSurfRenderConnection then
                autoSurfRenderConnection:Disconnect()
                autoSurfRenderConnection = nil
            end

            autoSurfActive = false
            autoSurfIsTweening = false
        end
    end,
})

tbl4.LethalDash:Paragraph({
    Title = "Lethal Dash",
    Flag = "Save33",
    Desc = "Lethal water into a dash",
    Image = "geist:arrow-up-down",
    ImageSize = 20,
    Color = Color3.fromHex("#eb4d4b"),
})

tbl4.LethalDash:Toggle({
    Title = "Enable LethalDash",
    Flag = "Save34",
    Value = tbl2.autoLockJump,
    Callback = function(autoLockJump)
        tbl2.autoLockJump = autoLockJump
        SetupAutoLockJump()
    end,
})

tbl4.LethalDash:Slider({
    Title = "First flick delay",
    Flag = "Save35",
    Value = {Min = 0, Max = 10, Default = tbl2.autoLockJumpWaitRemote},
    Callback = function(arg)
        local autoLockJumpWaitRemote3 = tonumber(arg)
        tbl2.autoLockJumpWaitRemote = autoLockJumpWaitRemote3
    end,
})

tbl4.LethalDash:Slider({
    Title = "Smoothness",
    Flag = "Save36",
    Value = {
        Min = 20,
        Max = 1000,
        Default = tbl2.autoLockJumpResponsiveness,
    },
    Callback = function(arg)
        local autoLockJumpResponsiveness2 = tonumber(arg)
        tbl2.autoLockJumpResponsiveness = autoLockJumpResponsiveness2
    end,
})

tbl4.LethalDash:Toggle({
    Title = "Auto Lethal Dunk",
    Flag = "Save37",
    Value = tbl2.autoWhirlwindDunk,
    Callback = function(autoWhirlwindDunk)
        tbl2.autoWhirlwindDunk = autoWhirlwindDunk

        if autoWhirlwindDunk then
            setupAutoWhirlwindDunk()
        else
            if autoWhirlwindDunkConnection then
                autoWhirlwindDunkConnection:Disconnect()
                autoWhirlwindDunkConnection = nil
            end

            autoWhirlwindDunkIsTeleporting = false
            autoWhirlwindDunkLastTrack = nil
        end
    end,
})

tbl4.M1Reset:Button({
    Title = "Execute M1 Reset Script",
    Icon = "zap",
    Callback = function()
        loadstring("            local Players=game:GetService(\"Players\");local Plr=Players.LocalPlayer;local UIS=game:GetService(\"UserInputService\");local TweenService=game:GetService(\"TweenService\");local RunService=game:GetService(\"RunService\");local Workspace=game:GetService(\"Workspace\");local ReplicatedStorage=game:GetService(\"ReplicatedStorage\");local VIM;pcall(function()VIM=game:GetService(\"VirtualInputManager\")end)VIM=VIM or rawget(_G,\"VirtualInputManager\") or (rawget(_G,\"syn\") and rawget(_G,\"syn\").virtual_input) or rawget(_G,\"virtualinputmanager\");local KEYBINDS={M1_RESET=Enum.KeyCode.R,EMOTE_DASH=Enum.KeyCode.T};getgenv().connections=getgenv().connections or {} if type(getgenv().connections)==\"table\"then for _,c in ipairs(getgenv().connections)do pcall(function()if c and c.Disconnect then c:Disconnect()end end)end end;getgenv().connections={};local function chooseGuiParent(timeout)timeout=timeout or 2;if type(gethui)==\"function\"then local ok,g=pcall(gethui)if ok and g then return g end end;if Plr then local s=tick() while tick()-s<timeout do if Plr:FindFirstChild(\"PlayerGui\")then return Plr.PlayerGui end task.wait(0.05)end if Plr:FindFirstChild(\"PlayerGui\")then return Plr.PlayerGui end end;local ok,core=pcall(function()return game:GetService(\"CoreGui\")end)if ok and core then return core end;return game:GetService(\"StarterGui\")end;local GuiParent=chooseGuiParent(3);pcall(function()for _,name in ipairs({\"M1_RESET_UI\",\"TSB_UI\",\"M1ResetUI\"})do local old=GuiParent:FindFirstChild(name)if old then old:Destroy()end end end);local function protectGui(g)local _syn=rawget(_G,\"syn\")if _syn and type(_syn.protect_gui)==\"function\"then pcall(function()_syn.protect_gui(g)end)end end;local Themes={{name=\"Dark\",Panel=Color3.fromRGB(30,30,30),Button=Color3.fromRGB(50,50,50),Accent=Color3.fromRGB(200,200,200),Text=Color3.fromRGB(255,255,255)},{name=\"Gray\",Panel=Color3.fromRGB(60,60,60),Button=Color3.fromRGB(80,80,80),Accent=Color3.fromRGB(150,150,150),Text=Color3.fromRGB(255,255,255)},{name=\"Black\",Panel=Color3.fromRGB(20,20,20),Button=Color3.fromRGB(40,40,40),Accent=Color3.fromRGB(100,100,100),Text=Color3.fromRGB(255,255,255)},{name=\"Neon\",Panel=Color3.fromRGB(10,10,10),Button=Color3.fromRGB(0,200,255),Accent=Color3.fromRGB(255,0,255),Text=Color3.fromRGB(255,255,255)},{name=\"Cyber\",Panel=Color3.fromRGB(15,15,20),Button=Color3.fromRGB(35,35,45),Accent=Color3.fromRGB(0,255,150),Text=Color3.fromRGB(255,255,255)}};local themeIndex,Theme=1,Themes[1];local function roundify(inst,r)local c=Instance.new(\"UICorner\")c.CornerRadius=UDim.new(0,r or 12)c.Parent=inst end;local function stroke(inst,color,thickness,trans)local s=Instance.new(\"UIStroke\")s.Color=color or Theme.Accent s.Thickness=thickness or 1 s.Transparency=trans or 0.5 s.Parent=inst end;local rootGui=nil;local floats={};local isPerformingAction=false;local animCache={};local camera=Workspace.CurrentCamera;local function getCharacter()local char=Plr and Plr.Character;local humanoid=char and char:FindFirstChildOfClass(\"Humanoid\");return char,humanoid end;local function Stopallanimation()local _,humanoid=getCharacter() if humanoid then local animator=humanoid:FindFirstChildOfClass(\"Animator\") if animator then local success,tracks=pcall(function()return animator:GetPlayingAnimationTracks()end) if success and tracks then for _,track in ipairs(tracks)do pcall(function()track:Stop()end)end end end end end;local function playAnimation(animationId)local _,humanoid=getCharacter() if not humanoid then return end;local animator=humanoid:FindFirstChildOfClass(\"Animator\") if not animator then animator=Instance.new(\"Animator\") animator.Parent=humanoid end;local animation=animCache[animationId] if not animation then animation=Instance.new(\"Animation\") animation.AnimationId=\"rbxassetid://\"..tostring(animationId) animCache[animationId]=animation end;local ok,animTrack=pcall(function()return animator:LoadAnimation(animation)end) if not ok or not animTrack then return end;animTrack.Priority=Enum.AnimationPriority.Action;animTrack:Play();pcall(function()animTrack:AdjustSpeed(1.2)end);return animTrack end;local function rotateCharacter(degrees) if isPerformingAction then return end;isPerformingAction=true;local character,_=getCharacter() local rootPart=character and character:FindFirstChild(\"HumanoidRootPart\") if rootPart then pcall(function() rootPart.CFrame=rootPart.CFrame*CFrame.Angles(0,math.rad(degrees),0);local camPos=camera and camera.CFrame.Position or rootPart.Position+Vector3.new(0,5,0);local camY=camPos.Y;local distanceVec=camPos-rootPart.Position;local flatVec=Vector3.new(distanceVec.X,0,distanceVec.Z);local rotatedVec=CFrame.fromAxisAngle(Vector3.yAxis,math.rad(degrees))*flatVec;local newCamPos=rootPart.Position+rotatedVec;if camera and camera:IsA(\"Camera\") then camera.CFrame=CFrame.lookAt(Vector3.new(newCamPos.X,camY,newCamPos.Z),rootPart.Position) end end) end;isPerformingAction=false end;local function sideDash(direction,distance,duration) if isPerformingAction then return end;isPerformingAction=true;local character,_=getCharacter() local rootPart=character and character:FindFirstChild(\"HumanoidRootPart\") if rootPart then local tween=TweenService:Create(rootPart,TweenInfo.new(duration,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{CFrame=rootPart.CFrame*CFrame.new(direction*distance,0,0)}) pcall(function()tween:Play()end) if tween then pcall(function()tween.Completed:Wait()end) end pcall(function()tween:Destroy()end) end;isPerformingAction=false end;local function impulseDash(direction,distance,height,power,duration) if isPerformingAction then return end;isPerformingAction=true;local character,_=getCharacter() local rootPart=character and character:FindFirstChild(\"HumanoidRootPart\") if rootPart then local force=Instance.new(\"BodyVelocity\") local vec=(rootPart.CFrame.RightVector*direction*distance+Vector3.new(0,height,0)) if vec.Magnitude==0 then vec=Vector3.new(0,1,0) end;force.Velocity=vec.Unit*power;force.MaxForce=Vector3.new(math.huge,math.huge,math.huge);force.Parent=rootPart;task.delay(duration,function() pcall(function()force:Destroy()end) end) end;isPerformingAction=false end;local function doM1Reset() Stopallanimation();pcall(function()playAnimation(10480793962)end);pcall(function()sideDash(1,26,0.22)end);pcall(function()rotateCharacter(70)end);task.wait(0.003);pcall(function() if VIM and type(VIM.SendKeyEvent)==\"function\" then VIM:SendKeyEvent(true,Enum.KeyCode.Q,false,game) VIM:SendKeyEvent(false,Enum.KeyCode.Q,false,game) end end) end;local function doEmoteDash() Stopallanimation();pcall(function()playAnimation(10480793962)end);pcall(function()rotateCharacter(90)end);pcall(function()impulseDash(1,38,8,95,0.27)end) end;local vimAvailable=(VIM and type(VIM.SendKeyEvent)==\"function\");rootGui=Instance.new(\"ScreenGui\") rootGui.Name=\"M1_RESET_UI\" rootGui.ResetOnSpawn=false rootGui.IgnoreGuiInset=true rootGui.DisplayOrder=9999 rootGui.ZIndexBehavior=Enum.ZIndexBehavior.Global;local function setRootParent() local parent=(Plr and Plr:FindFirstChild(\"PlayerGui\")) or game:GetService(\"CoreGui\") or game:GetService(\"StarterGui\");local ok=pcall(function() rootGui.Parent=parent end);if ok and rootGui.Parent then return true end;local alt=chooseGuiParent(2);local ok2=pcall(function() rootGui.Parent=alt end);return ok2 and rootGui.Parent end;setRootParent();protectGui(rootGui);local function applyTheme() for _,inst in ipairs(rootGui:GetDescendants())do if inst:IsA(\"TextLabel\") or inst:IsA(\"TextButton\") then inst.TextColor3=Theme.Text end if inst:IsA(\"Frame\") then inst.BackgroundColor3=Theme.Panel end if inst:IsA(\"TextButton\") and inst.Name~=\"MobileBtn\" then inst.BackgroundColor3=Theme.Button end local s=inst:FindFirstChildOfClass(\"UIStroke\") if s then pcall(function() s.Color=Theme.Accent end) end end for _,f in ipairs(floats)do if f then f.BackgroundColor3=Theme.Button f.TextColor3=Theme.Text local s=f:FindFirstChildOfClass(\"UIStroke\") if s then pcall(function() s.Color=Theme.Accent end) end end end end;local Intro=Instance.new(\"Frame\",rootGui) Intro.Size=UDim2.fromOffset(300,160) Intro.Position=UDim2.new(0.5,-150,0.1,-200) Intro.BackgroundColor3=Theme.Panel Intro.BackgroundTransparency=0.15 roundify(Intro,14) stroke(Intro,Theme.Accent,1,0.5);local IntroTxt=Instance.new(\"TextLabel\",Intro) IntroTxt.Size=UDim2.fromScale(1,1) IntroTxt.BackgroundTransparency=1 IntroTxt.TextColor3=Theme.Text IntroTxt.Font=Enum.Font.GothamBold IntroTxt.TextSize=20 IntroTxt.TextWrapped=true IntroTxt.Text=\"M1 Reset by sentinal!\\nKeybinds: R = M1 Reset | T = Emote Dash\" pcall(function()TweenService:Create(Intro,TweenInfo.new(0.5,Enum.EasingStyle.Bounce,Enum.EasingDirection.Out),{Position=UDim2.new(0.5,-150,0.1,0)}):Play()end) task.delay(4,function() pcall(function()TweenService:Create(Intro,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.In),{Position=UDim2.new(0.5,-150,0.1,-200)}):Play()end) task.wait(0.4) pcall(function() if Intro and Intro.Parent then Intro:Destroy() end end) end);local Panel=Instance.new(\"Frame\",rootGui) Panel.Size=UDim2.new(0,190,0,200) Panel.Position=UDim2.new(0,20,0.5,0) Panel.BackgroundColor3=Theme.Panel Panel.BackgroundTransparency=1 roundify(Panel,16) stroke(Panel,Theme.Accent,1,0.5) pcall(function()TweenService:Create(Panel,TweenInfo.new(0.4),{BackgroundTransparency=0.2}):Play()end);do local dragging,dragInput,dragStart,startPos=false,nil,nil,nil;Panel.InputBegan:Connect(function(input) if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then dragging=true dragInput=input dragStart=input.Position startPos=Panel.Position input.Changed:Connect(function() if input.UserInputState==Enum.UserInputState.End then dragging=false end end) end end);Panel.InputChanged:Connect(function(input) if input.UserInputType==Enum.UserInputType.MouseMovement or input.UserInputType==Enum.UserInputType.Touch then dragInput=input end end);RunService.RenderStepped:Connect(function() if dragging and dragInput and dragStart and startPos then local delta=dragInput.Position-dragStart Panel.Position=UDim2.new(startPos.X.Scale,startPos.X.Offset+delta.X,startPos.Y.Scale,startPos.Y.Offset+delta.Y) end end) end;local Header=Instance.new(\"Frame\",Panel) Header.Size=UDim2.new(1,0,0,34) Header.BackgroundTransparency=1;local Title=Instance.new(\"TextLabel\",Header) Title.Size=UDim2.new(1,-130,1,0) Title.Position=UDim2.new(0,12,0,0) Title.BackgroundTransparency=1 Title.Text=\"M1 reset by sentinal!\" Title.Font=Enum.Font.GothamBlack Title.TextSize=16 Title.TextColor3=Theme.Text Title.TextXAlignment=Enum.TextXAlignment.Left;local ThemeBtn=Instance.new(\"TextButton\",Header) ThemeBtn.Size=UDim2.new(0,100,0,30) ThemeBtn.Position=UDim2.new(1,-110,0.5,-15) ThemeBtn.BackgroundColor3=Theme.Button ThemeBtn.TextColor3=Theme.Text ThemeBtn.Font=Enum.Font.GothamBold ThemeBtn.TextSize=14 ThemeBtn.Text=\"Theme: \"..Theme.name roundify(ThemeBtn,10) stroke(ThemeBtn,Theme.Accent,1,0.5) ThemeBtn.MouseButton1Click:Connect(function() themeIndex=themeIndex%#Themes+1 Theme=Themes[themeIndex] ThemeBtn.Text=\"Theme: \"..Theme.name applyTheme() end);local factoryButtons={} local function makeBtn(text,y,cb) local b=Instance.new(\"TextButton\",Panel) b.Size=UDim2.new(1,-24,0,44) b.Position=UDim2.new(0,12,0,y) b.BackgroundColor3=Theme.Button b.TextColor3=Theme.Text b.Font=Enum.Font.GothamBold b.TextSize=16 b.Text=text roundify(b,12) stroke(b,Theme.Accent,1,0.5) b.AutoButtonColor=false b.MouseEnter:Connect(function() pcall(function()TweenService:Create(b,TweenInfo.new(0.15),{BackgroundColor3=Theme.Accent,Size=UDim2.new(1,-22,0,46)}):Play()end) end) b.MouseLeave:Connect(function() pcall(function()TweenService:Create(b,TweenInfo.new(0.15),{BackgroundColor3=Theme.Button,Size=UDim2.new(1,-24,0,44)}):Play()end) end) b.MouseButton1Down:Connect(function() pcall(function()TweenService:Create(b,TweenInfo.new(0.1),{Size=UDim2.new(1,-26,0,42)}):Play()end) end) b.MouseButton1Up:Connect(function() pcall(function()TweenService:Create(b,TweenInfo.new(0.1),{Size=UDim2.new(1,-22,0,46)}):Play()end) end) b.MouseButton1Click:Connect(function() task.spawn(function() pcall(cb) end) end) table.insert(factoryButtons,b) return b end;local btnM1=makeBtn(\"M1 Reset\",54,doM1Reset) local btnEmote=makeBtn(\"Emote Dash\",104,doEmoteDash) local btnUnload=makeBtn(\"Unload\",154,function() for _,c in ipairs(getgenv().connections)do pcall(function() if c and c.Disconnect then c:Disconnect() end end) end getgenv().connections={} pcall(function()rootGui:Destroy()end) end);local mobileMode=false;local function createFloat(btn,idx) task.wait(0.1) local screenSize=camera and camera.ViewportSize or Vector2.new(1920,1080) local baseX=20+(idx-1)*150 local baseY=screenSize.Y-100 local f=Instance.new(\"TextButton\",rootGui) f.Size=UDim2.new(0,140,0,45) f.Position=UDim2.new(0,math.clamp(baseX,12,screenSize.X-150),0,math.clamp(baseY,12,screenSize.Y-60)) f.BackgroundColor3=Theme.Button f.TextColor3=Theme.Text f.Font=btn.Font f.TextSize=btn.TextSize f.Text=btn.Text roundify(f,12) stroke(f,Theme.Accent,1,0.5) f.ZIndex=100 f.BackgroundTransparency=1 f.TextTransparency=1 pcall(function()TweenService:Create(f,TweenInfo.new(0.3),{BackgroundTransparency=0,TextTransparency=0}):Play()end) f.MouseButton1Click:Connect(function() if f.Text:match(\"M1\") then pcall(doM1Reset) elseif f.Text:match(\"Emote\") then pcall(doEmoteDash) end end) do local dragging,dragInput,dragStart,startPos=false,nil,nil,nil f.InputBegan:Connect(function(input) if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then dragging=true dragInput=input dragStart=input.Position startPos=Vector2.new(f.Position.X.Offset,f.Position.Y.Offset) input.Changed:Connect(function() if input.UserInputState==Enum.UserInputState.End then dragging=false end end) end end) f.InputChanged:Connect(function(input) if input.UserInputType==Enum.UserInputType.MouseMovement or input.UserInputType==Enum.UserInputType.Touch then dragInput=input end end) local conn conn=RunService.RenderStepped:Connect(function() if dragging and dragInput and dragStart and startPos then local delta=dragInput.Position-dragStart local newPos=startPos+Vector2.new(delta.X,delta.Y) f.Position=UDim2.new(0,newPos.X,0,newPos.Y) end end) f.AncestryChanged:Connect(function() if not f.Parent and conn then conn:Disconnect() end end) end return f end;local MobileBtn=Instance.new(\"TextButton\",Panel) MobileBtn.Size=UDim2.new(0,100,0,30) MobileBtn.Position=UDim2.new(1,-110,1,5) MobileBtn.BackgroundColor3=Theme.Button MobileBtn.TextColor3=Theme.Text MobileBtn.Font=Enum.Font.GothamBold MobileBtn.TextSize=14 MobileBtn.Text=\"Mobile: OFF\" roundify(MobileBtn,10) stroke(MobileBtn,Theme.Accent,1,0.5) MobileBtn.MouseButton1Click:Connect(function() mobileMode=not mobileMode MobileBtn.Text=mobileMode and \"Mobile: ON\" or \"Mobile: OFF\" if mobileMode then pcall(function()TweenService:Create(Panel,TweenInfo.new(0.3),{Size=UDim2.new(0,160,0,100)}):Play()end) Panel.Position=UDim2.new(0,20,0.6,0) btnM1.Visible=false btnEmote.Visible=false pcall(function()TweenService:Create(btnUnload,TweenInfo.new(0.3),{Position=UDim2.new(0,12,0,54)}):Play()end) floats={} table.insert(floats,createFloat(btnM1,1)) table.insert(floats,createFloat(btnEmote,2)) else for _,f in ipairs(floats)do pcall(function()TweenService:Create(f,TweenInfo.new(0.2),{BackgroundTransparency=1,TextTransparency=1}):Play()end) task.wait(0.3) pcall(function()f:Destroy()end) end floats={} pcall(function()TweenService:Create(Panel,TweenInfo.new(0.3),{Size=UDim2.new(0,190,0,200)}):Play()end) Panel.Position=UDim2.new(0,20,0.5,0) btnM1.Visible=true btnEmote.Visible=true pcall(function()TweenService:Create(btnUnload,TweenInfo.new(0.3),{Position=UDim2.new(0,12,0,154)}):Play()end) end end);applyTheme();local connInput=UIS.InputBegan:Connect(function(input,gpe) if gpe then return end if UIS:GetFocusedTextBox() then return end if input.UserInputType~=Enum.UserInputType.Keyboard then return end if input.KeyCode==KEYBINDS.M1_RESET then pcall(doM1Reset) elseif input.KeyCode==KEYBINDS.EMOTE_DASH then pcall(doEmoteDash) end end) table.insert(getgenv().connections,connInput)\n        ")()
    end,
})

tbl4.M1Reset:Toggle({
    Title = "No End Lag",
    Flag = "Save38",
    Value = tbl2.noEndLag,
    Callback = function(noEndLag)
        tbl2.noEndLag = noEndLag

        if noEndLag then
            if localPlayer.Character then
                fn28(localPlayer.Character)
            end

            lib:Notify({Title = "No End Lag", Content = "Enabled", Duration = 2})
        else
            if connection4 then
                connection4:Disconnect()
                connection4 = nil
            end

            flag3 = false
            lib:Notify({Title = "No End Lag", Content = "Disabled", Duration = 2})
        end
    end,
})

tbl4.InstantTwisted:Paragraph({
    Title = "Instant Twisted",
    Desc = "4m1 into a dash",
    Image = "lucide:corner-up-right",
    ImageSize = 20,
    Color = Color3.fromHex("#00b894"),
})

tbl4.InstantTwisted:Toggle({
    Title = "Enable Instant Twisted",
    Value = tbl2.instantTwisted,
    Callback = function(instantTwisted)
        tbl2.instantTwisted = instantTwisted

        if instantTwisted then
            fn8()
        end
    end,
})

tbl4.InstantTwisted:Toggle({
    Title = "Normal twisted",
    Flag = "Save39",
    Value = tbl2.autoTwisted,
    Callback = function(autoTwisted)
        tbl2.autoTwisted = autoTwisted

        if autoTwisted then
            setupAutoTwisted()
        else
            if autoTwistedAnimationConnection then
                autoTwistedAnimationConnection:Disconnect()
                autoTwistedAnimationConnection = nil
            end

            if autoTwistedCharAddedConnection then
                autoTwistedCharAddedConnection:Disconnect()
                autoTwistedCharAddedConnection = nil
            end
        end
    end,
})

tbl4.AutoCounter:Paragraph({
    Title = "Auto Counter",
    Desc = "Automatically counter attacks",
    Image = "lucide:shield",
    ImageSize = 20,
    Color = Color3.fromHex("#0984e3"),
})

tbl4.AutoCounter:Toggle({
    Title = "Enable Feature",
    Flag = "Save40",
    Value = tbl2.autoCounter,
    Callback = function(autoCounter)
        tbl2.autoCounter = autoCounter

        if autoCounter then
            setupAutoCounter()
        elseif tbl3.autoCounter then
            tbl3.autoCounter:Disconnect()
            tbl3.autoCounter = nil
        end
    end,
})

tbl4.AutoCounter:Slider({
    Title = "Counter Distance",
    Flag = "Save41",
    Value = {Min = 5, Max = 20, Default = tbl.autoCounterDistance},
    Callback = function(arg)
        tbl.autoCounterDistance = tonumber(arg)
    end,
})

tbl4.YOYO:Paragraph({
    Title = "Kiba Tech",
    Desc = "uhh dash and look up...idk :3",
    Image = "lucide:crosshair",
    ImageSize = 20,
    Color = Color3.fromHex("#ff6b6b"),
})

tbl4.YOYO:Toggle({
    Title = "Enable Kiba Tech",
    Flag = "Save42",
    Value = tbl2.yoyo,
    Callback = function(yoyo)
        tbl2.yoyo = yoyo

        if yoyo then
            if localPlayer.Character then
                setupYOYOCharacter(localPlayer.Character)
            end
        else
            yoyoDetach()

            if tbl3.yoyo then
                tbl3.yoyo:Disconnect()
                tbl3.yoyo = nil
            end
        end
    end,
})

tbl4.TechHelper:Paragraph({
    Title = "Tech Helper",
    Desc = "helps with techs....duhh",
    Image = "lucide:hand-helping",
    ImageSize = 20,
    Color = Color3.fromHex("#a29bfe"),
})

tbl4.TechHelper:Toggle({
    Title = "Enable Feature",
    Flag = "Save43",
    Value = tbl2.techHelper,
    Callback = function(techHelper)
        tbl2.techHelper = techHelper

        if techHelper then
            setupTechHelper()
        elseif tbl3.techHelper then
            tbl3.techHelper:Disconnect()
            tbl3.techHelper = nil
        end
    end,
})

tbl4.TechHelper:Slider({
    Title = "Tech Helper Delay (ms)",
    Flag = "Save44",
    Value = {Min = 100, Max = 500, Default = tbl.techHelperDelay * 1000},
    Callback = function(arg)
        tbl.techHelperDelay = tonumber(arg) / 1000
    end,
})

tbl4.TechHelper:Slider({
    Title = "Tech Helper Hold (ms)",
    Flag = "Save45",
    Value = {Min = 50, Max = 500, Default = tbl.techHelperHold * 1000},
    Callback = function(arg)
        tbl.techHelperHold = tonumber(arg) / 1000
    end,
})

tbl4.TechHelper:Toggle({
    Title = "Tech Helper Look Up",
    Flag = "Save46",
    Value = tbl.techHelperLookUp,
    Callback = function(techHelperLookUp)
        tbl.techHelperLookUp = techHelperLookUp
    end,
})

tbl4.TechHelper:Slider({
    Title = "Tech Helper Lock Percentage",
    Value = {Min = 0, Max = 100, Default = tbl.techHelperLockPercent},
    Callback = function(arg)
        tbl.techHelperLockPercent = tonumber(arg)
    end,
})

tbl4.TechHelper:Divider()

tbl4.TechHelper:Toggle({
    Title = "Enable M1 Catch",
    Flag = "Save47",
    Value = tbl2.m1Catch,
    Callback = function(m1Catch)
        tbl2.m1Catch = m1Catch
        fn17(m1Catch)
        local v4 = lib
        local notify_ = v4.Notify
        local tbl14 = {Title = "M1 Catch"}
        local content = m1Catch and "Enabled" or "Disabled"
        tbl14.Content = content
        tbl14.Duration = 2
        notify_(v4, tbl14)
    end,
})

tbl4.TechHelper:Slider({
    Title = "M1 Catch Range (studs)",
    Flag = "Save48",
    Value = {Min = 2, Max = 20, Default = tbl2.m1Range},
    Callback = function(arg)
        local m1Range = tonumber(arg)
        tbl2.m1Range = m1Range
    end,
})

tbl4.TechHelper:Slider({
    Title = "M1 Catch Hold (ms)",
    Flag = "Save49",
    Value = {Min = 10, Max = 1000, Default = tbl2.m1Hold},
    Callback = function(arg)
        local m1Hold = tonumber(arg)
        tbl2.m1Hold = m1Hold
    end,
})

tbl4.TechHelper:Slider({
    Title = "M1 Catch Prediction %",
    Flag = "Save50",
    Value = {Min = 0, Max = 100, Default = tbl2.m1Pred},
    Callback = function(arg)
        local m1Pred = tonumber(arg)
        tbl2.m1Pred = m1Pred
    end,
})

tbl4.TechHelper:Divider()

tbl4.TechHelper:Toggle({
    Title = "Fast Dash",
    Flag = "Save51",
    Desc = "NOT COMPATIBLE WITH MOST FETURES",
    Value = tbl2.fastDash,
    Callback = function(fastDash)
        tbl2.fastDash = fastDash

        if fastDash then
            if localPlayer.Character then
                fn19(localPlayer.Character)
            end

            lib:Notify({Title = "Fast Dash", Content = "Enabled", Duration = 2})
        else
            if tbl3.fastDash then
                tbl3.fastDash:Disconnect()
                tbl3.fastDash = nil
            end

            lib:Notify({Title = "Fast Dash", Content = "Disabled", Duration = 2})
        end
    end,
})

tbl4.TechHelper:Toggle({
    Title = "Only Torso Collisions",
    Flag = "Save52",
    Value = tbl2.onlyTorsoCollisions,
    Callback = function(onlyTorsoCollisions)
        tbl2.onlyTorsoCollisions = onlyTorsoCollisions
        setupOnlyTorsoCollisions()
        local v4 = lib
        local notify_ = v4.Notify
        local tbl14 = {Title = "Only Torso Collisions"}
        local content = onlyTorsoCollisions and "Only Torso Collisions enabled" or "Only Torso Collisions disabled"
        tbl14.Content = content
        tbl14.Duration = 3
        notify_(v4, tbl14)
    end,
})

tbl4.TechHelper:Divider()

tbl4.TechHelper:Toggle({
    Title = "Enable MouseDash",
    Flag = "Save53",
    Value = tbl2.mouseDash,
    Callback = function(mouseDash)
        tbl2.mouseDash = mouseDash
        fn27()
    end,
})

tbl4.TechHelper:Slider({
    Title = "MouseDash Delay (ms)",
    Flag = "Save54",
    Value = {Min = 500, Max = 3000, Default = tbl2.mouseDashDelay},
    Callback = function(mouseDashDelay)
        tbl2.mouseDashDelay = mouseDashDelay
    end,
})

for i, v4 in ipairs({
    {
        Name = "Baldy To Sorcerer",
        URL = "https://raw.githubusercontent.com/Onihub-sigma/OniHub-Gojo-Public/refs/heads/main/Gojo%20Onihub%20Public.txt",
    },
    {
        Name = "GAROU TO V1",
        URL = "https://raw.githubusercontent.com/Nova2ezz/GarouToV1/refs/heads/main/GarouToV1.txt",
    },
    {
        Name = "SUNG JIN WOO USE NINJA",
        URL = "https://raw.githubusercontent.com/Nova2ezz/nova2ezz-SungjiWoo/refs/heads/main/Protected_7939201355282604.txt",
    },
    {
        Name = "ATOMIC SAMOURAI TO VERGIL",
        URL = "https://raw.githubusercontent.com/Nova2ezz/vergilmoveset/refs/heads/main/Protected_9080797627073616.txt",
    },
    {
        Name = "JJS GOJO v3",
        URL = "https://raw.githubusercontent.com/damir512/jjsgojov3/main/SaitamaToGojoV3_SOURCE-obfuscated_2.txt",
    },
    {
        Name = "GAROU TO KJ",
        URL = "https://raw.githubusercontent.com/damir512/garoukjv1maybeidk/main/Protected_2460290213750059.txt",
    },
    {
        Name = "MINOS PRIME",
        URL = "https://raw.githubusercontent.com/S1gmaGuy/MinosPrimeFixed/refs/heads/main/ThefixIsSoSigma",
    },
    {
        Name = "ATOMIC TO YUTA",
        URL = "https://raw.githubusercontent.com/damir512/AtomicToYuta/main/Protected_8122576078506000.txt",
    },
    {
        Name = "OKRAUN",
        URL = "https://raw.githubusercontent.com/damir512/hakari/main/Protected_5980408162046394.txt",
    },
    {
        Name = "TODO",
        URL = "https://raw.githubusercontent.com/Nova2ezz/Todo-moveset/refs/heads/main/Todo",
    },
    {
        Name = "Blady To Mahito",
        URL = "https://raw.githubusercontent.com/Kenjihin69/Kenjihin69/refs/heads/main/Mahitotsbupdate",
    },
    {
        Name = "Sonic.Exe",
        URL = "https://raw.githubusercontent.com/Nova2ezz/sonic-exe-moveset-3/refs/heads/main/3",
    },
    {
        Name = "APOPHENIA V2 EDUCATION",
        URL = "https://raw.githubusercontent.com/Reapvitalized/TSB/main/APOPHENIA.lua",
    },
    {
        Name = "Atomic To Sukuna",
        URL = "https://raw.githubusercontent.com/zyrask/Nexus-Base/main/atomic-blademaster%20to%20sukuna",
    },
    {
        Name = "Kyra KJ",
        URL = "https://gist.githubusercontent.com/GoldenHeads25/fe3178dff916f988d319c3bd5e4fc01/raw/b250ee6f967c4e84195a76ab7915fb1d79b53326/gistfile1.txt",
    },
    {
        Name = "Kyra Gojo",
        URL = "https://raw.githubusercontent.com/skibidtoiletfan2007/BaldBald BaldyToSorcerer/main/Latest.lua",
    },
    {
        Name = "Luffy",
        URL = "https://github.com/aggiealledge/obfuscated-scripts/raw/refs/heads/main/Protected_7732857839120517.txt",
    },
    {
        Name = "Shinjin",
        URL = "https://raw.githubusercontent.com/Kenjihin69/Kenjihin69/refs/heads/main/Shinji%20tp%20exploit",
    },
    {
        Name = "SUKUNA",
        URL = "https://raw.githubusercontent.com/damir512/whendoesbrickdie/main/tspno.txt",
    },
    {Name = "Sans", URL = "https://paste.ee/r/rF9d3"},
    {
        Name = "Cosminc GAROU",
        URL = "https://pastebin.com/raw/kT3Z8rse",
    },
    {
        Name = "SONIC .EXE",
        URL = "https://pastefy.app/4zLt8a2P/raw",
    },
    {
        Name = "WALLY WEST",
        URL = "https://raw.githubusercontent.com/Nova2ezz/west/refs/heads/main/Protected_4638864115822087.lua.txt",
    },
    {Name = "LAIFU", URL = "https://paste.ee/r/Knl1L56b"},
    {
        Name = "BEERUS",
        URL = "https://raw.githubusercontent.com/sparksnaps/Beerus-The-Destroyer/refs/heads/main/Lua",
    },
    {
        Name = "MADARA",
        URL = "https://raw.githubusercontent.com/LolnotaKid/SCRIPTSBYVEUX/refs/heads/main/BoombasticLol.lua.txt",
    },
    {
        Name = "GoldenHead",
        URL = "https://raw.githubusercontent.com/Kenjihin69/Kenjihin69/refs/heads/main/Saitama%20to%20golden%20sigma",
    },
    {
        Name = "GOJO moveset BEST",
        URL = "https://raw.githubusercontent.com/Kenjihin69/Kenjihin69/refs/heads/main/Saitama%20to%20golden%20sigma",
    },
    {
        Name = "MASTERY DEKU",
        URL = "https://pastebin.com/raw/xKextYP5",
    },
    {
        Name = "TRASHCAN",
        URL = "https://raw.githubusercontent.com/yes1nt/yes/refs/heads/main/Trashcan%20Man",
    },
    {
        Name = "Star Glitcher (Euphoria)",
        URL = "https://paste.ee/r/mmQkO",
    },
    {
        Name = "Dio",
        URL = "https://raw.githubusercontent.com/ThanakritScript/StandUserCilent/refs/heads/main/DioBeta.lua",
    },
    {
        Name = "Mastery Deku",
        URL = "https://pastebin.com/raw/xKextYP5",
    },
    {Name = "A-Train", URL = "https://paste.ee/r/AnZ5j"},
    {
        Name = "Goku",
        URL = "https://rawscripts.net/raw/The-Strongest-Battlegrounds-Goku-Moveset-V2-17977",
    },
    {
        Name = "Shinjuku Yuji",
        URL = "https://raw.githubusercontent.com/Kenjihin69/Kenjihin69/refs/heads/main/Yuji%20early%20access",
    },
    {
        Name = "Multiple moves",
        URL = "https://raw.githubusercontent.com/Reapvitalized/TSB/refs/heads/main/SG_DEMO.lua",
    },
    {
        Name = "1x1x1",
        URL = "https://gist.githubusercontent.com/GoldenHeads2/900e87ffc32f3c740930ccb106dd6abf/raw/358c5bf0f0a6aa25946718288dab006e3ae7e1d4/gistfile1.txt",
    },
    {
        Name = "Chainsaw Man",
        URL = "https://gist.githubusercontent.com/GoldenHeads2/0fd8d36993c850f3fac89e5adf793076/raw/ab4f5a42bd0b2e24a32a46301d533ea849ca771c/gistfile1.txt",
    },
}) do
    tbl4.Animations:Button({
        Title = v4.Name,
        Callback = function()
            loadstring(game:HttpGet(v4.URL))()

            lib:Notify({
                Title = "Animation Loaded",
                Content = v4.Name .. " animation script loaded",
                Duration = 3,
            })
        end,
    })
end

tbl4.Utilities:Paragraph({
    Title = "Utilities",
    Desc = "Various utility features (QOF)",
    Image = "lucide:square-plus",
    ImageSize = 20,
    Color = Color3.fromHex("#b2bec3"),
})

local Lighting = game:GetService("Lighting")
local v4 = nil

local function fn33()
    for i, child in ipairs(Lighting:GetChildren()) do
        if child:IsA("Sky") or child:IsA("ColorCorrectionEffect") or child:IsA("BloomEffect") or child:IsA("DepthOfFieldEffect") or child:IsA("SunRaysEffect") or child:IsA("Atmosphere") then
            pcall(function()
                child:Destroy()
            end)
        end
    end
end

local flag4 = false
local tbl14 = {}
local tbl15 = {}
local connection7 = nil

local function fn34()
    if flag4 then
        return
    end
    flag4 = true

    for i, v5 in ipairs({
        "Ambient",
        "ClockTime",
        "GeographicLatitude",
        "Brightness",
        "ColorShift_Bottom",
        "ColorShift_Top",
        "EnvironmentDiffuseScale",
        "EnvironmentSpecularScale",
        "GlobalShadows",
        "OutdoorAmbient",
        "ExposureCompensation",
        "FogEnd",
        "FogStart",
        "FogColor",
        "ShadowSoftness",
    }) do
        pcall(function()
            tbl14[v5] = Lighting[v5]
        end)
    end

    for i, child in ipairs(Lighting:GetChildren()) do
        if child:IsA("Atmosphere") or child:IsA("Sky") or child:IsA("ColorCorrectionEffect") or child:IsA("BloomEffect") or child:IsA("DepthOfFieldEffect") or child:IsA("SunRaysEffect") then
            pcall(function()
                table.insert(tbl15, child:Clone())
            end)
        end
    end
end

local function fn35()
    if connection7 then
        pcall(function()
            connection7:Disconnect()
        end)

        connection7 = nil
    end

    fn33()

    for k, v5 in pairs(tbl14) do
        pcall(function()
            Lighting[k] = v5
        end)
    end

    for i, v5 in ipairs(tbl15) do
        pcall(function()
            v5:Clone().Parent = Lighting
        end)
    end

    tbl14 = {}
    tbl15 = {}
    flag4 = false
    v4 = nil
end

local tbl16 = {
    Stars = {
        Ambient = Color3.fromRGB(107, 107, 107),
        OutdoorAmbient = Color3.fromRGB(115, 93, 137),
        ColorShift_Bottom = Color3.fromRGB(219, 3, 246),
        ColorShift_Top = Color3.fromRGB(144, 6, 177),
        Enviroment = 0.4,
        Brightness = 0.05,
        Exposure = 0.8,
        Lat = 60,
        Time = 10,
        Shadows = true,
    },
    Warm = {
        Ambient = Color3.fromRGB(58, 58, 58),
        OutdoorAmbient = Color3.fromRGB(127, 116, 79),
        ColorShift_Bottom = Color3.fromRGB(219, 3, 246),
        ColorShift_Top = Color3.fromRGB(144, 6, 177),
        Enviroment = 0.5,
        Brightness = 0.2,
        Exposure = 0.6,
        Lat = 310,
        Time = 13,
        Shadows = true,
    },
    Galaxy = {
        Ambient = Color3.fromRGB(101, 101, 101),
        OutdoorAmbient = Color3.fromRGB(131, 77, 122),
        ColorShift_Bottom = Color3.fromRGB(219, 3, 246),
        ColorShift_Top = Color3.fromRGB(144, 6, 177),
        Enviroment = 0.5,
        Brightness = 0.2,
        Exposure = 0.7,
        Lat = 0,
        Time = 15.25,
        Shadows = true,
    },
    Sunset = {
        Ambient = Color3.fromRGB(93, 59, 88),
        OutdoorAmbient = Color3.fromRGB(128, 94, 100),
        ColorShift_Bottom = Color3.fromRGB(213, 173, 117),
        ColorShift_Top = Color3.fromRGB(255, 255, 255),
        Enviroment = 0.5,
        Brightness = 0.2,
        Exposure = 0.8,
        Lat = 325,
        Time = 11,
        Shadows = true,
    },
    Morning = {
        Ambient = Color3.fromRGB(101, 72, 51),
        OutdoorAmbient = Color3.fromRGB(175, 132, 119),
        ColorShift_Bottom = Color3.fromRGB(213, 161, 134),
        ColorShift_Top = Color3.fromRGB(203, 167, 102),
        Enviroment = 0.3,
        Brightness = 1,
        Exposure = 0.7,
        Lat = 326,
        Time = 16.333333333333332,
        Shadows = true,
    },
    Ocean = {
        Ambient = Color3.fromRGB(79, 54, 101),
        OutdoorAmbient = Color3.fromRGB(162, 118, 175),
        ColorShift_Bottom = Color3.fromRGB(213, 10, 180),
        ColorShift_Top = Color3.fromRGB(103, 68, 203),
        Enviroment = 0.4,
        Brightness = 0.2,
        Exposure = 1,
        Lat = 306,
        Time = 10,
        Shadows = true,
    },
}

local tbl17 = {
    ["Rain Shader"] = function()
        local sky = Instance.new("Sky", Lighting)
        sky.SkyboxBk = "http://www.roblox.com/asset/?id=4495864450"
        sky.SkyboxDn = "http://www.roblox.com/asset/?id=4495864887"
        sky.SkyboxFt = "http://www.roblox.com/asset/?id=4495865458"
        sky.SkyboxLf = "http://www.roblox.com/asset/?id=4495866035"
        sky.SkyboxRt = "http://www.roblox.com/asset/?id=4495866584"
        sky.SkyboxUp = "http://www.roblox.com/asset/?id=4495867486"
        local colorCorrectionEffect = Instance.new("ColorCorrectionEffect", Lighting)
        colorCorrectionEffect.Brightness = 0.05
        colorCorrectionEffect.Contrast = 0.05
        colorCorrectionEffect.TintColor = Color3.fromRGB(170, 170, 170)
    end,
    ["Nebula Shader"] = function()
        local sky = Instance.new("Sky", Lighting)
        sky.SkyboxBk = "http://www.roblox.com/asset/?id=15983968922"
        sky.SkyboxDn = "http://www.roblox.com/asset/?id=15983966825"
        sky.SkyboxFt = "http://www.roblox.com/asset/?id=15983965025"
        sky.SkyboxLf = "http://www.roblox.com/asset/?id=15983967420"
        sky.SkyboxRt = "http://www.roblox.com/asset/?id=15983966246"
        sky.SkyboxUp = "http://www.roblox.com/asset/?id=15983964246"
        local colorCorrectionEffect = Instance.new("ColorCorrectionEffect", Lighting)
        colorCorrectionEffect.Brightness = 0.05
        colorCorrectionEffect.Contrast = -0.02
        colorCorrectionEffect.TintColor = Color3.fromRGB(105, 72, 255)
    end,
    ["Night Shader"] = function()
        local sky = Instance.new("Sky", Lighting)
        sky.SkyboxUp = "http://www.roblox.com/asset/?id=12064131"
        sky.SkyboxLf = "http://www.roblox.com/asset/?id=12063984"
        sky.SkyboxFt = "http://www.roblox.com/asset/?id=12064121"
        sky.SkyboxBk = "http://www.roblox.com/asset/?id=12064107"
        sky.SkyboxDn = "http://www.roblox.com/asset/?id=12064152"
        sky.SkyboxRt = "http://www.roblox.com/asset/?id=12064115"
        local colorCorrectionEffect = Instance.new("ColorCorrectionEffect", Lighting)
        colorCorrectionEffect.Brightness = 0.07
        colorCorrectionEffect.Contrast = -0.07
        colorCorrectionEffect.TintColor = Color3.fromRGB(44, 70, 187)
    end,
    ["Stars Shader"] = function()
        local sky = Instance.new("Sky")
        sky.SkyboxUp = "rbxassetid://5559302033"
        sky.SkyboxLf = "rbxassetid://5559292825"
        sky.SkyboxFt = "rbxassetid://5559300879"
        sky.SkyboxBk = "rbxassetid://5559289158"
        sky.SkyboxDn = "rbxassetid://5559290893"
        sky.SkyboxRt = "rbxassetid://5559302989"
        sky.Parent = Lighting
        local depthOfFieldEffect = Instance.new("DepthOfFieldEffect", Lighting)
        depthOfFieldEffect.FarIntensity = 0.12
        depthOfFieldEffect.NearIntensity = 0.3
        depthOfFieldEffect.FocusDistance = 20
        depthOfFieldEffect.InFocusRadius = 17
        local colorCorrectionEffect = Instance.new("ColorCorrectionEffect", Lighting)
        colorCorrectionEffect.TintColor = Color3.fromRGB(245, 200, 245)
        colorCorrectionEffect.Brightness = 0
        colorCorrectionEffect.Contrast = 0.2
        colorCorrectionEffect.Saturation = -0.1
        local bloomEffect = Instance.new("BloomEffect", Lighting)
        bloomEffect.Intensity = 0.4
        bloomEffect.Size = 12
        bloomEffect.Threshold = 0.2
        Lighting.Brightness = tbl16.Stars.Brightness
        Lighting.ExposureCompensation = tbl16.Stars.Exposure
        Lighting.EnvironmentDiffuseScale = tbl16.Stars.Enviroment
        Lighting.EnvironmentSpecularScale = tbl16.Stars.Enviroment
        Lighting.Ambient = tbl16.Stars.Ambient
        Lighting.OutdoorAmbient = tbl16.Stars.OutdoorAmbient
        Lighting.GeographicLatitude = tbl16.Stars.Lat
        Lighting.ClockTime = tbl16.Stars.Time

        if connection7 then
            pcall(function()
                connection7:Disconnect()
            end)
        end

        connection7 = Lighting:GetPropertyChangedSignal("ClockTime"):Connect(function()
            Lighting.ClockTime = tbl16.Stars.Time
        end)

        Lighting.GlobalShadows = tbl16.Stars.Shadows
        Lighting.ShadowSoftness = 0.08

        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(Lighting, "Technology", "Future")
            end
        end)
    end,
    ["Warm Shader"] = function()
        local sky = Instance.new("Sky")
        sky.SkyboxUp = "http://www.roblox.com/asset?id=232707707"
        sky.SkyboxLf = "http://www.roblox.com/asset?id=232708001"
        sky.SkyboxFt = "http://www.roblox.com/asset?id=232707879"
        sky.SkyboxBk = "http://www.roblox.com/asset?id=232707959"
        sky.SkyboxDn = "http://www.roblox.com/asset?id=232707790"
        sky.SkyboxRt = "http://www.roblox.com/asset?id=232707983"
        sky.Parent = Lighting
        local depthOfFieldEffect = Instance.new("DepthOfFieldEffect", Lighting)
        depthOfFieldEffect.FarIntensity = 0.12
        depthOfFieldEffect.NearIntensity = 0.3
        depthOfFieldEffect.FocusDistance = 20
        depthOfFieldEffect.InFocusRadius = 17
        local bloomEffect = Instance.new("BloomEffect", Lighting)
        bloomEffect.Intensity = 0.6
        bloomEffect.Size = 12
        bloomEffect.Threshold = 0.2
        local colorCorrectionEffect = Instance.new("ColorCorrectionEffect", Lighting)
        colorCorrectionEffect.TintColor = Color3.fromRGB(255, 255, 255)
        colorCorrectionEffect.Brightness = 0
        colorCorrectionEffect.Contrast = 0.3
        colorCorrectionEffect.Saturation = 0.2
        local sunRaysEffect = Instance.new("SunRaysEffect", Lighting)
        sunRaysEffect.Enabled = true
        sunRaysEffect.Intensity = 0.003
        sunRaysEffect.Spread = 1
        Lighting.Brightness = tbl16.Warm.Brightness
        Lighting.ExposureCompensation = tbl16.Warm.Exposure
        Lighting.EnvironmentDiffuseScale = tbl16.Warm.Enviroment
        Lighting.EnvironmentSpecularScale = tbl16.Warm.Enviroment
        Lighting.Ambient = tbl16.Warm.Ambient
        Lighting.OutdoorAmbient = tbl16.Warm.OutdoorAmbient
        Lighting.GeographicLatitude = tbl16.Warm.Lat
        Lighting.ClockTime = tbl16.Warm.Time

        if connection7 then
            pcall(function()
                connection7:Disconnect()
            end)
        end

        connection7 = Lighting:GetPropertyChangedSignal("ClockTime"):Connect(function()
            Lighting.ClockTime = tbl16.Warm.Time
        end)

        Lighting.GlobalShadows = tbl16.Warm.Shadows
        Lighting.ShadowSoftness = 0.08

        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(Lighting, "Technology", "Future")
            end
        end)
    end,
    ["Galaxy Shader"] = function()
        local sky = Instance.new("Sky")
        sky.SkyboxUp = "rbxassetid://1903391299"
        sky.SkyboxLf = "rbxassetid://1903388369"
        sky.SkyboxFt = "rbxassetid://1903389258"
        sky.SkyboxBk = "rbxassetid://1903390348"
        sky.SkyboxDn = "rbxassetid://1903391981"
        sky.SkyboxRt = "rbxassetid://1903387293"
        sky.Parent = Lighting
        local depthOfFieldEffect = Instance.new("DepthOfFieldEffect", Lighting)
        depthOfFieldEffect.FarIntensity = 0.12
        depthOfFieldEffect.NearIntensity = 0.3
        depthOfFieldEffect.FocusDistance = 20
        depthOfFieldEffect.InFocusRadius = 17
        local bloomEffect = Instance.new("BloomEffect", Lighting)
        bloomEffect.Intensity = 0.6
        bloomEffect.Size = 12
        bloomEffect.Threshold = 0.2
        local sunRaysEffect = Instance.new("SunRaysEffect", Lighting)
        sunRaysEffect.Enabled = true
        sunRaysEffect.Intensity = 0.003
        sunRaysEffect.Spread = 1
        local colorCorrectionEffect = Instance.new("ColorCorrectionEffect", Lighting)
        colorCorrectionEffect.TintColor = Color3.fromRGB(245, 240, 255)
        colorCorrectionEffect.Brightness = -0.04
        colorCorrectionEffect.Contrast = 0.2
        colorCorrectionEffect.Saturation = 0.2
        Lighting.Brightness = tbl16.Galaxy.Brightness
        Lighting.ExposureCompensation = tbl16.Galaxy.Exposure
        Lighting.EnvironmentDiffuseScale = tbl16.Galaxy.Enviroment
        Lighting.EnvironmentSpecularScale = tbl16.Galaxy.Enviroment
        Lighting.Ambient = tbl16.Galaxy.Ambient
        Lighting.OutdoorAmbient = tbl16.Galaxy.OutdoorAmbient
        Lighting.GeographicLatitude = tbl16.Galaxy.Lat
        Lighting.ClockTime = tbl16.Galaxy.Time

        if connection7 then
            pcall(function()
                connection7:Disconnect()
            end)
        end

        connection7 = Lighting:GetPropertyChangedSignal("ClockTime"):Connect(function()
            Lighting.ClockTime = tbl16.Galaxy.Time
        end)

        Lighting.GlobalShadows = tbl16.Galaxy.Shadows
        Lighting.ShadowSoftness = 0.08

        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(Lighting, "Technology", "Future")
            end
        end)
    end,
    ["Sunset Shader"] = function()
        local sky = Instance.new("Sky")
        sky.SkyboxUp = "rbxassetid://2670644331"
        sky.SkyboxLf = "rbxassetid://2670643070"
        sky.SkyboxFt = "rbxassetid://2670643214"
        sky.SkyboxBk = "rbxassetid://2670643994"
        sky.SkyboxDn = "rbxassetid://2670643365"
        sky.SkyboxRt = "rbxassetid://2670644173"
        sky.Parent = Lighting
        local colorCorrectionEffect = Instance.new("ColorCorrectionEffect", Lighting)
        colorCorrectionEffect.Enabled = true
        colorCorrectionEffect.Brightness = 0.13
        colorCorrectionEffect.Contrast = 0.4
        colorCorrectionEffect.Saturation = 0.06
        colorCorrectionEffect.TintColor = Color3.fromRGB(255, 230, 245)
        local depthOfFieldEffect = Instance.new("DepthOfFieldEffect", Lighting)
        depthOfFieldEffect.FarIntensity = 0.12
        depthOfFieldEffect.NearIntensity = 0.3
        depthOfFieldEffect.FocusDistance = 20
        depthOfFieldEffect.InFocusRadius = 17
        local bloomEffect = Instance.new("BloomEffect", Lighting)
        bloomEffect.Intensity = 0.4
        bloomEffect.Size = 12
        bloomEffect.Threshold = 0.2
        Lighting.Brightness = tbl16.Sunset.Brightness
        Lighting.ExposureCompensation = tbl16.Sunset.Exposure
        Lighting.EnvironmentDiffuseScale = tbl16.Sunset.Enviroment
        Lighting.EnvironmentSpecularScale = tbl16.Sunset.Enviroment
        Lighting.Ambient = tbl16.Sunset.Ambient
        Lighting.OutdoorAmbient = tbl16.Sunset.OutdoorAmbient
        Lighting.GeographicLatitude = tbl16.Sunset.Lat
        Lighting.ClockTime = tbl16.Sunset.Time

        if connection7 then
            pcall(function()
                connection7:Disconnect()
            end)
        end

        connection7 = Lighting:GetPropertyChangedSignal("ClockTime"):Connect(function()
            Lighting.ClockTime = tbl16.Sunset.Time
        end)

        Lighting.GlobalShadows = tbl16.Sunset.Shadows
        Lighting.ShadowSoftness = 0.08

        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(Lighting, "Technology", "Future")
            end
        end)
    end,
    ["Morning Shader"] = function()
        local sky = Instance.new("Sky")
        sky.SkyboxUp = "http://www.roblox.com/asset/?id=458016792"
        sky.SkyboxLf = "http://www.roblox.com/asset/?id=458016655"
        sky.SkyboxFt = "http://www.roblox.com/asset/?id=458016532"
        sky.SkyboxBk = "http://www.roblox.com/asset/?id=458016711"
        sky.SkyboxDn = "http://www.roblox.com/asset/?id=458016826"
        sky.SkyboxRt = "http://www.roblox.com/asset/?id=458016782"
        sky.Parent = Lighting
        local bloomEffect = Instance.new("BloomEffect", Lighting)
        bloomEffect.Enabled = true
        bloomEffect.Threshold = 0.24
        bloomEffect.Size = 8
        bloomEffect.Intensity = 0.5
        local sunRaysEffect = Instance.new("SunRaysEffect", Lighting)
        sunRaysEffect.Enabled = true
        sunRaysEffect.Intensity = 0.05
        sunRaysEffect.Spread = 0.4
        local colorCorrectionEffect = Instance.new("ColorCorrectionEffect", Lighting)
        colorCorrectionEffect.Saturation = 0.14
        colorCorrectionEffect.Brightness = -0.1
        colorCorrectionEffect.Contrast = 0.14
        local depthOfFieldEffect = Instance.new("DepthOfFieldEffect", Lighting)
        depthOfFieldEffect.FarIntensity = 0.2
        depthOfFieldEffect.InFocusRadius = 17
        depthOfFieldEffect.FocusDistance = 20
        depthOfFieldEffect.NearIntensity = 0.3
        Lighting.Brightness = tbl16.Morning.Brightness
        Lighting.ExposureCompensation = tbl16.Morning.Exposure
        Lighting.EnvironmentDiffuseScale = tbl16.Morning.Enviroment
        Lighting.EnvironmentSpecularScale = tbl16.Morning.Enviroment
        Lighting.Ambient = tbl16.Morning.Ambient
        Lighting.OutdoorAmbient = tbl16.Morning.OutdoorAmbient
        Lighting.GeographicLatitude = tbl16.Morning.Lat
        Lighting.ClockTime = tbl16.Morning.Time

        if connection7 then
            pcall(function()
                connection7:Disconnect()
            end)
        end

        connection7 = Lighting:GetPropertyChangedSignal("ClockTime"):Connect(function()
            Lighting.ClockTime = tbl16.Morning.Time
        end)

        Lighting.GlobalShadows = tbl16.Morning.Shadows
        Lighting.ShadowSoftness = 0.08

        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(Lighting, "Technology", "Future")
            end
        end)
    end,
    ["Ocean Shader"] = function()
        local sky = Instance.new("Sky")
        sky.SkyboxUp = "http://www.roblox.com/asset/?id=5260824661"
        sky.SkyboxLf = "http://www.roblox.com/asset/?id=5260800833"
        sky.SkyboxFt = "http://www.roblox.com/asset/?id=5260817288"
        sky.SkyboxBk = "http://www.roblox.com/asset/?id=5260808177"
        sky.SkyboxDn = "http://www.roblox.com/asset/?id=5260653793"
        sky.SkyboxRt = "http://www.roblox.com/asset/?id=5260811073"
        sky.Parent = Lighting
        local bloomEffect = Instance.new("BloomEffect", Lighting)
        bloomEffect.Enabled = true
        bloomEffect.Threshold = 0.4
        bloomEffect.Size = 12
        bloomEffect.Intensity = 0.5
        local colorCorrectionEffect = Instance.new("ColorCorrectionEffect", Lighting)
        colorCorrectionEffect.Brightness = -0.03
        colorCorrectionEffect.Contrast = 0.16
        colorCorrectionEffect.Saturation = 0.06
        colorCorrectionEffect.TintColor = Color3.fromRGB(220, 175, 255)
        local depthOfFieldEffect = Instance.new("DepthOfFieldEffect", Lighting)
        depthOfFieldEffect.FarIntensity = 0.12
        depthOfFieldEffect.InFocusRadius = 17
        depthOfFieldEffect.FocusDistance = 20
        depthOfFieldEffect.NearIntensity = 0.3
        Lighting.Brightness = tbl16.Ocean.Brightness
        Lighting.ExposureCompensation = tbl16.Ocean.Exposure
        Lighting.EnvironmentDiffuseScale = tbl16.Ocean.Enviroment
        Lighting.EnvironmentSpecularScale = tbl16.Ocean.Enviroment
        Lighting.Ambient = tbl16.Ocean.Ambient
        Lighting.OutdoorAmbient = tbl16.Ocean.OutdoorAmbient
        Lighting.GeographicLatitude = tbl16.Ocean.Lat
        Lighting.ClockTime = tbl16.Ocean.Time

        if connection7 then
            pcall(function()
                connection7:Disconnect()
            end)
        end

        connection7 = Lighting:GetPropertyChangedSignal("ClockTime"):Connect(function()
            Lighting.ClockTime = tbl16.Ocean.Time
        end)

        Lighting.GlobalShadows = tbl16.Ocean.Shadows
        Lighting.ShadowSoftness = 0.08

        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(Lighting, "Technology", "Future")
            end
        end)
    end,
    ["Dark Shader"] = function()
        local colorCorrectionEffect = Instance.new("ColorCorrectionEffect", Lighting)
        colorCorrectionEffect.Brightness = 0
        colorCorrectionEffect.Contrast = 0
        colorCorrectionEffect.Saturation = -0.3
        colorCorrectionEffect.TintColor = Color3.fromRGB(255, 255, 255)
        colorCorrectionEffect.Enabled = true
        local atmosphere = Instance.new("Atmosphere", Lighting)
        atmosphere.Density = 0.296
        atmosphere.Offset = 0
        atmosphere.Color = Color3.fromRGB(199, 170, 107)
        atmosphere.Decay = Color3.fromRGB(92, 60, 13)
        atmosphere.Glare = 0
        atmosphere.Haze = 0
        local sky = Instance.new("Sky", Lighting)
        sky.SkyboxBk = "http://www.roblox.com/asset/?id=245972325"
        sky.SkyboxDn = "http://www.roblox.com/asset/?id=245972441"
        sky.SkyboxFt = "http://www.roblox.com/asset/?id=245972389"
        sky.SkyboxLf = "http://www.roblox.com/asset/?id=245972361"
        sky.SkyboxRt = "http://www.roblox.com/asset/?id=245972302"
        sky.SkyboxUp = "http://www.roblox.com/asset/?id=245972410"

        local tbl17 = {
            Ambient = Color3.fromRGB(44, 33, 19),
            ClockTime = 7.3,
            GeographicLatitude = 41.7333,
            Brightness = 1.1,
            ColorShift_Bottom = Color3.fromRGB(0, 0, 0),
            ColorShift_Top = Color3.fromRGB(0, 0, 0),
            EnvironmentDiffuseScale = 0.1,
            EnvironmentSpecularScale = 0,
            GlobalShadows = true,
            OutdoorAmbient = Color3.fromRGB(115, 115, 115),
            ExposureCompensation = -0.8,
            FogEnd = 600,
            FogStart = 20,
            FogColor = Color3.fromRGB(93, 93, 93),
        }

        for k, v5 in pairs(tbl17) do
            pcall(function()
                Lighting[k] = v5
            end)
        end
    end,
    ["Realistic Shader"] = function()
        local ok_, result = pcall(function()
            local response = game:HttpGet("https://raw.githubusercontent.com/warprbx/NightRewrite/refs/heads/main/Night/Games/Shader.lua")

            if response then
                local chunk = loadstring(response)

                if chunk then
                    chunk()
                end
            end
        end)

        if not ok_ then
            warn("", result)
        end
    end,
}

tbl4.Utilities:Dropdown({
    Title = "Shader Hub",
    Flag = "Save55",
    Values = {
        "None",
        "Rain Shader",
        "Nebula Shader",
        "Night Shader",
        "Stars Shader",
        "Warm Shader",
        "Galaxy Shader",
        "Sunset Shader",
        "Morning Shader",
        "Ocean Shader",
        "Dark Shader",
        "Realistic Shader",
    },
    Value = "None",
    Callback = function(arg)
        if v4 and v4 ~= "None" then
            fn35()
        end

        if arg == "None" then
            v4 = nil

            lib:Notify({
                Title = "Shader Disabled",
                Content = "Original lighting restored.",
                Duration = 2,
            })
        elseif tbl17[arg] then
            fn34()
            fn33()
            pcall(tbl17[arg])
            v4 = arg
            lib:Notify({Title = "Shader Applied", Content = arg, Duration = 2})
        end
    end,
})

local utilities = tbl4.Utilities
local colorpicker2 = utilities.Colorpicker

local tbl18 = {
    Title = "VFX Color",
    Flag = "Save56",
    Desc = "Pick a custom VFX color",
}

local v5 = fn(tbl2.vfxColorChanger)
local color2 = v5 or Color3.fromRGB(255, 255, 255)
tbl18.Default = color2
tbl18.Transparency = 0
tbl18.Locked = false

tbl18.Callback = function(arg)
    local color3 = type(arg) == "table" and arg.Color or arg
    tbl2.vfxColorChanger = color3
    fn2()
end

colorpicker2(utilities, tbl18)
presetList = {}

for k in pairs(tbl6) do
    table.insert(presetList, k)
end

table.sort(presetList)

tbl4.Utilities:Dropdown({
    Title = "Teleport",
    Flag = "Save57",
    Values = {
        "None",
        "Saitama Death Counter",
        "Atomic",
        "Sky",
        "Corner",
        "Left Mountain",
        "Right Mountain",
        "Middle Mountain",
        "Middle of Map",
        "Base Plate",
    },
    Value = "None",
    Callback = function(arg)
        fn22(tbl5[arg])
    end,
})

tbl4.Utilities:Divider()

local v6 = tbl4.Utilities:Section({
    Title = "Avatar Changer",
    Flag = "Save58",
    Desc = "Change your avatar to someone else using username / id",
    Image = "user",
    Opened = true,
    ImageSize = 20,
    Color = Color3.fromHex("#a29bfe"),
})

AvatarChangerSection = v6

AvatarChangerSection:Input({
    Title = "User ID",
    Flag = "Save59",
    Value = tbl2.avatarChangerUserId,
    Placeholder = "Enter UserId or Username",
    Callback = function(arg)
        local avatarChangerUserId = tostring(arg)
        tbl2.avatarChangerUserId = avatarChangerUserId
    end,
})

AvatarChangerSection:Button({
    Title = "Force Avatar Change",
    Flag = "Save60",
    Icon = "refresh-cw",
    Callback = function()
        forceAvatarChange()
    end,
})

AvatarChangerSection:Button({
    Title = "Headless Korblox",
    Flag = "Save61",
    Icon = "user-x",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Headless-Korblox-47269"))()
    end,
})

tbl4.Utilities:Toggle({
    Title = "Counter ESP",
    Flag = "Save62",
    Value = tbl2.sigmaESP,
    Callback = function(arg)
        SigmaToggle(arg)
        local v7 = lib
        local notify_ = v7.Notify
        local tbl19 = {Title = "Counter ESP"}
        local content = arg and "Enabled" or "Disabled"
        tbl19.Content = content
        tbl19.Duration = 2
        notify_(v7, tbl19)
    end,
})

tbl4.Utilities:Colorpicker({
    Title = "Highlight Color",
    Flag = "Save63",
    Desc = "Color for Counter esp",
    Default = tbl2.sigmaColor,
    Transparency = 0,
    Locked = false,
    Callback = function(arg)
        local color3 = type(arg) == "table" and arg.Color or arg
        tbl2.sigmaColor = color3

        lib:Notify({
            Title = "Counter ESP",
            Content = "Color updated",
            Duration = 1,
        })
    end,
})

tbl4.Utilities:Toggle({
    Title = "Block Indicator",
    Flag = "Save64",
    Value = tbl2.arrowIndicator,
    Callback = function(arrowIndicator)
        tbl2.arrowIndicator = arrowIndicator
        fn13()
        local v7 = lib
        local notify_ = v7.Notify
        local tbl19 = {Title = "Arrow Indicator"}
        local content = arrowIndicator and "Enabled" or "Disabled"
        tbl19.Content = content
        tbl19.Duration = 2
        notify_(v7, tbl19)
    end,
})

tbl4.Utilities:Divider()

tbl4.Utilities:Toggle({
    Title = "DashClip Enabled",
    Flag = "Save65",
    Desc = "Noclip when dashing",
    Value = tbl2.dashclipEnabled,
    Callback = function(dashclipEnabled)
        tbl2.dashclipEnabled = dashclipEnabled

        if dashclipEnabled then
            tbl2.dashclipUnloaded = false
            dashclipSetupFeature()

            lib:Notify({
                Title = "DashClip",
                Content = "Enabled",
                Icon = "lucide:check",
                Duration = 2,
            })
        else
            dashclipDisableNoclip()

            lib:Notify({
                Title = "DashClip",
                Content = "Disabled",
                Icon = "lucide:x",
                Duration = 2,
            })
        end
    end,
})

tbl4.Utilities:Slider({
    Title = "Noclip Duration",
    Flag = "Save66",
    Value = {
        Min = 100,
        Max = 2000,
        Default = tbl.dashclipEnableDuration * 1000,
    },
    Callback = function(arg)
        tbl.dashclipEnableDuration = arg / 1000
    end,
})

tbl4.Utilities:Toggle({
    Title = "No Clip Players",
    Flag = "Save67",
    Value = tbl2.noClip,
    Callback = function(noClip_)
        tbl2.noClip = noClip_

        if noClip_ then
            fn9()
        elseif tbl3.noClip then
            tbl3.noClip:Disconnect()
            tbl3.noClip = nil
        end
    end,
})

tbl4.Utilities:Divider()
local tbl19 = {}
local utilities2 = tbl4.Utilities
tbl19.Title = "Enable ESP"
tbl19.Flag = "Save97"
tbl19.Flag = "SaveESPEnabled"
tbl19.Value = tbl2.espEnabled

tbl19.Callback = function(espEnabled)
    tbl2.espEnabled = espEnabled

    if espEnabled then
        _G.__ESP_Utility.Start()
    else
        _G.__ESP_Utility.Stop()
    end
end

utilities2:Toggle(tbl19)
local utilities3 = tbl4.Utilities
local dropdown = utilities3.Dropdown
local tbl20 = {}
tbl20.Title = "ESP Shape"
tbl20.Flag = "Save98"
tbl20.Flag = "SaveESPShape"
tbl20.Values = {"2D", "3D", "Outlines"}
local espShapeMode = tbl2.espShapeMode
local value3 = espShapeMode or "2D"
tbl20.Value = value3

tbl20.Callback = function(espShapeMode2)
    tbl2.espShapeMode = espShapeMode2
end

dropdown(utilities3, tbl20)
local tbl21 = {}
local utilities4 = tbl4.Utilities
tbl21.Title = "ESP Color"
tbl21.Flag = "Save99"
tbl21.Flag = "SaveESPColor"
tbl21.Value = tbl2.espColor

tbl21.Callback = function(espColor)
    tbl2.espColor = espColor
end

utilities4:Colorpicker(tbl21)
local tbl22 = {}
local utilities5 = tbl4.Utilities
tbl22.Title = "Show Boxes"
tbl22.Flag = "Save100"
tbl22.Flag = "SaveESPShowBoxes"
tbl22.Value = tbl2.espShowBoxes

tbl22.Callback = function(espShowBoxes)
    tbl2.espShowBoxes = espShowBoxes
end

utilities5:Toggle(tbl22)
local tbl23 = {}
local utilities6 = tbl4.Utilities
tbl23.Title = "Show Names"
tbl23.Flag = "Save101"
tbl23.Flag = "SaveESPShowNames"
tbl23.Value = tbl2.espShowNames

tbl23.Callback = function(espShowNames)
    tbl2.espShowNames = espShowNames
end

utilities6:Toggle(tbl23)
local tbl24 = {}
local utilities7 = tbl4.Utilities
tbl24.Title = "Show Tracers"
tbl24.Flag = "Save102"
tbl24.Flag = "SaveESPShowTracers"
tbl24.Value = tbl2.espShowTracers

tbl24.Callback = function(espShowTracers)
    tbl2.espShowTracers = espShowTracers
end

utilities7:Toggle(tbl24)
local tbl25 = {}
local utilities8 = tbl4.Utilities
tbl25.Title = "Show Health"
tbl25.Flag = "Save103"
tbl25.Flag = "SaveESPShowHealth"
tbl25.Value = tbl2.espShowHealth

tbl25.Callback = function(espShowHealth)
    tbl2.espShowHealth = espShowHealth
end

utilities8:Toggle(tbl25)

tbl4.Utilities:Toggle({
    Title = "Highlight Players",
    Flag = "Save69",
    Value = tbl2.espHighlight,
    Callback = function(espHighlight)
        tbl2.espHighlight = espHighlight
        fn6()
    end,
})

tbl4.Utilities:Toggle({
    Title = "Player Counts",
    Flag = "Save71",
    Value = tbl2.espPlayerCount,
    Callback = function(espPlayerCount)
        tbl2.espPlayerCount = espPlayerCount
        fn6()
    end,
})

tbl4.Utilities:Divider()

tbl4.Utilities:Toggle({
    Title = "M2 Block",
    Flag = "Save72",
    Value = tbl2.m2Block,
    Callback = function(m2Block)
        tbl2.m2Block = m2Block

        if m2Block then
            fn10()
        else
            if tbl3.m2Block then
                tbl3.m2Block:Disconnect()
                tbl3.m2Block = nil
            end

            if tbl3.m2BlockEnd then
                tbl3.m2BlockEnd:Disconnect()
                tbl3.m2BlockEnd = nil
            end
        end
    end,
})

tbl4.Utilities:Toggle({
    Title = "M1 Block (Compatible with M2 Block)",
    Flag = "Save73",
    Value = tbl2.m1Block,
    Callback = function(m1Block)
        tbl2.m1Block = m1Block
        fn11()
    end,
})

tbl4.Utilities:Toggle({
    Title = "M1 Slide",
    Flag = "Save74",
    Value = tbl2.slideM1,
    Callback = function(slideM1)
        tbl2.slideM1 = slideM1

        if slideM1 then
            setupSlideM1()
        else
            if slideM1AnimConnection then
                slideM1AnimConnection:Disconnect()
                slideM1AnimConnection = nil
            end

            if slideM1CharConnection then
                slideM1CharConnection:Disconnect()
                slideM1CharConnection = nil
            end

            slideM1ToggleState = false
        end
    end,
})

tbl4.Utilities:Divider()

tbl4.Utilities:Slider({
    Title = "StretchScreen",
    Flag = "Save75",
    Value = {Min = 1, Max = 100, Default = tbl2.stretchScreenValue},
    Callback = function(stretchScreenValue)
        tbl2.stretchScreenValue = stretchScreenValue
        fn15()
    end,
})

tbl4.Utilities:Toggle({
    Title = "Death Counter ESP",
    Flag = "Save104",
    Value = tbl2.deathCounterESP,
    Callback = function(deathCounterESP)
        tbl2.deathCounterESP = deathCounterESP

        if deathCounterESP then
            setupDeathCounterESP()

            lib:Notify({
                Title = "Death Counter ESP",
                Content = "Enabled",
                Duration = 2,
            })
        else
            stopDeathCounterESP()

            lib:Notify({
                Title = "Death Counter ESP",
                Content = "Disabled",
                Duration = 2,
            })
        end
    end,
})

tbl4.Utilities:Toggle({
    Title = "True Down Slam",
    Flag = "Save76",
    Value = tbl2.downSlam,
    Callback = function(downSlam)
        tbl2.downSlam = downSlam

        if downSlam then
            fn12()
        elseif tbl3.downSlam then
            tbl3.downSlam:Disconnect()
            tbl3.downSlam = nil
        end
    end,
})

tbl4.Utilities:Toggle({
    Title = "Respawn at Death",
    Flag = "Save77",
    Value = tbl2.respawnAtDeath,
    Callback = function(respawnAtDeath)
        tbl2.respawnAtDeath = respawnAtDeath

        if respawnAtDeath then
            fn16()
        else
            if tbl3.respawnAtDeath then
                tbl3.respawnAtDeath:Disconnect()
                tbl3.respawnAtDeath = nil
            end

            if tbl3.diedConn then
                tbl3.diedConn:Disconnect()
                tbl3.diedConn = nil
            end
        end
    end,
})

tbl4.Utilities:Toggle({
    Title = "FPS Boost",
    Flag = "Save78",
    Value = tbl2.fpsBoost,
    Callback = function(fpsBoost)
        tbl2.fpsBoost = fpsBoost

        if fpsBoost then
            fn18()

            lib:Notify({
                Title = "FPS Boost",
                Content = "FPS Boost enabled",
                Duration = 3,
            })
        else
            lib:Notify({
                Title = "FPS Boost",
                Content = "FPS Boost disabled",
                Duration = 3,
            })
        end
    end,
})

tbl4.Utilities:Toggle({
    Title = "Auto Jump(cuz why not)",
    Flag = "Save79",
    Value = tbl2.autoJump,
    Callback = function(autoJump)
        tbl2.autoJump = autoJump
        fn23(autoJump)
        local v7 = lib
        local notify_ = v7.Notify
        local tbl26 = {Title = "Auto Jump"}
        local content = autoJump and "Enabled" or "Disabled"
        tbl26.Content = content
        tbl26.Duration = 2
        notify_(v7, tbl26)
    end,
})

tbl4.Utilities:Divider()

tbl4.Utilities:Toggle({
    Title = "No Stun",
    Flag = "Save80",
    Value = tbl2.noStun,
    Callback = function(noStun)
        tbl2.noStun = noStun
        fn29(noStun)
        local v7 = lib
        local notify_ = v7.Notify
        local tbl26 = {Title = "No Stun"}
        local content = noStun and "Enabled" or "Disabled"
        tbl26.Content = content
        tbl26.Duration = 2
        notify_(v7, tbl26)
    end,
})

tbl4.Utilities:Toggle({
    Title = "No Slow",
    Flag = "Save81",
    Image = "bird",
    Value = tbl2.noSlow,
    Callback = function(noSlow)
        tbl2.noSlow = noSlow
        fn30(noSlow)
        local v7 = lib
        local notify_ = v7.Notify
        local tbl26 = {Title = "No Slow"}
        local content = noSlow and "Enabled" or "Disabled"
        tbl26.Content = content
        tbl26.Duration = 2
        notify_(v7, tbl26)
    end,
})

tbl4.Utilities:Toggle({
    Title = "No Dash Cooldown",
    Flag = "Save82",
    Icon = "zap",
    Image = "help-circle",
    Value = tbl2.noDashCooldown,
    Callback = function(noDashCooldown)
        tbl2.noDashCooldown = noDashCooldown
        local v7 = lib
        local notify_ = v7.Notify
        local tbl26 = {Title = "No Dash Cooldown"}
        local content = noDashCooldown and "Enabled" or "Disabled"
        tbl26.Content = content
        tbl26.Duration = 2
        notify_(v7, tbl26)
    end,
})

tbl4.Utilities:Toggle({
    Title = "No Fatigue",
    Flag = "Save83",
    Value = tbl2.noFatigue,
    Callback = function(noFatigue)
        tbl2.noFatigue = noFatigue
        local v7 = lib
        local notify_ = v7.Notify
        local tbl26 = {Title = "No Fatigue"}
        local content = noFatigue and "Enabled" or "Disabled"
        tbl26.Content = content
        tbl26.Duration = 2
        notify_(v7, tbl26)
    end,
})

tbl4.Utilities:Toggle({
    Title = "Emotes Extra Slots",
    Flag = "Save84",
    Value = tbl2.emotesExtraSlots,
    Callback = function(emotesExtraSlots)
        tbl2.emotesExtraSlots = emotesExtraSlots
        local v7 = lib
        local notify_ = v7.Notify
        local tbl26 = {Title = "Emotes Extra Slots"}
        local content = emotesExtraSlots and "Enabled" or "Disabled"
        tbl26.Content = content
        tbl26.Duration = 2
        notify_(v7, tbl26)
    end,
})

tbl4.Utilities:Toggle({
    Title = "Emotes Search Bar",
    Flag = "Save85",
    Value = tbl2.emotesSearchBar,
    Callback = function(emotesSearchBar)
        tbl2.emotesSearchBar = emotesSearchBar
        local v7 = lib
        local notify_ = v7.Notify
        local tbl26 = {Title = "Emotes Search Bar"}
        local content = emotesSearchBar and "Enabled" or "Disabled"
        tbl26.Content = content
        tbl26.Duration = 2
        notify_(v7, tbl26)
    end,
})

tbl4.Utilities:Divider()

tbl4.Utilities:Toggle({
    Title = "Speed Boost",
    Flag = "Save86",
    Value = tbl2.speedBoost,
    Callback = function(speedBoost)
        tbl2.speedBoost = speedBoost
        local v7 = lib
        local notify_ = v7.Notify
        local tbl26 = {Title = "Speed Boost"}
        local content = speedBoost and "Enabled" or "Disabled"
        tbl26.Content = content
        tbl26.Duration = 2
        notify_(v7, tbl26)
    end,
})

tbl4.Utilities:Slider({
    Title = "Speed Value",
    Flag = "Save87",
    Value = {Min = 0, Max = 5, Default = tbl2.speedValue},
    Callback = function(speedValue)
        tbl2.speedValue = speedValue
    end,
})

tbl4.Utilities:Toggle({
    Title = "Jump Boost",
    Flag = "Save88",
    Value = tbl2.jumpBoost,
    Callback = function(jumpBoost)
        tbl2.jumpBoost = jumpBoost
        local v7 = lib
        local notify_ = v7.Notify
        local tbl26 = {Title = "Jump Boost"}
        local content = jumpBoost and "Enabled" or "Disabled"
        tbl26.Content = content
        tbl26.Duration = 2
        notify_(v7, tbl26)
    end,
})

tbl4.Utilities:Slider({
    Title = "Jump Height",
    Flag = "Save89",
    Value = {Min = 7.2, Max = 500, Default = tbl2.jumpValue},
    Callback = function(jumpValue)
        tbl2.jumpValue = jumpValue
    end,
})

tbl4.Utilities:Slider({
    Title = "Gravity",
    Flag = "Save90",
    Value = {Min = 0, Max = 192.6, Default = tbl2.gravityValue},
    Callback = function(gravityValue)
        tbl2.gravityValue = gravityValue
    end,
})

tbl4.Utilities:Slider({
    Title = "FOV",
    Flag = "Save91",
    Value = {Min = 0, Max = 120, Default = tbl2.fovValue},
    Callback = function(fovValue)
        tbl2.fovValue = fovValue
    end,
})

tbl4.Utilities:Divider()

tbl4.Utilities:Toggle({
    Title = "Counter Toxic",
    Flag = "Save92",
    Value = tbl2.counterToxic,
    Callback = function(counterToxic)
        tbl2.counterToxic = counterToxic

        if counterToxic then
            setupCounterToxic()

            lib:Notify({
                Title = "Counter Toxic",
                Content = "Counter Toxic enabled",
                Duration = 3,
            })
        else
            _G.E = false

            lib:Notify({
                Title = "Counter Toxic",
                Content = "Counter Toxic disabled",
                Duration = 3,
            })
        end
    end,
})

tbl4.Utilities:Toggle({
    Title = "Show Character",
    Flag = "Save93",
    Value = tbl2.showCharacter,
    Callback = function(showCharacter)
        tbl2.showCharacter = showCharacter

        if showCharacter then
            fn20()

            lib:Notify({
                Title = "Show Character",
                Content = "Show Character enabled",
                Duration = 3,
            })
        else
            _G.a = false

            for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
                if player.Character and player.Character:FindFirstChild("Head") then
                    local b_ = player.Character.Head:FindFirstChild("b")

                    if b_ then
                        b_:Destroy()
                    end
                end
            end

            lib:Notify({
                Title = "Show Character",
                Content = "Show Character disabled",
                Duration = 3,
            })
        end
    end,
})

tbl4.Utilities:Toggle({
    Title = "Dash Timer",
    Flag = "Save94",
    Value = tbl2.dashTimer,
    Callback = function(dashTimer)
        tbl2.dashTimer = dashTimer

        if dashTimer then
            fn21()

            lib:Notify({
                Title = "Dash Timer",
                Content = "Dash Timer enabled",
                Duration = 3,
            })
        else
            if tbl3.dashTimer then
                tbl3.dashTimer:Disconnect()
                tbl3.dashTimer = nil
            end

            lib:Notify({
                Title = "Dash Timer",
                Content = "Dash Timer disabled",
                Duration = 3,
            })
        end
    end,
})

tbl4.Settings:Paragraph({
    Title = "Customize Interface",
    Desc = "Personalize your experience",
    Image = "palette",
    ImageSize = 20,
    Color = "White",
})

tbl4.Settings:Keybind({
    Title = "Keybind",
    Flag = "Save95",
    Desc = "Keybind to open ui",
    Value = "K",
    Callback = function(arg)
        Window:SetToggleKey(Enum.KeyCode[arg])
    end,
})

themes = {}

for k in pairs(lib:GetThemes()) do
    themes[#themes + 1] = k
end

table.sort(themes)
canchangetheme = true
canchangedropdown = true
local settings_ = tbl4.Settings
local dropdown2 = settings_.Dropdown

local tbl26 = {
    Title = "Select Theme",
    Values = themes,
    SearchBarEnabled = true,
    MenuWidth = 280,
}

local currentTheme = lib:GetCurrentTheme()
local value4 = currentTheme or "Dark"
tbl26.Value = value4

tbl26.Callback = function(arg)
    canchangedropdown = false
    lib:SetTheme(arg)

    lib:Notify({
        Title = "Theme Applied",
        Content = arg,
        Icon = "palette",
        Duration = 2,
    })

    canchangedropdown = true
end

local v7 = dropdown2(settings_, tbl26)
themeDropdown = v7
local configManager = Window.ConfigManager
local str = "default"
local flag5 = false

local function fn36(arg, arg2, arg3)
    if not isfolder("SentinalHub") then
        makefolder("SentinalHub")
    end

    if arg == "save" then
        writefile("SentinalHub/autoload.json", game:GetService("HttpService"):JSONEncode({Enabled = arg3, ConfigName = arg2}))
        flag5 = arg3
        str = arg2
    elseif arg == "load" and isfile("SentinalHub/autoload.json") then
        local ok_, result = pcall(function()
            return game:GetService("HttpService"):JSONDecode(readfile("SentinalHub/autoload.json"))
        end)

        if ok_ and result then
            flag5 = result.Enabled
            str = result.ConfigName

            if flag5 then
                Window.CurrentConfig = configManager:CreateConfig(str)
                Window.CurrentConfig:Load()
            end
        end
    end
end

fn36("load")

local v8 = tbl4.Settings:Input({
    Title = "Config Name",
    Icon = "file-cog",
    Callback = function(arg)
        str = arg
    end,
})

local v9 = configManager:AllConfigs()
local v10 = table.find(v9, str)
local v11 = v10 and str or nil

tbl4.Settings:Dropdown({
    Title = "All Configs",
    Desc = "Select existing configs",
    Values = v9,
    Value = v11,
    Callback = function(arg)
        str = arg
        v8:Set(arg)
    end,
})

tbl4.Settings:Toggle({
    Title = "Auto Load",
    Desc = "Auto Load Selected Config",
    Default = flag5,
    Callback = function(arg)
        fn36("save", str, arg)

        if arg then
            lib:Notify({Title = "Auto Load Enabled", Desc = "Yez", Icon = "check"})
        else
            lib:Notify({Title = "Auto Load Disabled", Desc = "Nu", Icon = "x"})
        end
    end,
})

tbl4.Settings:Button({
    Title = "Save Config",
    Icon = "",
    Justify = "Center",
    Callback = function()
        Window.CurrentConfig = configManager:CreateConfig(str)

        if Window.CurrentConfig:Save() then
            lib:Notify({
                Title = "Config Saved",
                Desc = "Config '" .. str .. "' saved",
                Icon = "check",
            })
        end
    end,
})

tbl4.Settings:Button({
    Title = "Load Config",
    Icon = "",
    Justify = "Center",
    Callback = function()
        Window.CurrentConfig = configManager:CreateConfig(str)

        if Window.CurrentConfig:Load() then
            lib:Notify({
                Title = "Config Loaded",
                Desc = "Config '" .. str .. "' loaded",
                Icon = "refresh-cw",
            })
        end
    end,
})

lib:OnThemeChange(function(arg)
    canchangetheme = false
    local v12 = ThemeToggle
    local set = v12.Set
    local flag6 = arg == "Dark"
    set(v12, flag6)
    canchangetheme = true
end)

Fonts = {
    Default = "rbxassetid://12187377325",
    ["Gotham Black"] = "rbxassetid://12187867864",
}

FontNames = {}

for k in pairs(Fonts) do
    FontNames[#FontNames + 1] = k
end

table.sort(FontNames)
DefaultFontName = "Default"

for k in pairs(Fonts) do
    if Fonts[k] == "rbxassetid://12187564874377325" then
        DefaultFontName = k
        break
    end
end

pcall(function()
    lib:SetFont(Fonts[DefaultFontName])
end)

FPS_MANAGER_ENABLED = false
FPS_MANAGER_pollInterval = 0.1
FPS_MANAGER_acc_stretch = 0
FPS_MANAGER_acc_m1 = 0
FPS_MANAGER_acc_kakyo = 0
FPS_MANAGER_stretchConn = nil
FPS_MANAGER_m1Conn = nil
FPS_MANAGER_kakyoConn = nil
FPS_MANAGER_fpsConn = nil
FPS_MANAGER_cleanupDone = false
RunService = game:GetService("RunService")
Lighting = game:GetService("Lighting")
Workspace = game:GetService("Workspace")
local tbl27 = {}

pcall(function()
    tbl27.print = print
end)

pcall(function()
    tbl27.warn = warn
end)

pcall(function()
    tbl27.WindUI = rawget(_G, "WindUI")
end)

pcall(function()
    print = function() end
end)

pcall(function()
    warn = function() end
end)

pcall(function()
    if not rawget(_G, "WindUI") then
        lib = {}
    end

    lib.Notify = function() end
end)

pcall(function()
    local StarterGui = game:GetService("StarterGui")

    if StarterGui and StarterGui.SetCore then
        tbl27.StarterGui_SetCore = StarterGui.SetCore
        StarterGui.SetCore = function() end
    end
end)

FPS_MANAGER_safeDisconnect = function(arg)
    pcall(function()
        if arg and (type(arg) == "table" or type(arg) == "userdata") then
            if arg.Disconnect then
                arg:Disconnect()
            end

            if arg.disconnect then
                arg:disconnect()
            end
        end
    end)
end

FPS_MANAGER_disconnectKnown = function()
    pcall(function()
        FPS_MANAGER_safeDisconnect(connection)
        connection = nil
        FPS_MANAGER_safeDisconnect(connection2)
        connection2 = nil
        FPS_MANAGER_safeDisconnect(kakyoHeartbeatConn)
        kakyoHeartbeatConn = nil
        FPS_MANAGER_safeDisconnect(kakyoDoKyotoWatcher)
        kakyoDoKyotoWatcher = nil
        FPS_MANAGER_safeDisconnect(autoSurfRenderConnection)
        autoSurfRenderConnection = nil
        FPS_MANAGER_safeDisconnect(autoSurfCharConnection)
        autoSurfCharConnection = nil
        FPS_MANAGER_safeDisconnect(autoWhirlwindDunkConnection)
        autoWhirlwindDunkConnection = nil
        FPS_MANAGER_safeDisconnect(connection3)
        connection3 = nil

        if tbl3 and type(tbl3) == "table" then
            for k, v12 in pairs(tbl3) do
                pcall(function()
                    FPS_MANAGER_safeDisconnect(v12)
                end)

                tbl3[k] = nil
            end
        end

        if sideDashConnections and type(sideDashConnections) == "table" then
            for k, v12 in pairs(sideDashConnections) do
                pcall(function()
                    FPS_MANAGER_safeDisconnect(v12)
                end)

                sideDashConnections[k] = nil
            end

            sideDashConnections = {}
        end

        if tbl9 and type(tbl9) == "table" then
            local v12, v13, v14 = pairs(tbl9)
            local v15 = v14
            local v16 = v12
            local v17 = v13

            while true do
                local v18, v19 = v16(v17, v15)
                if v18 == nil then
                    break
                end
                v15 = v18

                if type(v19) == "table" then
                    for k, v20 in pairs(v19) do
                        pcall(function()
                            FPS_MANAGER_safeDisconnect(v20)
                        end)

                        v19[k] = nil
                    end

                    v15 = v18
                else
                    pcall(function()
                        FPS_MANAGER_safeDisconnect(v19)
                    end)

                    tbl9[v18] = nil
                end
            end

            tbl9 = {}
        end
    end)
end

FPS_MANAGER_visualCleanup = function()
    if FPS_MANAGER_cleanupDone then
        return
    end
    FPS_MANAGER_cleanupDone = true

    pcall(function()
        pcall(function()
            settings().Rendering.QualityLevel = 1
        end)

        pcall(function()
            settings().Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level01
        end)

        pcall(function()
            settings().Physics.ThrottleAdjustTime = 5
        end)
    end)

    pcall(function()
        Lighting.FogEnd = 1000000
        Lighting.FogStart = 1000000
        local color3 = Color3.new(0, 0, 0)
        Lighting.FogColor = color3
        Lighting.GlobalShadows = false
        Lighting.Brightness = 2
        Lighting.ClockTime = 12
        Lighting.EnvironmentDiffuseScale = 0
        Lighting.EnvironmentSpecularScale = 0
        local color4 = Color3.new(0.5, 0.5, 0.5)
        Lighting.OutdoorAmbient = color4
    end)

    pcall(function()
        for i, descendant in ipairs(Workspace:GetDescendants()) do
            pcall(function()
                if not descendant:IsA("ParticleEmitter") and not descendant:IsA("Trail") and not descendant:IsA("Fire") and not descendant:IsA("Smoke") and not descendant:IsA("Sparkles") then
                    if not descendant:IsA("Decal") and not descendant:IsA("Texture") and not descendant:IsA("SurfaceGui") then
                        if not descendant:IsA("Light") then
                            if descendant:IsA("BasePart") then
                                pcall(function()
                                    descendant.CastShadow = false
                                end)

                                pcall(function()
                                    descendant.Reflectance = 0
                                end)

                                pcall(function()
                                    descendant.Material = Enum.Material.SmoothPlastic
                                end)
                            end

                            return
                        end

                        descendant:Destroy()
                        return
                    end

                    descendant:Destroy()
                    return
                end

                descendant:Destroy()
            end)
        end
    end)

    pcall(function()
        if Workspace:FindFirstChildOfClass("Terrain") then
            Workspace.Terrain.Decoration = false
            Workspace.Terrain.WaterWaveSize = 0
            Workspace.Terrain.WaterWaveSpeed = 0
            Workspace.Terrain.WaterReflectance = 0
            Workspace.Terrain.WaterTransparency = 1
        end
    end)
end

FPS_MANAGER_setupThrottles = function()
    pcall(function()
        if type(fn14) == "function" and tbl2 and tbl2.stretchScreenValue and tbl2.stretchScreenValue ~= 100 then
            FPS_MANAGER_safeDisconnect(FPS_MANAGER_stretchConn)

            local connection8 = RunService.Heartbeat:Connect(function(deltaTime)
                local v12 = FPS_MANAGER_acc_stretch
                local n_7 = deltaTime or 0
                FPS_MANAGER_acc_stretch = v12 + n_7

                if FPS_MANAGER_pollInterval <= FPS_MANAGER_acc_stretch then
                    pcall(function()
                        fn14(tbl2.stretchScreenValue)
                    end)

                    FPS_MANAGER_acc_stretch = 0
                end
            end)

            FPS_MANAGER_stretchConn = connection8
        end
    end)

    pcall(function()
        if type(detectAnyTarget) == "function" and type(holdForMs) == "function" and tbl2 and tbl2.m1Catch then
            FPS_MANAGER_safeDisconnect(FPS_MANAGER_m1Conn)

            local connection8 = RunService.Heartbeat:Connect(function(deltaTime)
                local v12 = FPS_MANAGER_acc_m1
                local n_7 = deltaTime or 0
                FPS_MANAGER_acc_m1 = v12 + n_7

                if FPS_MANAGER_pollInterval <= FPS_MANAGER_acc_m1 then
                    FPS_MANAGER_acc_m1 = 0

                    local ok_, result = pcall(function()
                        return detectAnyTarget()
                    end)

                    ok = ok_
                    found = result

                    if ok and found and not flag2 and not flag then
                        pcall(function()
                            holdForMs(tbl2.m1Hold)
                        end)

                        flag2 = true
                    elseif ok and not found then
                        flag2 = false
                    end
                end
            end)

            FPS_MANAGER_m1Conn = connection8
        end
    end)

    pcall(function()
        if type(KAKYO_DetectorHeartbeat) == "function" and tbl2 and kakyoAutoEnabled ~= nil then
            FPS_MANAGER_safeDisconnect(FPS_MANAGER_kakyoConn)

            local connection8 = RunService.Heartbeat:Connect(function(deltaTime)
                local v12 = FPS_MANAGER_acc_kakyo
                local n_7 = deltaTime or 0
                FPS_MANAGER_acc_kakyo = v12 + n_7

                if FPS_MANAGER_pollInterval * 1 <= FPS_MANAGER_acc_kakyo then
                    FPS_MANAGER_acc_kakyo = 0

                    pcall(function()
                        KAKYO_DetectorHeartbeat()
                    end)
                end
            end)

            FPS_MANAGER_kakyoConn = connection8
        end
    end)
end

FPS_MANAGER_startFPSMonitor = function()
    if FPS_MANAGER_fpsConn then
        return
    end
    sampleCount = 0
    sampleSum = 0

    local connection8 = RunService.Heartbeat:Connect(function(deltaTime)
        if not deltaTime or deltaTime <= 0 then
            return
        end
        sampleSum = sampleSum + 1 / deltaTime
        sampleCount = sampleCount + 1

        if sampleCount >= 30 then
            local n_7 = math.floor(sampleSum / sampleCount + 0.5)
            FPS_EST = n_7
            pcall(function() end)
            sampleSum = 0
            sampleCount = 0
        end
    end)

    FPS_MANAGER_fpsConn = connection8
end

FPS_MANAGER_stopFPSMonitor = function()
    FPS_MANAGER_safeDisconnect(FPS_MANAGER_fpsConn)
    FPS_MANAGER_fpsConn = nil
end

FPS_MANAGER_Toggle = function(arg)
    local flag6 = arg and true or false
    FPS_MANAGER_ENABLED = flag6

    if FPS_MANAGER_ENABLED then
        pcall(function()
            FPS_MANAGER_disconnectKnown()
        end)

        pcall(function()
            FPS_MANAGER_visualCleanup()
        end)

        pcall(function()
            FPS_MANAGER_setupThrottles()
        end)

        pcall(function()
            FPS_MANAGER_startFPSMonitor()
        end)
    else
        pcall(function()
            FPS_MANAGER_safeDisconnect(FPS_MANAGER_stretchConn)
        end)

        FPS_MANAGER_stretchConn = nil

        pcall(function()
            FPS_MANAGER_safeDisconnect(FPS_MANAGER_m1Conn)
        end)

        FPS_MANAGER_m1Conn = nil

        pcall(function()
            FPS_MANAGER_safeDisconnect(FPS_MANAGER_kakyoConn)
        end)

        FPS_MANAGER_kakyoConn = nil

        pcall(function()
            FPS_MANAGER_stopFPSMonitor()
        end)
    end
end

if tbl2 and tbl2.fpsBoost then
    pcall(function()
        FPS_MANAGER_Toggle(true)
    end)
end

Players = game:GetService("Players")
RunService = game:GetService("RunService")
TweenService = game:GetService("TweenService")
Workspace = game:GetService("Workspace")
localPlayer = Players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")
CHECK_INTERVAL = 30
CHANCE = 666
GHOST_DISTANCE = 4
GHOST_DURATION = 3
FADE_TIME = 0.55
WAVE_REPS = 6
WAVE_SPEED = 0.1
USE_MY_AVATAR = false
INSANE_MODE = true
HAUNT_CLOSE_CHANCE = 1800
NUDGE_STEP = 0.5
MAX_NUDGES = 1
RUMBLE_SOUND_ID = nil
WHISPER_SOUND_ID = nil
math.randomseed(tick() + localPlayer.UserId)

safeWait = function(arg)
    if arg <= 0 then
        return
    end
    local now = tick()
    start_wait = now

    while tick() - start_wait < arg do
        RunService.RenderStepped:Wait()
    end
end

createGenericBlackModel = function(arg)
    local model_ = Instance.new("Model")
    m = model_
    m.Name = "TimedGhost_" .. tostring(localPlayer.UserId) .. "_" .. tostring(math.random(1, 99999))
    local part = Instance.new("Part")
    head = part
    head.Name = "Head"
    head.Size = Vector3.new(2, 1, 1)
    head.Parent = m
    local part2 = Instance.new("Part")
    torso = part2
    torso.Name = "Torso"
    torso.Size = Vector3.new(2, 2, 1)
    torso.Parent = m
    local part3 = Instance.new("Part")
    leftArm = part3
    leftArm.Name = "LeftArm"
    leftArm.Size = Vector3.new(1, 2, 1)
    leftArm.Parent = m
    local part4 = Instance.new("Part")
    rightArm = part4
    rightArm.Name = "RightArm"
    rightArm.Size = Vector3.new(1, 2, 1)
    rightArm.Parent = m
    local part5 = Instance.new("Part")
    leftLeg = part5
    leftLeg.Name = "LeftLeg"
    leftLeg.Size = Vector3.new(1, 2, 1)
    leftLeg.Parent = m
    local part6 = Instance.new("Part")
    rightLeg = part6
    rightLeg.Name = "RightLeg"
    rightLeg.Size = Vector3.new(1, 2, 1)
    rightLeg.Parent = m

    for i, child in ipairs(m:GetChildren()) do
        if child:IsA("BasePart") then
            child.Anchored = true
            child.CanCollide = false
            child.Transparency = 0
            child.Color = Color3.new(0, 0, 0)
            child.Material = Enum.Material.SmoothPlastic
            child.CastShadow = false
            child.Massless = true
        end
    end

    torso.CFrame = CFrame.new(0, 5, 0)
    head.CFrame = torso.CFrame * CFrame.new(0, torso.Size.Y / 2 + 0.5, 0)
    leftArm.CFrame = torso.CFrame * CFrame.new(-torso.Size.X / 2 - 0.5, 0, 0)
    rightArm.CFrame = torso.CFrame * CFrame.new(torso.Size.X / 2 + 0.5, 0, 0)
    leftLeg.CFrame = torso.CFrame * CFrame.new(-0.4, -torso.Size.Y / 2 - 1, 0)
    rightLeg.CFrame = torso.CFrame * CFrame.new(0.4, -torso.Size.Y / 2 - 1, 0)
    m.PrimaryPart = torso
    return m
end

cleanCloneAppearance = function(arg)
    local model_ = Instance.new("Model")
    clone = model_
    clone.Name = "TimedGhostClone_" .. tostring(localPlayer.UserId) .. "_" .. tostring(math.random(1, 99999))
    local v12, v13, v14 = ipairs(arg:GetChildren())
    local v15 = v14
    local v16 = v12
    local v17 = v13

    while true do
        local v18, v19 = v16(v17, v15)
        if v18 == nil then
            break
        end
        v15 = v18

        if v19:IsA("BasePart") then
            local instance = Instance.new(v19.ClassName)
            p = instance
            p.Name = v19.Name
            p.Size = v19.Size
            p.Anchored = true
            p.CanCollide = false
            p.Transparency = 0
            p.Color = Color3.new(0, 0, 0)
            p.Material = Enum.Material.SmoothPlastic
            p.CastShadow = false
            p.Massless = true
            p.Parent = clone

            for i, child in ipairs(v19:GetChildren()) do
                if child:IsA("SpecialMesh") or child:IsA("MeshPart") then
                    local clone_ = child:Clone()
                    m = clone_
                    m.Parent = p
                end
            end

            v15 = v18
        end
    end

    for i, descendant in ipairs(arg:GetDescendants()) do
        if descendant:IsA("Motor6D") then
            local v18 = clone
            local findFirstChild = v18.FindFirstChild
            local part0 = descendant.Part0
            local name = part0 and descendant.Part0.Name or ""
            local v19 = findFirstChild(v18, name)
            local v20 = v19 or nil
            p0 = v20
            local v21 = clone
            local findFirstChild2 = v21.FindFirstChild
            local part1 = descendant.Part1
            local name2 = part1 and descendant.Part1.Name or ""
            local v22 = findFirstChild2(v21, name2)
            local v23 = v22 or nil
            p1 = v23

            if p0 and p1 then
                local motor6D = Instance.new("Motor6D")
                m = motor6D
                m.Name = descendant.Name
                m.Part0 = p0
                m.Part1 = p1
                m.C0 = descendant.C0
                m.C1 = descendant.C1
                m.Parent = clone
            end
        end
    end

    local humanoid_ = Instance.new("Humanoid")
    humanoid = humanoid_
    humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
    humanoid.Parent = clone
    return clone
end

recolorToBlack = function(arg)
    for i, descendant in ipairs(arg:GetDescendants()) do
        if descendant:IsA("BasePart") then
            descendant.Color = Color3.new(0, 0, 0)
            descendant.Transparency = 0

            pcall(function()
                descendant.Anchored = true
            end)

            pcall(function()
                descendant.CanCollide = false
            end)

            pcall(function()
                descendant.Massless = true
            end)
        end

        if descendant:IsA("Decal") or descendant:IsA("Texture") then
            pcall(function()
                descendant.Transparency = 1
            end)
        end
    end
end

setModelPrimaryCFrameSafe = function(arg, cFrame)
    if arg.PrimaryPart then
        arg:SetPrimaryPartCFrame(cFrame)
    else
        for i, child in ipairs(arg:GetChildren()) do
            if child:IsA("BasePart") then
                child.CFrame = cFrame
                break
            end
            continue
        end
    end
end

findHeadPart = function(arg)
    for i, descendant in ipairs(arg:GetDescendants()) do
        if descendant:IsA("BasePart") and descendant.Name:lower():find("head") then
            return descendant
        end
    end

    return nil
end

findRightArmMotor = function(arg)
    for i, descendant in ipairs(arg:GetDescendants()) do
        if not descendant:IsA("Motor6D") then
            continue
        end
        local str2 = descendant.Name:lower()
        n = str2
        if n:find("right") and (n:find("shoulder") or n:find("upperarm") or n:find("arm")) then
            return descendant
        end
    end

    return nil
end

doWave = function(arg)
    local v12 = findRightArmMotor(arg)
    motor = v12
    if not motor then
        return
    end
    original = motor.C0
    local v13 = math.rad(28)
    angle = v13

    for i = 1, WAVE_REPS do
        local n_7 = original * CFrame.Angles(0, 0, angle)
        a = n_7
        local n_8 = original * CFrame.Angles(0, 0, -angle * 0.55)
        b = n_8
        TweenService:Create(motor, TweenInfo.new(WAVE_SPEED, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {C0 = a}):Play()
        safeWait(WAVE_SPEED)
        TweenService:Create(motor, TweenInfo.new(WAVE_SPEED, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {C0 = b}):Play()
        safeWait(WAVE_SPEED)
    end

    TweenService:Create(motor, TweenInfo.new(0.16), {C0 = original}):Play()
end

doInsaneFlash = function()
    local screenGui_ = Instance.new("ScreenGui", localPlayer:WaitForChild("PlayerGui"))
    sg = screenGui_
    sg.ResetOnSpawn = false
    sg.Name = "TimedGhostFlash_" .. tostring(math.random(1, 99999))
    local frame = Instance.new("Frame", sg)
    f = frame
    f.Size = UDim2.new(1, 0, 1, 0)
    f.Position = UDim2.new(0, 0, 0, 0)
    f.BackgroundColor3 = Color3.fromRGB(140, 20, 200)
    f.BackgroundTransparency = 1
    f.BorderSizePixel = 0
    local tween = TweenService:Create(f, TweenInfo.new(0.1), {BackgroundTransparency = 0.45})
    inTween = tween
    local tween2 = TweenService:Create(f, TweenInfo.new(0.5), {BackgroundTransparency = 1})
    outTween = tween2
    inTween:Play()
    inTween.Completed:Wait()
    safeWait(0.06)
    outTween:Play()

    delay(1, function()
        pcall(function()
            sg:Destroy()
        end)
    end)
end

cameraShake = function(arg, arg2)
    cam = workspace.CurrentCamera
    orig = cam.CFrame
    local now = tick()
    start_shake = now

    while tick() - start_shake < arg do
        local n_7 = (math.random() - 0.5) * arg2
        rx = n_7
        local n_8 = (math.random() - 0.5) * arg2
        ry = n_8
        local n_9 = (math.random() - 0.5) * arg2
        rz = n_9
        cam.CFrame = orig * CFrame.new(rx, ry, rz)
        RunService.RenderStepped:Wait()
    end

    cam.CFrame = orig
end

intersectsPlayer = function(arg, arg2)
    if not arg.PrimaryPart or not arg2 then
        return false
    end
    dist = (arg.PrimaryPart.Position - arg2.Position).Magnitude
    local flag6 = dist < 1.6
    return flag6
end

spawnGhost = function()
    if shared and shared.__RARE_GHOST_UNLOADER then
        return
    end

    if not localPlayer.Character or not localPlayer.Character:FindFirstChild("HumanoidRootPart") then
        return
    end
    char = localPlayer.Character
    ghost = nil

    if USE_MY_AVATAR then
        local v12 = cleanCloneAppearance(char)
        ghost = v12
        recolorToBlack(ghost)
    else
        local v12 = createGenericBlackModel(char)
        ghost = v12
    end

    ghost.Parent = Workspace
    local primaryPart = ghost.PrimaryPart
    local basePart = primaryPart or ghost:FindFirstChildWhichIsA("BasePart")
    primary = basePart

    if primary then
        ghost.PrimaryPart = primary
    end

    local humanoidRootPart_ = char:FindFirstChild("HumanoidRootPart")
    hrp = humanoidRootPart_
    look = hrp.CFrame.LookVector
    behindPos = hrp.Position - look * GHOST_DISTANCE
    local vector = Vector3.new(behindPos.X, hrp.Position.Y + 0.15, behindPos.Z)
    behindPos = vector
    local cframe = CFrame.new(behindPos, hrp.Position)
    targetCFrame = cframe
    setModelPrimaryCFrameSafe(ghost, targetCFrame)
    nudges = 0

    while intersectsPlayer(ghost, hrp) and nudges < MAX_NUDGES do
        local primaryPart2 = ghost.PrimaryPart
        local position = primaryPart2 and ghost.PrimaryPart.Position or behindPos
        npos = position - look * NUDGE_STEP
        setModelPrimaryCFrameSafe(ghost, CFrame.new(Vector3.new(npos.X, hrp.Position.Y + 0.15, npos.Z), hrp.Position))
        nudges = nudges + 1
        safeWait(0.02)
    end

    for i, descendant in ipairs(ghost:GetDescendants()) do
        if descendant:IsA("BasePart") then
            descendant.Anchored = true
            descendant.CanCollide = false
            descendant.Massless = true
            descendant.CastShadow = false
            descendant.Transparency = 1
        end
    end

    for i, descendant in ipairs(ghost:GetDescendants()) do
        if descendant:IsA("BasePart") then
            TweenService:Create(descendant, TweenInfo.new(FADE_TIME), {Transparency = 0}):Play()
        end
    end

    local v12 = findHeadPart(ghost)
    head = v12
    lookConn = nil

    if head then
        local connection8 = RunService.RenderStepped:Connect(function()
            if not localPlayer.Character or not localPlayer.Character:FindFirstChild("Head") then
                return
            end
            head.CFrame = CFrame.new(head.Position, localPlayer.Character.HumanoidRootPart.Position)
        end)

        lookConn = connection8
    end

    if INSANE_MODE then
        doInsaneFlash()

        coroutine.wrap(function()
            cameraShake(0.25, 0.6)
        end)()

        if RUMBLE_SOUND_ID and ghost.PrimaryPart then
            pcall(function()
                local sound = Instance.new("Sound", ghost.PrimaryPart)
                s = sound
                s.SoundId = RUMBLE_SOUND_ID
                s.Volume = 0.6
                s.Looped = false
                s:Play()

                delay(4, function()
                    pcall(function()
                        s:Destroy()
                    end)
                end)
            end)
        end
    end

    coroutine.wrap(function()
        safeWait(FADE_TIME * 0.6)
        pcall(doWave, ghost)
    end)()

    if WHISPER_SOUND_ID and head then
        pcall(function()
            local sound = Instance.new("Sound", head)
            s = sound
            s.SoundId = WHISPER_SOUND_ID
            s.Volume = 0.55
            s.Looped = false
            s:Play()

            delay(6, function()
                pcall(function()
                    s:Destroy()
                end)
            end)
        end)
    end

    safeWait(GHOST_DURATION)

    if lookConn then
        lookConn:Disconnect()
        lookConn = nil
    end

    for i, descendant in ipairs(ghost:GetDescendants()) do
        if descendant:IsA("BasePart") then
            pcall(function()
                TweenService:Create(descendant, TweenInfo.new(FADE_TIME), {Transparency = 1}):Play()
            end)
        end
    end

    safeWait(FADE_TIME + 0.05)

    pcall(function()
        ghost:Destroy()
    end)
end

hauntClose = function()
    if shared and shared.__RARE_GHOST_UNLOADER then
        return
    end

    if not localPlayer.Character or not localPlayer.Character:FindFirstChild("HumanoidRootPart") then
        return
    end
    char = localPlayer.Character
    ghost = nil

    if USE_MY_AVATAR then
        local v12 = cleanCloneAppearance(char)
        ghost = v12
        recolorToBlack(ghost)
    else
        local v12 = createGenericBlackModel(char)
        ghost = v12
    end

    ghost.Parent = Workspace
    local primaryPart = ghost.PrimaryPart
    local basePart = primaryPart or ghost:FindFirstChildWhichIsA("BasePart")
    primary = basePart

    if primary then
        ghost.PrimaryPart = primary
    end

    hrp = char.HumanoidRootPart
    dir = hrp.CFrame.LookVector
    closePos = hrp.Position + dir * 1.2
    setModelPrimaryCFrameSafe(ghost, CFrame.new(closePos, hrp.Position))

    for i, descendant in ipairs(ghost:GetDescendants()) do
        if descendant:IsA("BasePart") then
            descendant.Anchored = true
            descendant.CanCollide = false
            descendant.Transparency = 0
        end
    end

    local v12 = findHeadPart(ghost)
    head = v12
    conn = nil

    if head then
        local connection8 = RunService.RenderStepped:Connect(function()
            if not localPlayer.Character or not localPlayer.Character:FindFirstChild("HumanoidRootPart") then
                return
            end
            head.CFrame = CFrame.new(head.Position, localPlayer.Character.HumanoidRootPart.Position)
        end)

        conn = connection8
    end

    if INSANE_MODE then
        doInsaneFlash()

        coroutine.wrap(function()
            cameraShake(0.18, 1)
        end)()
    end

    safeWait(1.1)

    if conn then
        conn:Disconnect()
    end

    for i, descendant in ipairs(ghost:GetDescendants()) do
        if descendant:IsA("BasePart") then
            pcall(function()
                TweenService:Create(descendant, TweenInfo.new(0.35), {Transparency = 1}):Play()
            end)
        end
    end

    safeWait(0.45)

    pcall(function()
        ghost:Destroy()
    end)
end

coroutine.wrap(function()
    while not shared or not shared.__RARE_GHOST_UNLOADER do
        t = CHECK_INTERVAL

        for i = 1, t do
            if shared and shared.__RARE_GHOST_UNLOADER then
                break
            end
            safeWait(1)
        end

        if shared and shared.__RARE_GHOST_UNLOADER then
            break
        end

        if localPlayer and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
            if math.random(1, CHANCE) == 1 then
                pcall(spawnGhost)
            elseif HAUNT_CLOSE_CHANCE and HAUNT_CLOSE_CHANCE > 0 and math.random(1, HAUNT_CLOSE_CHANCE) == 1 then
                pcall(hauntClose)
            end
        end
    end
end)()

localPlayer.CharacterRemoving:Connect(function() end)
MESSAGE = "I am watching ...YOU"
FONT = Enum.Font.GothamBlack
FONT_SIZE = 40
CHAR_SPACING = 34
LETTER_FADE_TIME = 0.28
LETTER_JUMP_TIME = 0.42
LETTER_STAGGER = 0.04
SHOW_DURATION = 6
MSG_CHECK_INTERVAL = 50
TRIGGER_HOUR = 3
TRIGGER_MIN_START = 0
TRIGGER_MIN_END = 5
MESSAGE_SCREEN_Y = 0.85
local color3 = Color3.fromRGB(255, 70, 70)
GRAD_START = color3
local color4 = Color3.fromRGB(120, 10, 10)
GRAD_END = color4
PULSE_MIN = 0.96
PULSE_MAX = 1.06
PULSE_TIME = 0.9
SHAKE_OFFSET = 5
SHAKE_TIME = 0.12
alive = true
triggeredThisWindow = false
revealDebounce = false

lerpColor = function(arg, arg2, arg3)
    return Color3.new(arg.r + (arg2.r - arg.r) * arg3, arg.g + (arg2.g - arg.g) * arg3, arg.b + (arg2.b - arg.b) * arg3)
end

local screenGui_ = Instance.new("ScreenGui")
screenGui = screenGui_
screenGui.Name = "ThreeAMReveal_Minimal"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui
local frame = Instance.new("Frame")
root = frame
root.Size = UDim2.new(1, 0, 1, 0)
root.BackgroundTransparency = 1
root.Parent = screenGui
local frame2 = Instance.new("Frame")
centerContainer = frame2
centerContainer.Name = "CenterContainer"
centerContainer.Size = UDim2.new(0, math.clamp(#MESSAGE * CHAR_SPACING, 260, 960), 0, 140)
centerContainer.Position = UDim2.new(0.5, 0, MESSAGE_SCREEN_Y, 0)
centerContainer.AnchorPoint = Vector2.new(0.5, 0.5)
centerContainer.BackgroundTransparency = 1
centerContainer.Parent = root
local frame3 = Instance.new("Frame")
lettersHolder = frame3
lettersHolder.Name = "LettersHolder"
lettersHolder.Size = UDim2.new(1, 0, 1, 0)
lettersHolder.BackgroundTransparency = 1
lettersHolder.Parent = centerContainer

isIn3AMWindow = function()
    local ok_, result = pcall(function()
        return os.date("*t")
    end)

    ok = ok_
    t = result
    if not ok or not t then
        return false
    end

    if t.hour == TRIGGER_HOUR and TRIGGER_MIN_START <= t.min and t.min < TRIGGER_MIN_END then
        return true
    end
    return false
end

createLetter = function(text, textColor3)
    local textLabel = Instance.new("TextLabel")
    lbl = textLabel
    lbl.Name = "Char"
    lbl.BackgroundTransparency = 1
    lbl.Size = UDim2.new(0, CHAR_SPACING, 0, 90)
    lbl.Font = FONT
    lbl.Text = text
    lbl.TextSize = FONT_SIZE
    lbl.TextColor3 = textColor3
    lbl.TextTransparency = 1
    lbl.TextStrokeTransparency = 0.6
    lbl.TextStrokeColor3 = Color3.fromRGB(30, 0, 0)
    lbl.AnchorPoint = Vector2.new(0, 0)
    lbl.Parent = lettersHolder
    local uiStroke = Instance.new("UIStroke")
    stroke = uiStroke
    stroke.Thickness = 2
    stroke.Transparency = 0.6
    stroke.Color = Color3.fromRGB(20, 0, 0)
    stroke.Parent = lbl
    local textLabel2 = Instance.new("TextLabel")
    shadow = textLabel2
    shadow.Name = "shadow"
    shadow.BackgroundTransparency = 1
    shadow.Size = lbl.Size
    shadow.Font = FONT
    shadow.Text = text
    shadow.TextSize = FONT_SIZE
    shadow.TextColor3 = Color3.fromRGB(25, 0, 0)
    shadow.TextTransparency = 0.8
    shadow.AnchorPoint = lbl.AnchorPoint
    shadow.ZIndex = lbl.ZIndex - 1
    shadow.Parent = lettersHolder
    local uiScale = Instance.new("UIScale")
    us = uiScale
    us.Scale = 1
    us.Parent = lbl
    return lbl, shadow, us
end

animateLetter = function(arg, arg2, arg3, arg4, arg5)
    startPos = arg4
    local udim2 = UDim2.new(startPos.X.Scale, startPos.X.Offset, startPos.Y.Scale, startPos.Y.Offset + 18)
    arg.Position = udim2
    arg2.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + 2, startPos.Y.Scale, startPos.Y.Offset + 32)
    local tween = TweenService:Create(arg, TweenInfo.new(LETTER_FADE_TIME, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0})
    fadeTween = tween
    local tween2 = TweenService:Create(arg2, TweenInfo.new(LETTER_FADE_TIME, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0.2})
    shadowFade = tween2
    local tween3 = TweenService:Create(arg, TweenInfo.new(LETTER_JUMP_TIME, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position = startPos})
    jumpTween = tween3

    local tween4 = TweenService:Create(arg2, TweenInfo.new(LETTER_JUMP_TIME, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + 2, startPos.Y.Scale, startPos.Y.Offset + 14),
    })

    shadowLift = tween4

    delay(arg5, function()
        if arg and arg.Parent then
            fadeTween:Play()
            shadowFade:Play()
            jumpTween:Play()
            shadowLift:Play()
        end
    end)

    running = true

    local thread = coroutine.create(function()
        while running and arg and arg.Parent do
            local tween5 = TweenService:Create(arg3, TweenInfo.new(PULSE_TIME / 2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Scale = PULSE_MAX})
            up = tween5
            local tween6 = TweenService:Create(arg3, TweenInfo.new(PULSE_TIME / 2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Scale = PULSE_MIN})
            down = tween6
            up:Play()
            up.Completed:Wait()
            down:Play()
            down.Completed:Wait()
        end
    end)

    pulseCo = thread

    delay(arg5 + 0.05, function()
        if coroutine.status(pulseCo) == "suspended" then
            pcall(function()
                coroutine.resume(pulseCo)
            end)
        end
    end)

    shakeRunning = true

    local thread2 = coroutine.create(function()
        while shakeRunning and arg and arg.Parent do
            local n_7 = math.random(-SHAKE_OFFSET, SHAKE_OFFSET)
            offsetX = n_7
            local n_8 = math.random(-SHAKE_OFFSET / 2, SHAKE_OFFSET / 2)
            offsetY = n_8
            local udim22 = UDim2.new(startPos.X.Scale, startPos.X.Offset + offsetX, startPos.Y.Scale, startPos.Y.Offset + offsetY)
            toPos = udim22
            local tween5 = TweenService:Create(arg, TweenInfo.new(SHAKE_TIME, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = toPos})
            tTween = tween5

            local tween6 = TweenService:Create(arg2, TweenInfo.new(SHAKE_TIME, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + 2 + offsetX, startPos.Y.Scale, startPos.Y.Offset + 14 + offsetY),
            })

            sTween = tween6
            tTween:Play()
            sTween:Play()
            tTween.Completed:Wait()
            local tween7 = TweenService:Create(arg, TweenInfo.new(SHAKE_TIME, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = startPos})
            rt = tween7

            local tween8 = TweenService:Create(arg2, TweenInfo.new(SHAKE_TIME, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + 2, startPos.Y.Scale, startPos.Y.Offset + 14),
            })

            rs = tween8
            rt:Play()
            rs:Play()
            rt.Completed:Wait()
            wait(0.08)
        end
    end)

    shakeCo = thread2

    delay(arg5 + 0.1, function()
        if coroutine.status(shakeCo) == "suspended" then
            pcall(function()
                coroutine.resume(shakeCo)
            end)
        end
    end)

    return function()
        running = false
        shakeRunning = false

        pcall(function()
            if arg3 and arg3.Parent then
                arg3:Destroy()
            end
        end)
    end
end

clearLetters = function()
    for i, child in ipairs(lettersHolder:GetChildren()) do
        pcall(function()
            child:Destroy()
        end)
    end
end

showMessage = function(arg)
    if not alive or revealDebounce then
        return
    end
    revealDebounce = true
    clearLetters()
    chars = {}

    for match in arg:gmatch(".") do
        table.insert(chars, match)
    end

    total = #chars
    if total == 0 then
        revealDebounce = false
        return
    end
    RunService.Heartbeat:Wait()
    containerWidth = centerContainer.AbsoluteSize.X
    totalWidth = total * CHAR_SPACING
    local n_7 = math.floor((containerWidth - totalWidth) / 2)
    startX = n_7
    local n_8 = math.max(startX, 0)
    startX = n_8
    stoppers = {}

    for i, v12 in ipairs(chars) do
        local n_9 = total == 1 and 0 or (i - 1) / (total - 1)
        t = n_9
        local v13 = lerpColor(GRAD_START, GRAD_END, t)
        col = v13
        local v14, v15, v16 = createLetter(v12, col)
        lbl = v14
        shadow = v15
        us = v16
        x = startX + (i - 1) * CHAR_SPACING
        local udim2 = UDim2.new(0, x, 0, 8)
        targetPos = udim2
        local v17 = animateLetter(lbl, shadow, us, targetPos, (i - 1) * LETTER_STAGGER)
        stopFn = v17

        if type(stopFn) == "function" then
            table.insert(stoppers, stopFn)
        end
    end

    delay(SHOW_DURATION, function()
        for i, v12 in ipairs(stoppers) do
            pcall(v12)
        end

        for i, child in ipairs(lettersHolder:GetChildren()) do
            if child:IsA("TextLabel") then
                local tween = TweenService:Create(child, TweenInfo.new(0.45, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {TextTransparency = 1})
                out = tween
                out:Play()

                delay(0.55, function()
                    pcall(function()
                        child:Destroy()
                    end)
                end)
            end
        end

        revealDebounce = false
    end)
end

spawn(function()
    local v12, n_7
    n_7 = 1

    while true do
        if n_7 == 1 then
            if alive then
                n_7 = 2
            else
                n_7 = 9
            end
        elseif n_7 == 2 then
            v12 = isIn3AMWindow()
            inWindow = v12

            if inWindow then
                n_7 = 3
            else
                n_7 = 5
            end
        elseif n_7 == 3 then
            if triggeredThisWindow then
                n_7 = 6
            else
                n_7 = 4
            end
        elseif n_7 == 4 then
            triggeredThisWindow = true
            showMessage(MESSAGE)
            n_7 = 6
        elseif n_7 == 5 then
            triggeredThisWindow = false
            n_7 = 6
        elseif n_7 == 6 then
            waited = 0
            n_7 = 7
        elseif n_7 == 7 then
            if waited < MSG_CHECK_INTERVAL and alive then
                n_7 = 8
            else
                n_7 = 1
            end
        elseif n_7 == 8 then
            wait(0.25)
            waited = waited + 0.25
            n_7 = 7
        elseif n_7 == 9 then
            return
        end
    end
end)

localPlayer.AncestryChanged:Connect(function()
    if not localPlayer:IsDescendantOf(game) then
        alive = false

        pcall(function()
            screenGui:Destroy()
        end)
    end
end)