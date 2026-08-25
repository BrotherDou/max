-- cadd:风御 X
if workspace.DistributedGameTime < 4 then
    task.wait(4 - workspace.DistributedGameTime)
end

game:GetService("Players").LocalPlayer.Idled:Connect(function()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local LocalCharacter = LocalPlayer.Character
local LocalHumanoid = LocalCharacter and (LocalCharacter:FindFirstChildOfClass("Humanoid") or LocalCharacter:WaitForChild("Humanoid", 2))
local LocalHead = LocalCharacter and (LocalCharacter:FindFirstChild("Head") or LocalCharacter:WaitForChild("Head", 2))
local LocalRoot = LocalCharacter and ((LocalHumanoid and LocalHumanoid.RootPart) or LocalCharacter:FindFirstChild("HumanoidRootPart") or LocalCharacter:WaitForChild("HumanoidRootPart", 2))
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Network = ReplicatedStorage:FindFirstChild("Modules") and (ReplicatedStorage:FindFirstChild("Modules"):FindFirstChild("Network", true) and ReplicatedStorage:FindFirstChild("Modules"):FindFirstChild("Network", true):FindFirstChild("Network")) or ReplicatedStorage:FindFirstChild("Modules"):FindFirstChild("Network", true)
local RunService = game:GetService("RunService")
local Debris = game:GetService("Debris")
local UserInputService = game:GetService("UserInputService")
local VirtualUser = game:GetService("VirtualUser")

local IsUnderground = false
local InvincibleEnabled = false

local function IsHitboxNotNear(HitboxPart, Position)
    if HitboxPart and Position and LocalRoot then
        local Params = OverlapParams.new()
        Params.FilterType = Enum.RaycastFilterType.Include
        Params.MaxParts = 1
        Params.FilterDescendantsInstances = {HitboxPart}
        local Result = workspace:GetPartBoundsInRadius(Position, 2.5, Params)
        return #Result == 0
    end
    return false
end

local function VelocityToPosition(target)
    local TimeLimit = workspace.DistributedGameTime + 7
    local OGCG = LocalRoot.CollisionGroup
    local AllParts = LocalCharacter:QueryDescendants("BasePart:not([CollisonGroup=Default])")
    for _, v in AllParts do v.CollisionGroup = "None" end
    local Body = Instance.new("BodyVelocity")
    Body.MaxForce = Vector3.new(9e9, 9e9, 9e9)
    Body.Velocity = Vector3.new(0, 0, 0)
    Body.Parent = LocalRoot
    while (LocalRoot.Position - target).Magnitude > 2 and not (workspace.DistributedGameTime >= TimeLimit) do
        Body.Velocity = (target - LocalRoot.Position).Unit * 100
        RunService.RenderStepped:Wait()
    end
    Body:Destroy()
    for _, v in AllParts do v.CollisionGroup = OGCG end
end

local function GoUnder(Value)
    local Offset = 22
    if Value == nil then
        IsUnderground = false
        Value = InvincibleEnabled
    end
    if Value and not IsUnderground then
        if not (LocalRoot and LocalHead and LocalHumanoid) then
            repeat task.wait(0.25) until (LocalRoot and LocalHead and LocalHumanoid)
        end
        local MapName
        local GameMap = workspace:FindFirstChild("Map") and workspace:FindFirstChild("Map"):FindFirstChild("Ingame") and workspace:FindFirstChild("Map"):FindFirstChild("Ingame"):FindFirstChild("Map")
        if GameMap and GameMap:FindFirstChild("Config") then
            local MapData = require(GameMap:FindFirstChild("Config"))
            if MapData and MapData["DisplayName"] then MapName = MapData["DisplayName"] end
        end
        local OldCFrame = LocalRoot.CFrame
        local UnderCFrame
        if MapName == "Underground War" then
            local SelfParams = OverlapParams.new()
            SelfParams.FilterType = Enum.RaycastFilterType.Include
            SelfParams.MaxParts = 1
            SelfParams.FilterDescendantsInstances = {LocalRoot}
            local BoxCheck = workspace:GetPartBoundsInBox(CFrame.new(-172, 4444, -20, 1, 0, 0, 0, 1, 0, 0, 0, 1), Vector3.new(230, 35, 300), SelfParams)
            if #BoxCheck > 0 then Offset = 50 end
            local MapPart = GameMap and GameMap:FindFirstChild("DirtSlabs", true) and GameMap:FindFirstChild("DirtSlabs", true):FindFirstChildWhichIsA("BasePart")
            UnderCFrame = MapPart and CFrame.new(Vector3.new(OldCFrame.X + 0.5, MapPart.Position.Y - 7.5, OldCFrame.Z + 0.5)) or OldCFrame * CFrame.new(0, -Offset, 0)
        else
            UnderCFrame = OldCFrame * CFrame.new(0, -Offset, 0)
        end
        LocalHumanoid.CameraOffset = Vector3.new(0, 12e12, 0)
        task.wait(0.1)
        LocalRoot.CFrame = UnderCFrame
        local Tries = 0
        local TimerStop = workspace.DistributedGameTime + 3.5
        repeat
            Tries = Tries + 1
            LocalRoot.Velocity = Vector3.zero
            VelocityToPosition(UnderCFrame.Position)
            LocalHead.Anchored = true
            repeat task.wait() until IsHitboxNotNear(LocalCharacter:FindFirstChild("QueryHitbox"), OldCFrame.Position) or not LocalRoot or not LocalCharacter or TimerStop < workspace.DistributedGameTime
            IsUnderground = true
            task.wait()
            LocalRoot.Velocity = Vector3.zero
            LocalHead.Anchored = false
            LocalRoot.CFrame = OldCFrame
            RunService.Heartbeat:Wait()
            LocalRoot.Velocity = Vector3.zero
        until IsHitboxNotNear(LocalCharacter:FindFirstChild("QueryHitbox"), OldCFrame.Position) or Tries >= 3
        if Tries >= 3 then
            IsUnderground = false
            InvincibleEnabled = false
            return
        end
    else
        IsUnderground = false
    end
end

if Network then
    local UnreliableRemoteEvent = Network:FindFirstChild("UnreliableRemoteEvent")
    if UnreliableRemoteEvent then
        local hookmetamethod = (function()
            local h = hookmetamethod
            if not h then h = hook_metamethod end
            return h
        end)()
        if hookmetamethod then
            local __namecall
            local newcclosure = (function()
                local nc = newcclosure
                if not nc then nc = new_cclosure end
                return nc
            end)()
            local checkcaller = (function()
                local cc = checkcaller
                if not cc then cc = check_caller end
                return cc
            end)()
            __namecall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
                if not checkcaller() and IsUnderground and getnamecallmethod() == "FireServer" and self == UnreliableRemoteEvent then
                    local Args = {...}
                    if Args[1] == 1 then
                        return function() return nil end
                    end
                end
                return __namecall(self, ...)
            end))
        end
    end
end

local function CreateGUI()
    local ScreenGui = Instance.new("ScreenGui", LocalPlayer.PlayerGui)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 200, 0, 120)
    Frame.Position = UDim2.new(0.5, -100, 0.5, -60)
    Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    Frame.Parent = ScreenGui

    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(0, 180, 0, 30)
    Title.Position = UDim2.new(0.5, -90, 0.5, -55)
    Title.Text = "殺脚本-无敌控制"
    Title.BackgroundTransparency = 1
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Parent = Frame

    local Btn = Instance.new("TextButton")
    Btn.Size = UDim2.new(0, 180, 0, 30)
    Btn.Position = UDim2.new(0.5, -90, 0.5, -15)
    Btn.Text = "关"
    Btn.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    Btn.Parent = Frame

    local HideBtn = Instance.new("TextButton")
    HideBtn.Size = UDim2.new(0, 30, 0, 30)
    HideBtn.Position = UDim2.new(0, 10, 1, -40)
    HideBtn.Text = "I"
    HideBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    HideBtn.Parent = ScreenGui

    local Credits = Instance.new("TextLabel")
    Credits.Size = UDim2.new(0, 180, 0, 20)
    Credits.Position = UDim2.new(0.5, -90, 0.5, 25)
    Credits.Text = "刺猬.风御 X"
    Credits.BackgroundTransparency = 1
    Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
    Credits.Parent = Frame

    local dragging, dragStart, framePos
    local function onInputBegan(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            framePos = Frame.Position
        end
    end
    local function onInputChanged(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragStart
            Frame.Position = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
        end
    end
    local function onInputEnded(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end
    Title.InputBegan:Connect(onInputBegan)
    UserInputService.InputChanged:Connect(onInputChanged)
    UserInputService.InputEnded:Connect(onInputEnded)

    HideBtn.MouseButton1Click:Connect(function()
        Frame.Visible = not Frame.Visible
    end)

    return Btn, Frame
end

local ToggleBtn, MainFrame = CreateGUI()

ToggleBtn.MouseButton1Click:Connect(function()
    InvincibleEnabled = not InvincibleEnabled
    ToggleBtn.Text = InvincibleEnabled and "开" or "关"
    if InvincibleEnabled then
        GoUnder(true)
    else
        GoUnder(false)
        if LocalHumanoid then
            LocalHumanoid.CameraOffset = Vector3.new(0, 0, 0)
        end
        IsUnderground = false
    end
end)

LocalPlayer.CharacterAdded:Connect(function(Char)
    task.wait(0.5)
    LocalCharacter = Char
    LocalHumanoid = Char:FindFirstChildOfClass("Humanoid")
    LocalHead = Char:FindFirstChild("Head")
    LocalRoot = Char:FindFirstChild("HumanoidRootPart")
    if InvincibleEnabled then
        GoUnder(true)
    end
end)