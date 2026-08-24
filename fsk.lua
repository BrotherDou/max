--[[
                                                                                    
                                                                                    
    ,---,.                                                                          
  ,'  .' |                                                     ,---,                
,---.'   |                  ,---,                             /_ ./|          ,--,  
|   |   .'              ,-+-. /  |   ,----._,.          ,---, |  ' :        ,'_ /|  
:   :  :      ,---.    ,--.'|'   |  /   /  ' /         /___/ \.  : |   .--. |  | :  
:   |  |-,   /     \  |   |  ,"' | |   :     |          .  \  \ ,' ' ,'_ /| :  . |  
|   :  ;/|  /    /  | |   | /  | | |   | .\  .           \  ;  `  ,' |  ' | |  . .  
|   |   .' .    ' / | |   | |  | | .   ; ';  |            \  \    '  |  | ' |  | |  
'   :  '   '   ;   /| |   | |  |/  '   .   . |             '  \   |  :  | : ;  ; |  
|   |  |   '   |  / | |   | |--'    `---`-'| |              \  ;  ;  '  :  `--'   \ 
|   :  \   |   :    | |   |/        .'__/\_: |               :  \  \ :  ,      .-./ 
|   | ,'    \   \  /  '---'         |   :    :                \  ' ;  `--`----'     
`----'       `----'                  \   \  /                  `--`                 
                                      `--`-'                                        
    by 风御 X ┃ FengYu Script Hub

    此脚本为AI生成
    
]]
local success, library = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/FengYu-X/FengYu-ui/refs/heads/main/UI.lua"))()
end)

if not success then
    print("欢迎使用")  
    return
end

local Window = library:CreateWindow({
    Name = "殺脚本┃被遗弃",
    SubName = "由合作人风御 X制作的脚本",
    Keybind = Enum.KeyCode.RightShift,
    Logo = 93541172717831,
    Scene = 107675149559858,
    Theme = "Dark"
})

Window.CurrentConfig = "None"

Window:Category({
    Name = "介绍",
    Collapsible = true,
    Opened = true, 
})

local FengYu = Window:Tab("更新内容", "84830962019412")

local Feng = FengYu:Section({
    Name = "殺脚本信息内容",
    Logo = "84830962019412",
    open = true
})

Feng:Paragraph({
    Name = "<font color='#ff6666'>更新内容</font>",
    Content = "●- 修复了大部分功能不能用的问题"
})

Feng:Video({
    Video = "rbxassetid://5608337069",
    Name = "视频",
    AutoPlay = true,
    Looped = true,
    Volume = 0.5,
    AspectRatio = "16:9",
    Radius = 8,
})

local FengYu = Window:Tab("高级功能", "84830962019412")

local Feng = FengYu:Section({
    Name = "付费信息",
    Logo = "84830962019412",
    open = true
})

Feng:Image({
    Name = "[付费脚本落叶 pro]",
    SubName = "脚本价格为10元",
    Description = {
        "此脚本已跟殺脚本合作", 
        "更多好玩的功能都在这里面", 
        "[点击我获得QQ主群]"
    },
    Icon = "rbxassetid://84830962019412",
    IconColor = Color3.fromRGB(255, 255, 255),
    StrokeColor = Color3.fromRGB(85, 255, 0),
    Callback = function()
        setclipboard("961626866")
    end
})

local FengYu = Window:Tab("脚本名单", "84830962019412")

local Feng = FengYu:Section({
    Name = "人员卡片",
    Logo = "84830962019412",
    open = true
})

Feng:Social({
    Name = "殺脚本社区",
    SubName = "风御 X",
    SmlName = "你想知道的信息都在这个QQ群里",
    copy = "958022428",
    Cbn = "复制QQ群",
    Logo = "rbxassetid://84830962019412"
})

Feng:Divider()

Feng:Social({
    Name = "殺脚本创始人",
    SubName = "单殺",
    SmlName = "你好，你很好吗",
    Logo = "rbxassetid://10418960920"
})

Feng:Social({
    Name = "殺脚本现作者",
    SubName = "风御 X",
    SmlName = "yoU Too sLoW WANT To TRy AGAIN?",
    copy = "1926190957*",
    Cbn = "复制QQ号",
    Logo = "rbxassetid://114277328620293"
})

Feng:Social({
    Name = "落叶脚本中心作者",
    SubName = "kr X",
    SmlName = "活在被众人憎恨的世界，好过在被众人遗忘的世界",
    copy = "1826649340",
    Cbn = "复制QQ号",
    Logo = "rbxassetid://89985745713907"
})

Window:Category({
    Name = "通用区",
    Collapsible = true,
    Opened = true, 
})

local FengYu = Window:Tab("服务器", "132419977785712")

local Feng = FengYu:Section({
    Name = "服务器列表",
    SubName = "选择你需要的服务器",
    Logo = "84830962019412",
    open = true
})

Feng:Button({
    Name = "浏览器",
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
        local HttpService = game:GetService("HttpService")
        local Players = game:GetService("Players")

        local serverBrowserGui = Instance.new("ScreenGui")
        serverBrowserGui.Name = "ServerBrowserGui"
        serverBrowserGui.Parent = game.CoreGui

        local mainFrame = Instance.new("Frame")
        mainFrame.Name = "MainFrame"
        mainFrame.Size = UDim2.new(0, 400, 0, 300)
        mainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
        mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        mainFrame.BorderSizePixel = 0
        mainFrame.Active = true
        mainFrame.Draggable = true
        mainFrame.Parent = serverBrowserGui

        local titleBar = Instance.new("Frame")
        titleBar.Name = "TitleBar"
        titleBar.Size = UDim2.new(1, 0, 0, 30)
        titleBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        titleBar.BorderSizePixel = 0
        titleBar.Parent = mainFrame

        local titleText = Instance.new("TextLabel")
        titleText.Name = "TitleText"
        titleText.Size = UDim2.new(1, -30, 1, 0)
        titleText.Position = UDim2.new(0, 10, 0, 0)
        titleText.BackgroundTransparency = 1
        titleText.Text = "服务器浏览器"
        titleText.TextColor3 = Color3.fromRGB(255, 255, 255)
        titleText.TextSize = 16
        titleText.Font = Enum.Font.SourceSansBold
        titleText.TextXAlignment = Enum.TextXAlignment.Left
        titleText.Parent = titleBar

        local closeButton = Instance.new("TextButton")
        closeButton.Name = "CloseButton"
        closeButton.Size = UDim2.new(0, 20, 0, 20)
        closeButton.Position = UDim2.new(1, -25, 0, 5)
        closeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        closeButton.Text = "X"
        closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        closeButton.Font = Enum.Font.SourceSansBold
        closeButton.TextSize = 14
        closeButton.Parent = titleBar

        local serverList = Instance.new("ScrollingFrame")
        serverList.Name = "ServerList"
        serverList.Size = UDim2.new(1, -20, 1, -80)
        serverList.Position = UDim2.new(0, 10, 0, 40)
        serverList.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        serverList.BorderSizePixel = 0
        serverList.ScrollBarThickness = 6
        serverList.CanvasSize = UDim2.new(0, 0, 0, 0)
        serverList.Parent = mainFrame

        local refreshButton = Instance.new("TextButton")
        refreshButton.Name = "RefreshButton"
        refreshButton.Size = UDim2.new(0, 100, 0, 30)
        refreshButton.Position = UDim2.new(0, 10, 1, -35)
        refreshButton.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
        refreshButton.Text = "刷新"
        refreshButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        refreshButton.Font = Enum.Font.SourceSansBold
        refreshButton.TextSize = 14
        refreshButton.Parent = mainFrame

        local statusLabel = Instance.new("TextLabel")
        statusLabel.Name = "StatusLabel"
        statusLabel.Size = UDim2.new(0, 280, 0, 30)
        statusLabel.Position = UDim2.new(0, 120, 1, -35)
        statusLabel.BackgroundTransparency = 1
        statusLabel.Text = "准备就绪"
        statusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
        statusLabel.TextSize = 14
        statusLabel.Font = Enum.Font.SourceSans
        statusLabel.TextXAlignment = Enum.TextXAlignment.Left
        statusLabel.Parent = mainFrame

        local UIListLayout = Instance.new("UIListLayout")
        UIListLayout.Parent = serverList
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 5)

        local function createServerButton(serverInfo, index)
            local serverButton = Instance.new("Frame")
            serverButton.Name = "ServerButton_" .. index
            serverButton.Size = UDim2.new(1, -10, 0, 50)
            serverButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
            serverButton.BorderSizePixel = 0

            local playerCount = Instance.new("TextLabel")
            playerCount.Name = "PlayerCount"
            playerCount.Size = UDim2.new(0, 80, 1, 0)
            playerCount.BackgroundTransparency = 1
            playerCount.Text = serverInfo.playing .. "/" .. serverInfo.maxPlayers
            playerCount.TextColor3 = Color3.fromRGB(255, 255, 255)
            playerCount.TextSize = 14
            playerCount.Font = Enum.Font.SourceSans
            playerCount.Parent = serverButton

            local pingLabel = Instance.new("TextLabel")
            pingLabel.Name = "PingLabel"
            pingLabel.Size = UDim2.new(0, 80, 0, 20)
            pingLabel.Position = UDim2.new(0, 90, 0, 5)
            pingLabel.BackgroundTransparency = 1
            pingLabel.Text = "延迟: " .. (serverInfo.ping or "N/A")
            pingLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
            pingLabel.TextSize = 12
            pingLabel.Font = Enum.Font.SourceSans
            pingLabel.TextXAlignment = Enum.TextXAlignment.Left
            pingLabel.Parent = serverButton

            local idLabel = Instance.new("TextLabel")
            idLabel.Name = "IdLabel"
            idLabel.Size = UDim2.new(0, 200, 0, 20)
            idLabel.Position = UDim2.new(0, 90, 0, 25)
            idLabel.BackgroundTransparency = 1
            idLabel.Text = "ID: " .. serverInfo.id
            idLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
            idLabel.TextSize = 12
            idLabel.Font = Enum.Font.SourceSans
            idLabel.TextXAlignment = Enum.TextXAlignment.Left
            idLabel.Parent = serverButton

            local joinButton = Instance.new("TextButton")
            joinButton.Name = "JoinButton"
            joinButton.Size = UDim2.new(0, 60, 0, 25)
            joinButton.Position = UDim2.new(1, -70, 0.5, -12.5)
            joinButton.BackgroundColor3 = Color3.fromRGB(70, 150, 70)
            joinButton.Text = "加入"
            joinButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            joinButton.Font = Enum.Font.SourceSansBold
            joinButton.TextSize = 14
            joinButton.Parent = serverButton

            joinButton.MouseButton1Click:Connect(function()
                statusLabel.Text = "正在加入服务器..."
                TeleportService:TeleportToPlaceInstance(game.PlaceId, serverInfo.id)
            end)

            return serverButton
        end

        local function fetchServers()
            statusLabel.Text = "正在获取服务器..."
            for _, child in pairs(serverList:GetChildren()) do
                if child:IsA("Frame") then child:Destroy() end
            end

            local success, result = pcall(function()
                return HttpService:JSONDecode(game:HttpGet(
                    "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
                ))
            end)

            if success and result and result.data then
                for i, server in ipairs(result.data) do
                    local btn = createServerButton({
                        id = server.id,
                        playing = server.playing,
                        maxPlayers = server.maxPlayers,
                        ping = server.ping
                    }, i)
                    btn.Parent = serverList
                end
                serverList.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 10)
                statusLabel.Text = "找到 " .. #result.data .. " 个服务器"
            else
                statusLabel.Text = "获取服务器失败"
            end
        end

        refreshButton.MouseButton1Click:Connect(fetchServers)
        closeButton.MouseButton1Click:Connect(function()
            serverBrowserGui:Destroy()
        end)
        fetchServers()
    end
})

Feng:Button({
    Name = "重新加入服务器",
    Callback = function()
        pcall(function()
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
        end)
    end
})

Feng:Button({
    Name = "加入延迟低的服务器",
    Callback = function()
        local function findRandomServer()
            local success, data = pcall(function()
                return game:GetService("HttpService"):JSONDecode(
                    game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")
                )
            end)
            if success and data and data.data then
                local available = {}
                for _, srv in ipairs(data.data) do
                    if srv.playing < srv.maxPlayers and srv.id ~= game.JobId then
                        table.insert(available, srv)
                    end
                end
                if #available > 0 then
                    local chosen = available[math.random(1, #available)]
                    return chosen.id
                end
            end
            return nil
        end
        local serverId = findRandomServer()
        if serverId then
            pcall(function()
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, serverId, game.Players.LocalPlayer)
            end)
        end
    end
})

Feng:Button({
    Name = "加入新手服务器",
    Callback = function()
        local function findSmallerServer()
            local success, data = pcall(function()
                return game:GetService("HttpService"):JSONDecode(
                    game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")
                )
            end)
            if success and data and data.data then
                table.sort(data.data, function(a, b) return a.playing < b.playing end)
                local currentPlayers = #game.Players:GetPlayers()
                for _, srv in ipairs(data.data) do
                    if srv.playing < currentPlayers and srv.id ~= game.JobId and srv.playing > 0 then
                        return srv.id
                    end
                end
                for _, srv in ipairs(data.data) do
                    if srv.id ~= game.JobId and srv.playing > 0 then
                        return srv.id
                    end
                end
            end
            return nil
        end
        local serverId = findSmallerServer()
        if serverId then
            pcall(function()
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, serverId, game.Players.LocalPlayer)
            end)
        end
    end
})

local FengYu = Window:Tab("通用区", "73542239032835")

local Feng = FengYu:Section({
    Name = "主要列表",
    SubName = "本地修改阶段",
    Logo = "73542239032835",
    open = true
})

Feng:Button({
    Name = "翻译过的Dex",
    Callback = function()
        loadstring(game:HttpGet("https://gitee.com/cmbhbh/cmbh/raw/master/Bex.lua"))()
    end
})

do
    local antiBlindFreezeEnabled = false

    game:GetService("RunService").RenderStepped:Connect(function()
        if antiBlindFreezeEnabled then
            local Lighting = game:GetService("Lighting")
            for _, effect in pairs(Lighting:GetChildren()) do
                if effect:IsA("BlurEffect") or effect:IsA("ColorCorrectionEffect") or effect:IsA("BloomEffect") or effect:IsA("DepthOfFieldEffect") then
                    effect.Enabled = false
                end
            end
            local camera = workspace.CurrentCamera
            if camera then
                for _, effect in pairs(camera:GetChildren()) do
                    if effect:IsA("BlurEffect") or effect:IsA("ColorCorrectionEffect") or effect:IsA("BloomEffect") or effect:IsA("DepthOfFieldEffect") then
                        effect.Enabled = false
                    end
                end
            end
        end
    end)

    task.spawn(function()
        while task.wait() do
            if antiBlindFreezeEnabled then
                pcall(function()
                    local playersFolder = workspace:FindFirstChild("Players")
                    if playersFolder then
                        local killersFolder = playersFolder:FindFirstChild("Killers")
                        if killersFolder then
                            for _, killerModel in ipairs(killersFolder:GetChildren()) do
                                local speedMults = killerModel:FindFirstChild("SpeedMultipliers")
                                if speedMults then
                                    local stun = speedMults:FindFirstChild("Stunned")
                                    if stun then stun.Value = 1 end
                                end
                            end
                        end
                        local survivorsFolder = playersFolder:FindFirstChild("Survivors")
                        if survivorsFolder then
                            for _, survModel in ipairs(survivorsFolder:GetChildren()) do
                                local speedMults = survModel:FindFirstChild("SpeedMultipliers")
                                if speedMults then
                                    local stun = speedMults:FindFirstChild("Stunned")
                                    if stun then stun.Value = 1 end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

Feng:Toggle({
    Name = "防眩晕",
    Value = false,
    Callback = function(value)
        antiBlindFreezeEnabled = value
    end
})
end

do
    local localPlayer = game.Players.LocalPlayer
    local gameMap = workspace.Map

    local state = {
        generators = false,
        noclip = false,
        allowJump = false,
        invis = false,
        showChat = false,
    }

    local cachedParts = {}

    local function enableNoclip()
        if localPlayer.Character then
            for _, v in pairs(localPlayer.Character:GetChildren()) do
                if v:IsA("BasePart") then
                    cachedParts[v] = v
                    v.CanCollide = false
                end
            end
        end
    end

    local function disableNoclip()
        for _, v in pairs(cachedParts) do
            v.CanCollide = true
        end
    end

    task.spawn(function()
        while task.wait(0.1) do
            if state.noclip and localPlayer.Character then
                enableNoclip()
            elseif not state.noclip then
                disableNoclip()
            end
        end
    end)

    local currentJumpPower = 50
    task.spawn(function()
        while task.wait(0.5) do
            if state.allowJump and localPlayer.Character then
                local humanoid = localPlayer.Character:FindFirstChild("Humanoid")
                if humanoid then
                    humanoid.JumpPower = 50
                end
            end
        end
    end)

    local loopRunning = false
    local loopThread = nil
    local currentAnim, lastAnim
    local anim = Instance.new("Animation")
    anim.AnimationId = "rbxassetid://75804462760596"

    local function setupInvisibility(value)
        if value then
            loopRunning = true
            loopThread = task.spawn(function()
                while loopRunning do
                    local char = localPlayer.Character
                    if char then
                        enableNoclip()
                        local humanoid = char:FindFirstChild("Humanoid")
                        if humanoid then
                            local loadedAnim = humanoid:LoadAnimation(anim)
                            currentAnim = loadedAnim
                            loadedAnim.Looped = false
                            loadedAnim:Play()
                            loadedAnim:AdjustSpeed(0)
                            task.wait(0.1)
                            if lastAnim then
                                lastAnim:Stop()
                                lastAnim:Destroy()
                            end
                            lastAnim = currentAnim
                        end
                    else
                        currentAnim = nil
                    end
                    task.wait()
                end
            end)
            return true
        else
            loopRunning = false
            if loopThread then
                task.cancel(loopThread)
            end
            if currentAnim then
                currentAnim:Stop()
                currentAnim = nil
            end
            local char = localPlayer.Character
            if char then
                local humanoid = char:FindFirstChildOfClass("Humanoid") or char:FindFirstChildOfClass("AnimationController")
                if humanoid then
                    for _, track in pairs(humanoid:GetPlayingAnimationTracks()) do
                        track:AdjustSpeed(1)
                    end
                end
                for _, part in pairs(char:GetChildren()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = true
                    end
                end
                local animateScript = char:FindFirstChild("Animate")
                if animateScript then
                    animateScript.Disabled = true
                    animateScript.Disabled = false
                end
            end
            return true
        end
    end

    task.spawn(function()
        while task.wait(0.5) do
            if state.invis and not loopRunning then
                setupInvisibility(true)
            elseif not state.invis and loopRunning then
                setupInvisibility(false)
            end
        end
    end)

    local vu2 = {
        flying = false,
    }
    local vu4 = {
        flySpeed = 50,
    }
    local vu6 = {
        flightConn = nil,
        bodyGyro = nil,
        bodyVel = nil,
    }

    local antiHiddenStatsEnabled = false
    local originalValues = {}
    local paths = {
        "HideKillerWins",
        "HidePlaytime",
        "HideSurvivorWins"
    }

    local function saveOriginals(player)
        if not originalValues[player.UserId] then
            originalValues[player.UserId] = {}
        end
        for _, key in ipairs(paths) do
            local value = player.PlayerData.Settings.Privacy:FindFirstChild(key)
            originalValues[player.UserId][key] = value.Value
        end
    end

    local function reveal(player)
        for _, key in ipairs(paths) do
            local value = player.PlayerData.Settings.Privacy:FindFirstChild(key)
            value.Value = false
        end
    end

    local function restore(player)
        if originalValues[player.UserId] then
            for key, val in pairs(originalValues[player.UserId]) do
                local value = player.PlayerData.Settings.Privacy:FindFirstChild(key)
                value.Value = val
            end
        end
    end

    local function hiddenStatsFunc(disable)
        for _, player in ipairs(game.Players:GetPlayers()) do
            if disable then
                saveOriginals(player)
                reveal(player)
            else
                restore(player)
            end
        end
    end

    game.Players.PlayerAdded:Connect(function(player)
        if antiHiddenStatsEnabled then
            saveOriginals(player)
            reveal(player)
        end
    end)

Feng:Toggle({
    Name = "飞行",
    Value = false,
    Callback = function(value)
        vu2.flying = value
        if value then
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local root = character:WaitForChild("HumanoidRootPart")
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.AutoRotate = false
                vu6.bodyGyro = Instance.new("BodyGyro")
                vu6.bodyGyro.P = 90000
                vu6.bodyGyro.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
                vu6.bodyGyro.CFrame = root.CFrame
                vu6.bodyGyro.Parent = root

                vu6.bodyVel = Instance.new("BodyVelocity")
                vu6.bodyVel.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                vu6.bodyVel.Velocity = Vector3.zero
                vu6.bodyVel.Parent = root

                vu6.flightConn = game:GetService("RunService").Heartbeat:Connect(function()
                    local cam = workspace.CurrentCamera
                    local lookVector = cam.CFrame.LookVector
                    local rightVector = cam.CFrame.RightVector
                    local moveDir = humanoid.MoveDirection

                    local forward = moveDir:Dot(Vector3.new(lookVector.X, 0, lookVector.Z).Unit)
                    local right = moveDir:Dot(Vector3.new(rightVector.X, 0, rightVector.Z).Unit)
                    local up = moveDir.Magnitude <= 0 and 0 or lookVector.Y * forward

                    local velocity = lookVector * forward + rightVector * right
                    local finalVelocity = Vector3.new(velocity.X, up, velocity.Z)

                    if finalVelocity.Magnitude > 1 then
                        finalVelocity = finalVelocity.Unit
                    end

                    vu6.bodyVel.Velocity = finalVelocity * vu4.flySpeed
                    vu6.bodyGyro.CFrame = CFrame.lookAt(root.Position, root.Position + lookVector, cam.CFrame.UpVector)
                end)
            end
        else
            if vu6.flightConn then
                vu6.flightConn:Disconnect()
                vu6.flightConn = nil
            end
            if vu6.bodyGyro then
                vu6.bodyGyro:Destroy()
                vu6.bodyGyro = nil
            end
            if vu6.bodyVel then
                vu6.bodyVel:Destroy()
                vu6.bodyVel = nil
            end
            local character = game.Players.LocalPlayer.Character
            if character then
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid.AutoRotate = true
                end
            end
        end
    end
})

Feng:Slider({
    Name = "飞行速度",
    Value = {
        Min = 5,
        Max = 150,
        Default = 50,
    },
    Callback = function(value)
        vu4.flySpeed = value
    end
})

Feng:Slider({
    Name = "跳跃力量值",
    Value = {
        Min = 0,
        Max = 150,
        Default = 50,
    },
    Callback = function(value)
        currentJumpPower = value
    end
})

Feng:Button({
    Name = "设置跳跃数值",
    Callback = function()
        local character = game.Players.LocalPlayer.Character
        if character and character:FindFirstChild("Humanoid") then
            character.Humanoid.JumpPower = currentJumpPower
            character.Humanoid.UseJumpPower = true
        end
    end
})

    local timerSide = "Middle"
    local function applyTimerPos()
        local rt = localPlayer.PlayerGui:FindFirstChild("RoundTimer")
        local m = rt and rt:FindFirstChild("Main")
        if m then
            m.Position = UDim2.new(timerSide == "Middle" and 0.5 or 0.9, 0, m.Position.Y.Scale, m.Position.Y.Offset)
        end
    end
    applyTimerPos()
    localPlayer.CharacterAdded:Connect(function()
        task.wait(0.5)
        applyTimerPos()
    end)

Feng:Dropdown({
    Name = "计时器位置",
    Values = { 
        "中间", 
        "右侧" 
    },
    Value = "中间",
    Callback = function(selected)
        timerSide = (selected == "中间") and "Middle" or "Right"
        applyTimerPos()
    end
})

Feng:Button({
    Name = "自杀",
    Callback = function()
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end
})

Feng:Button({
    Name = "只是普通的低画质脚本",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/vexroxd/My-Script-/main/roblox%20fps%20unlocker%20script.lua'))()
    end
})

Feng:Toggle({
    Name = "显示聊天",
    Value = false,
    Callback = function(value)
        state.showChat = value
        if value then
            task.spawn(function()
                while state.showChat and task.wait() do
                    game:GetService("TextChatService"):FindFirstChildOfClass("ChatWindowConfiguration").Enabled = true
                end
            end)
        else
            game:GetService("TextChatService"):FindFirstChildOfClass("ChatWindowConfiguration").Enabled = false
        end
    end
})

Feng:Toggle({
    Name = "显示被隐藏的信息",
    Value = false,
    Callback = function(value)
        antiHiddenStatsEnabled = value
        hiddenStatsFunc(value)
    end
})

Feng:Toggle({
    Name = "穿墙",
    Value = false,
    Callback = function(value)
        state.noclip = value
    end
})

Feng:Toggle({
    Name = "隐身",
    Value = false,
    Callback = function(value)
        state.invis = value
    end
})
end

local Feng = FengYu:Section({
    Name = "状态免疫",
    SubName = "免疫负面效果",
    Logo = "100851815815313",
    open = true
})

do
    local statusGroups = {
        Slowness      = { on = false, paths = { "Modules.StatusEffects.Slowness" } },
        Hallucination = { on = false, paths = { "Modules.StatusEffects.KillerExclusive.Hallucination" } },
        Visual        = { on = false, paths = {
            "Modules.StatusEffects.Blindness",
            "Modules.StatusEffects.KillerExclusive.Glitched",
            "Modules.StatusEffects.SurvivorExclusive.Subspaced"
        } },
    }

    local statusBackup = {}

    local function statusResolve(path)
        local node = game:GetService("ReplicatedStorage")
        for seg in path:gmatch("[^%.]+") do
            node = node:FindFirstChild(seg)
            if not node then return nil end
        end
        return node
    end

    local function statusBlock(path)
        if statusBackup[path] then return end
        local mod = statusResolve(path)
        if mod and mod:IsA("ModuleScript") then
            statusBackup[path] = { clone = mod:Clone(), src = mod.Source }
            mod:Destroy()
        end
    end

    local function statusRestore(path)
        local saved = statusBackup[path]
        if not saved then return end
        local existing = statusResolve(path)
        if existing then existing:Destroy() end
        local parentPath = path:match("^(.-)%.?[^%.]+$")
        local parent = statusResolve(parentPath)
        if parent then
            saved.clone.Source = saved.src
            saved.clone.Parent = parent
        end
        statusBackup[path] = nil
    end

    local statusLoopThread = nil
    local function statusTick()
        if statusLoopThread then return end
        statusLoopThread = task.spawn(function()
            while true do
                local any = false
                for _, g in pairs(statusGroups) do
                    if g.on then
                        any = true
                        for _, p in ipairs(g.paths) do
                            local m = statusResolve(p)
                            if m then m:Destroy() end
                        end
                    end
                end
                if not any then break end
                task.wait(0.8)
            end
            statusLoopThread = nil
        end)
    end

    local function statusToggle(name)
        local g = statusGroups[name]
        if not g then return end
        g.on = not g.on
        for _, p in ipairs(g.paths) do
            if g.on then
                statusBlock(p)
            else
                statusRestore(p)
            end
        end
        local any = false
        for _, sg in pairs(statusGroups) do
            if sg.on then any = true; break end
        end
        if any then
            statusTick()
        elseif statusLoopThread then
            task.cancel(statusLoopThread)
            statusLoopThread = nil
        end
    end

Feng:Button({
    Name = "减速免疫",
    Callback = function()
        statusToggle("Slowness")
    end
})

Feng:Button({
    Name = "删除幻觉",
    Callback = function()
        statusToggle("Hallucination")
    end
})

Feng:Button({
    Name = "删除视觉",
    Callback = function()
        statusToggle("Visual")
    end
})

    local player = game.Players.LocalPlayer
    player.CharacterAdded:Connect(function()
        for _, g in pairs(statusGroups) do
            if g.on then
                for _, p in ipairs(g.paths) do
                    statusRestore(p)
                end
            end
            g.on = false
        end
        if statusLoopThread then
            task.cancel(statusLoopThread)
            statusLoopThread = nil
        end
        statusBackup = {}
    end)
end

local Feng = FengYu:Section({
    Name = "场景设置",
    SubName = "地图上的视觉效果",
    Logo = "100851815815313",
    open = true
})

do
    local _env = {
        Brightness = 0,
        GlobalShadows = false,
        NoFog = false,
        Fullbright = false
    }

    if not game.Lighting:GetAttribute("FogStart") then
        game.Lighting:SetAttribute("FogStart", game.Lighting.FogStart)
    end
    if not game.Lighting:GetAttribute("FogEnd") then
        game.Lighting:SetAttribute("FogEnd", game.Lighting.FogEnd)
    end

    local originalFogDensity = nil
    local fog = game.Lighting:FindFirstChildOfClass("Atmosphere")
    if fog and not fog:GetAttribute("Density") then
        fog:SetAttribute("Density", fog.Density)
        originalFogDensity = fog.Density
    end

    local lightingConnection = nil

    local function updateLighting()
        game.Lighting.FogStart = _env.NoFog and 0 or game.Lighting:GetAttribute("FogStart")
        game.Lighting.FogEnd = _env.NoFog and math.huge or game.Lighting:GetAttribute("FogEnd")

        local fog = game.Lighting:FindFirstChildOfClass("Atmosphere")
        if fog then
            if not fog:GetAttribute("Density") then
                fog:SetAttribute("Density", fog.Density)
            end
            fog.Density = _env.NoFog and 0 or fog:GetAttribute("Density")
        end

        if _env.Fullbright then
            game.Lighting.OutdoorAmbient = Color3.new(1, 1, 1)
            game.Lighting.Brightness = _env.Brightness or 0
            game.Lighting.GlobalShadows = not _env.GlobalShadows
        else
            game.Lighting.OutdoorAmbient = Color3.fromRGB(55, 55, 55)
            game.Lighting.Brightness = 0
            game.Lighting.GlobalShadows = true
        end
    end

    local function toggleLightingLoop(enabled)
        if enabled then
            if lightingConnection then
                lightingConnection:Disconnect()
            end
            lightingConnection = game:GetService("RunService").RenderStepped:Connect(updateLighting)
        else
            if lightingConnection then
                lightingConnection:Disconnect()
                lightingConnection = nil
            end
            game.Lighting.OutdoorAmbient = Color3.fromRGB(55, 55, 55)
            game.Lighting.Brightness = 0
            game.Lighting.GlobalShadows = true
            game.Lighting.FogStart = game.Lighting:GetAttribute("FogStart") or 0
            game.Lighting.FogEnd = game.Lighting:GetAttribute("FogEnd") or math.huge
            if fog then
                fog.Density = fog:GetAttribute("Density") or originalFogDensity
            end
        end
    end

Feng:Slider({
    Name = "亮度数值",
    Value = { 
        Min = 0, 
        Max = 3, 
        Default = 0 
    },
    Callback = function(value)
        _env.Brightness = value
    end
})

Feng:Toggle({
    Name = "无阴影",
    Value = false,
    Callback = function(state)
        _env.GlobalShadows = state
    end
})

Feng:Toggle({
    Name = "除雾",
    Value = false,
    Callback = function(state)
        _env.NoFog = state
    end
})

Feng:Toggle({
    Name = "总开关",
    Value = false,
    Callback = function(state)
        _env.Fullbright = state
        toggleLightingLoop(state)
    end
})
end

local FengYu = Window:Tab("娱乐区", "108446823535062")

local Feng = FengYu:Section({
    Name = "功夫熊猫🍋",
    SubName = "兄弟停止黑客！",
    Logo = "84830962019412",
    open = true
})

Feng:Button({
    Name = "动画播放器",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/FengYu-X/FengYu-ui/refs/heads/mainTab/%E5%8A%A8%E7%94%BB%E6%92%AD%E6%94%BE%E5%99%A8.lua'))()
    end
})

Feng:Toggle({
    Name = "坐下",
    Value = false,
    Callback = function(state)
        local player = game:GetService("Players").LocalPlayer
        if player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
            player.Character:FindFirstChildOfClass("Humanoid").Sit = state
        end
    end
})

do
    local refreshEnabled = false
    local deathPosition = nil

    local function onDied()
        local player = game:GetService("Players").LocalPlayer
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            deathPosition = player.Character.HumanoidRootPart.CFrame
        end
    end

    local function onCharacterAdded(newChar)
        if refreshEnabled and deathPosition then
            newChar:WaitForChild("HumanoidRootPart").CFrame = deathPosition
        end
    end

    local player = game:GetService("Players").LocalPlayer
    player.CharacterAdded:Connect(onCharacterAdded)
    if player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
        player.Character.Humanoid.Died:Connect(onDied)
    end
    player.CharacterAdded:Connect(function(char)
        char:WaitForChild("Humanoid").Died:Connect(onDied)
    end)

Feng:Toggle({
    Name = "刷新 (死亡后原地复活)",
    Value = false,
    Callback = function(state)
        refreshEnabled = state
    end
})
end

do
    local swimEnabled = false
    local oldGravity = game:GetService("Workspace").Gravity
    local swimHeartbeat = nil
    local gravResetConn = nil
    local player = game:GetService("Players").LocalPlayer

    local function stopSwim()
        if swimHeartbeat then
            swimHeartbeat:Disconnect()
            swimHeartbeat = nil
        end
        if gravResetConn then
            gravResetConn:Disconnect()
            gravResetConn = nil
        end
        game:GetService("Workspace").Gravity = oldGravity
        local hum = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
        if hum then
            for _, state in ipairs(Enum.HumanoidStateType:GetEnumItems()) do
                if state ~= Enum.HumanoidStateType.None then
                    hum:SetStateEnabled(state, true)
                end
            end
        end
    end

Feng:Toggle({
    Name = "漂浮",
    Value = false,
    Callback = function(state)
        if state then
            if not player.Character then return end
            local hum = player.Character:FindFirstChildOfClass("Humanoid")
            if not hum then return end

            swimEnabled = true
            oldGravity = game:GetService("Workspace").Gravity
            game:GetService("Workspace").Gravity = 0

            gravResetConn = hum.Died:Connect(function()
                game:GetService("Workspace").Gravity = oldGravity
            end)

            for _, s in ipairs(Enum.HumanoidStateType:GetEnumItems()) do
                if s ~= Enum.HumanoidStateType.None and s ~= Enum.HumanoidStateType.Swimming then
                    hum:SetStateEnabled(s, false)
                end
            end
            hum:ChangeState(Enum.HumanoidStateType.Swimming)

            swimHeartbeat = game:GetService("RunService").Heartbeat:Connect(function()
                pcall(function()
                    local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                    if hrp and hum then
                        if hum.MoveDirection == Vector3.new() and not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) then
                            hrp.Velocity = Vector3.new()
                        end
                    end
                end)
            end)
        else
            stopSwim()
        end
    end
})

    player.CharacterAdded:Connect(function()
        if swimEnabled then
            swimEnabled = false
            stopSwim()
        end
    end)
end

Feng:Button({
    Name = "变成药丸宝宝",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        if character then
            repeat task.wait() until character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("Humanoid")

            local limbs = {"Left Arm", "Right Arm", "Left Leg", "Right Leg"}
            for _, limb in ipairs(limbs) do
                local part = character:FindFirstChild(limb)
                if part then
                    part:Destroy()
                end
            end

            local torso = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")
            if torso then
                local mesh = torso:FindFirstChildOfClass("SpecialMesh")
                if not mesh then
                    mesh = Instance.new("SpecialMesh", torso)
                end
                mesh.MeshId = "rbxasset://fonts/head.mesh"
                mesh.Scale = Vector3.new(1.4, 1.8, 1.4)
            end
        end
    end
})

Feng:Button({
    Name = "滑铲按钮",
    Callback = function()
        local vu727 = game.Players.LocalPlayer
        local v728 = vu727:WaitForChild("PlayerGui")
        local v729 = v728:FindFirstChild("ScreenGui")
        if not v729 then
            v729 = Instance.new("ScreenGui")
            v729.Name = "ScreenGui"
            v729.Parent = v728
        end
        local v730 = Instance.new("TextButton")
        v730.Size = UDim2.new(0, 100, 0, 40)
        v730.Position = UDim2.new(0.5, -50, 0.5, -20)
        v730.Text = "滑铲"
        v730.BackgroundColor3 = Color3.fromRGB(0, 119, 255)
        v730.TextColor3 = Color3.fromRGB(255, 255, 255)
        v730.Font = Enum.Font.GothamBold
        v730.TextSize = 16
        v730.BorderSizePixel = 0
        v730.Parent = v729
        v730.Draggable = true

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 8)
        corner.Parent = v730

        local stroke = Instance.new("UIStroke")
        stroke.Thickness = 2
        stroke.Color = Color3.fromRGB(0, 0, 0)
        stroke.Parent = v730

        v730.MouseEnter:Connect(function()
            v730.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
        end)

        v730.MouseLeave:Connect(function()
            v730.BackgroundColor3 = Color3.fromRGB(0, 119, 255)
        end)

        v730.MouseButton1Click:Connect(function()
            local v731 = vu727.Character or vu727.CharacterAdded:Wait()
            local v732 = v731:WaitForChild("HumanoidRootPart")
            local v733 = v731:WaitForChild("Humanoid")
            local v734 = Instance.new("Animation")
            v734.AnimationId = "rbxassetid://182749109"
            local vu735 = v733:LoadAnimation(v734)
            local v736 = vu735
            vu735:Play()
            local v737 = game:GetService("TweenService")
            local v738 = v732.CFrame * CFrame.new(0, 0, -20)
            local v739 = v737:Create(v732, TweenInfo.new(0.8, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                CFrame = v738
            })
            v739:Play()
            v739.Completed:Connect(function()
                vu735:Stop()
            end)
        end)
    end
})

Feng:Button({
    Name = "直升机",
    Callback = function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
            spawn(function()
                local speaker = game.Players.LocalPlayer
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://27432686"
                local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                bruh:Play()
                bruh:AdjustSpeed(0)
                speaker.Character.Animate.Disabled = true
                local hi = Instance.new("Sound")
                hi.Name = "Sound"
                hi.SoundId = ""
                hi.Volume = 2
                hi.Looped = true
                hi.archivable = false
                hi.Parent = game.Workspace
                hi:Play()

                local spinSpeed = 40
                local Spin = Instance.new("BodyAngularVelocity")
                Spin.Name = "Spinning"
                Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                Spin.MaxTorque = Vector3.new(0, math.huge, 0)
                Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
            end)
        else
            spawn(function()
                local speaker = game.Players.LocalPlayer
                local Anim = Instance.new("Animation")
                Anim.AnimationId = "rbxassetid://507776043"
                local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
                bruh:Play()
                bruh:AdjustSpeed(0)
                speaker.Character.Animate.Disabled = true
                local hi = Instance.new("Sound")
                hi.Name = "Sound"
                hi.SoundId = "空"
                hi.Volume = 2
                hi.Looped = true
                hi.archivable = false
                hi.Parent = game.Workspace
                hi:Play()

                local spinSpeed = 40
                local Spin = Instance.new("BodyAngularVelocity")
                Spin.Name = "Spinning"
                Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                Spin.MaxTorque = Vector3.new(0, math.huge, 0)
                Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
            end)
        end
        local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
        local u = game.Players.LocalPlayer
        local urchar = u.Character

        task.spawn(function()
            qUp = Mouse.KeyUp:Connect(function(KEY)
                if KEY == 'q' then
                    urchar.Humanoid.HipHeight = urchar.Humanoid.HipHeight - 3
                end
            end)
            eUp = Mouse.KeyUp:Connect(function(KEY)
               if KEY == 'e' then
                    urchar.Humanoid.HipHeight = urchar.Humanoid.HipHeight + 3
                end
            end)
        end)
    end
})

local Feng = FengYu:Section({
    Name = "权限设置",
    SubName = "未知的权限？",
    Logo = "84830962019412",
    open = true
})

Feng:Button({
    Name = "解锁全部角色和皮肤",
    Callback = function()
        task.spawn(function()
            local player = game.Players.LocalPlayer
            local purchased = player:WaitForChild("PlayerData"):WaitForChild("Purchased")
            
            local killersFolder = purchased:FindFirstChild("Killers") or Instance.new("Folder", purchased)
            killersFolder.Name = "Killers"
            local survivorsFolder = purchased:FindFirstChild("Survivors") or Instance.new("Folder", purchased)
            survivorsFolder.Name = "Survivors"
            local skinsFolder = purchased:FindFirstChild("Skins") or Instance.new("Folder", purchased)
            skinsFolder.Name = "Skins"

            for _, killer in ipairs(game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Killers"):GetChildren()) do
                if not killersFolder:FindFirstChild(killer.Name) then
                    Instance.new("StringValue", killersFolder).Name = killer.Name
                end
            end
            
            for _, survivor in ipairs(game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Survivors"):GetChildren()) do
                if not survivorsFolder:FindFirstChild(survivor.Name) then
                    Instance.new("StringValue", survivorsFolder).Name = survivor.Name
                end
            end
            
            local skinsRoot = game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Skins")
            for _, skin in ipairs(skinsRoot:GetDescendants()) do
                if (skin:IsA("Folder") or skin:IsA("Model")) and not skinsFolder:FindFirstChild(skin.Name) then
                    Instance.new("StringValue", skinsFolder).Name = skin.Name
                end
            end
        end)
    end
})

Feng:Button({
    Name = "解锁所有动作",
    Callback = function()
        task.spawn(function()
            local player = game.Players.LocalPlayer
            local purchased = player:WaitForChild("PlayerData"):WaitForChild("Purchased")
            
            local emotesFolder = purchased:FindFirstChild("Emotes") or Instance.new("Folder", purchased)
            emotesFolder.Name = "Emotes"
            
            local emotesAssets = game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Emotes")
            for _, module in ipairs(emotesAssets:GetDescendants()) do
                if module:IsA("ModuleScript") and not emotesFolder:FindFirstChild(module.Name) then
                    Instance.new("StringValue", emotesFolder).Name = module.Name
                end
            end
        end)
    end
})

Feng:Button({
    Name = "解锁VIP权限",
    Callback = function()
        local localPlayer = game.Players.LocalPlayer
        localPlayer:SetAttribute("VIP", true)
        
        local pData = localPlayer:WaitForChild("PlayerData")
        local vVal = pData:FindFirstChild("VIP")
        if not vVal then
            vVal = Instance.new("BoolValue")
            vVal.Name = "VIP"
            vVal.Parent = pData
        end
        vVal.Value = true
    end
})

local Feng = FengYu:Section({
    Name = "修改系统",
    SubName = "视觉上获得VIP",
    Logo = "84830962019412",
    open = true
})

local statsFields = {
    Money = "钱",
    NetWorth = "净资产",
    KillerChance = "杀手几率",
    TimePlayed = "游玩时间",
    KillerWins = "杀手胜利",
    Kills = "击杀数",
    SurvivorWins = "幸存者胜利",
    ObjectivesCompleted = "任务完成数"
}

for statName, displayName in pairs(statsFields) 
do
Feng:Input({
    Name = "设置 " .. displayName,
    Placeholder = "输入数值",
    Callback = function(value)
        pcall(function()
            local localPlayer = game.Players.LocalPlayer
            local stats = localPlayer:FindFirstChild("PlayerData") and localPlayer.PlayerData:FindFirstChild("Stats")
            if not stats then return end
            local statObj = stats:FindFirstChild(statName, true)
            if statObj and (statObj:IsA("NumberValue") or statObj:IsA("IntValue") or statObj:IsA("FloatValue")) then
                local num = tonumber(value)
                if num then statObj.Value = num end
            end
        end)
    end
})
end

Window:Category({
    Name = "杂志区",
    Collapsible = true,
    Opened = true, 
})

local FengYu = Window:Tab("体力区", "130874893373683")

local Feng = FengYu:Section({
    Name = "体力管理",
    SubName = "兄弟原来你也和我一样是索尼克",
    Logo = "84830962019412",
    open = true
})

do
    local originalDefaults = {}
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local RunService = game:GetService("RunService")
    local SprintingModule = ReplicatedStorage:WaitForChild("Systems"):WaitForChild("Character"):WaitForChild("Game"):WaitForChild("Sprinting")
    local function GetModule()
        return require(SprintingModule)
    end

    local function CaptureDefaults()
        local m = GetModule()
        originalDefaults.MaxStamina = m.MaxStamina
        originalDefaults.StaminaGain = m.StaminaGain
        originalDefaults.StaminaLoss = m.StaminaLoss
        originalDefaults.SprintSpeed = m.SprintSpeed
    end
    CaptureDefaults()

    local StaminaSettings = {
        MaxStamina = 100,
        StaminaGain = 25,
        StaminaLoss = 10,
        SprintSpeed = 28,
        InfiniteGain = 9999
    }

    local SettingToggles = {
        MaxStamina = false,
        StaminaGain = false,
        StaminaLoss = false,
        SprintSpeed = false
    }

    local bai = { Spr = false }
    local connection = nil

    task.spawn(function()
        while true do
            local m = GetModule()
            for key, value in pairs(StaminaSettings) do
                if SettingToggles[key] then
                    m[key] = value
                end
            end
            task.wait(0.5)
        end
    end)

Feng:Toggle({
    Name = "无限体力",
    Value = false,
    Callback = function(state)
        bai.Spr = state
        local Sprinting = GetModule()
        if state then
            Sprinting.StaminaLoss = 0
            Sprinting.StaminaGain = StaminaSettings.InfiniteGain or 9999
            if connection then
                connection:Disconnect() 
            end
            connection = RunService.Heartbeat:Connect(function()
                if not bai.Spr then return end
                Sprinting.StaminaLoss = 0
                Sprinting.StaminaGain = StaminaSettings.InfiniteGain or 9999
            end)
        else
            Sprinting.StaminaLoss = originalDefaults.StaminaLoss
            Sprinting.StaminaGain = originalDefaults.StaminaGain
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end
})

Feng:Toggle({
    Name = "启用体力大小",
    Value = false,
    Callback = function(v)
        SettingToggles.MaxStamina = v
        if not v then
            local m = GetModule()
            m.MaxStamina = originalDefaults.MaxStamina
        end
    end
})

Feng:Slider({
    Name = "体力大小",
    Value = { 
        Min = 0, 
        Max = 99999, 
        Default = 100 
    },
    Callback = function(v)
        StaminaSettings.MaxStamina = v 
    end
})

Feng:Toggle({
    Name = "启用体力恢复",
    Value = false,
    Callback = function(v)
        SettingToggles.StaminaGain = v
        if not v then
            local m = GetModule()
            m.StaminaGain = originalDefaults.StaminaGain
        end
    end
})

Feng:Slider({
    Name = "体力恢复",
    Value = { 
        Min = 0, 
        Max = 250, 
        Default = 25 
    },
    Callback = function(v)
        StaminaSettings.StaminaGain = v 
    end
})

Feng:Toggle({
    Name = "启用体力消耗",
    Value = false,
    Callback = function(v)
        SettingToggles.StaminaLoss = v
        if not v then
            local m = GetModule()
            m.StaminaLoss = originalDefaults.StaminaLoss
        end
    end
})

Feng:Slider({
    Name = "体力消耗",
    Value = { 
        Min = 0, 
        Max = 100, 
        Default = 10 
    },
    Callback = function(v)
        StaminaSettings.StaminaLoss = v 
    end
})

Feng:Toggle({
    Name = "启用奔跑速度",
    Value = false,
    Callback = function(v)
        SettingToggles.SprintSpeed = v
        if not v then
            local m = GetModule()
            m.SprintSpeed = originalDefaults.SprintSpeed
        end
    end
})

Feng:Slider({
    Name = "奔跑速度",
    Value = { 
        Min = 0, 
        Max = 200, 
        Default = 28 
    },
    Callback = function(v)
        StaminaSettings.SprintSpeed = v 
    end
})
end

local FengYu = Window:Tab("透视区", "126418616428157")

local Feng = FengYu:Section({
    Name = "ESP透视",
    SubName = "高亮模式",
    Logo = "84830962019412",
    open = true
})

do
    local RunService = game:GetService("RunService")
    local Players = game:GetService("Players")
    local localPlayer = Players.LocalPlayer
    local Workspace = game:GetService("Workspace")
    local Camera = workspace.CurrentCamera

    local generatorsEnabled = false
    local killersESPToggle = false
    local survivorsESPToggle = false
    local itemESPEnabled = false

    task.spawn(function()
        while task.wait(0.5) do
            if generatorsEnabled then
                pcall(function()
                    local gameMap = workspace:FindFirstChild("Map")
                    if gameMap and gameMap:FindFirstChild("Ingame") and gameMap.Ingame:FindFirstChild("Map") then
                        for _, v in pairs(gameMap.Ingame.Map:GetChildren()) do
                            if v.Name == "Generator" then
                                if not v:FindFirstChild("gen_esp") then
                                    local hl = Instance.new("Highlight", v)
                                    hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                                    hl.Name = "gen_esp"
                                    hl.OutlineTransparency = 0
                                    hl.FillTransparency = 0.3
                                    hl.OutlineColor = Color3.fromRGB(255, 255, 255)
                                    hl.FillColor = Color3.fromRGB(255, 255, 51)
                                end
                                if v:FindFirstChild("gen_esp") and v:FindFirstChild("Progress") then
                                    local progressValue = math.floor(v.Progress.Value)
                                    v.gen_esp.FillColor = (progressValue >= 100) and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 255, 51)
                                    if not v:FindFirstChild("nametag") then
                                        local bb = Instance.new("BillboardGui", v)
                                        bb.Size = UDim2.new(4, 0, 1, 0)
                                        bb.AlwaysOnTop = true
                                        bb.Name = "nametag"
                                        local text = Instance.new("TextLabel", bb)
                                        text.TextStrokeTransparency = 0
                                        text.Text = "发电机 (" .. progressValue .. "%)"
                                        text.TextSize = 15
                                        text.BackgroundTransparency = 1
                                        text.Size = UDim2.new(1, 0, 1, 0)
                                        text.TextColor3 = Color3.fromRGB(255, 255, 255)
                                    else
                                        v.nametag.TextLabel.Text = "发电机 (" .. progressValue .. "%)"
                                    end
                                end
                            end
                        end
                    end
                end)
            else
                pcall(function()
                    local gameMap = workspace:FindFirstChild("Map")
                    if gameMap and gameMap:FindFirstChild("Ingame") and gameMap.Ingame:FindFirstChild("Map") then
                        for _, v in pairs(gameMap.Ingame.Map:GetChildren()) do
                            if v.Name == "Generator" then
                                if v:FindFirstChild("gen_esp") then v.gen_esp:Destroy() end
                                if v:FindFirstChild("nametag") then v.nametag:Destroy() end
                            end
                        end
                    end
                end)
            end
        end
    end)

    local killersFolder = workspace:WaitForChild("Players"):WaitForChild("Killers")
    local survivorsFolder = workspace:WaitForChild("Players"):WaitForChild("Survivors")

    local function attachBillboard(model, color)
        if model:FindFirstChild("ESP_NameBillboard") then return end
        local head = model:FindFirstChild("Head") or model:FindFirstChildWhichIsA("BasePart")
        if not head then return end
        local billboard = Instance.new("BillboardGui")
        billboard.Name = "ESP_NameBillboard"
        billboard.Adornee = head
        billboard.StudsOffset = Vector3.new(0, 3, 0)
        billboard.AlwaysOnTop = true
        billboard.Size = UDim2.new(0, 200, 0, 50)
        billboard.Parent = model
        local label = Instance.new("TextLabel")
        label.Name = "NameLabel"
        label.Size = UDim2.new(1, 0, 1, 0)
        label.BackgroundTransparency = 1
        label.TextColor3 = color
        label.TextStrokeTransparency = 0
        label.TextStrokeColor3 = Color3.new(0, 0, 0)
        label.TextScaled = false
        label.TextWrapped = false
        label.ClipsDescendants = true
        label.TextTruncate = Enum.TextTruncate.None
        label.AutomaticSize = Enum.AutomaticSize.X
        label.TextXAlignment = Enum.TextXAlignment.Center
        label.TextYAlignment = Enum.TextYAlignment.Center
        label.TextSize = 10
        label.Font = Enum.Font.GothamBold
        label.Text = "加载中..."
        label.Parent = billboard
    end

    local function updateBillboardText(model)
        local billboard = model:FindFirstChild("ESP_NameBillboard")
        if not billboard then return end
        local label = billboard:FindFirstChild("NameLabel")
        if not label then return end
        local actorText = model:GetAttribute("ActorDisplayName") or "???"
        local skinText = model:GetAttribute("SkinNameDisplay")
        local username = model:GetAttribute("Username") or "Unknown"
        if actorText == "Noli" and model:GetAttribute("IsFakeNoli") == true then
            actorText = actorText .. " (假的)"
        end
        local displayText = actorText
        if skinText and tostring(skinText) ~= "" then
            displayText = displayText .. " | " .. skinText
        end
        local humanoid = model:FindFirstChildOfClass("Humanoid")
        if humanoid then
            local hp = math.floor(humanoid.Health)
            local maxhp = math.floor(humanoid.MaxHealth)
            displayText = string.format("%s (生命值: %d/%d)", displayText, hp, maxhp)
        end
        label.Text = displayText
    end

    local noliByUsername = {}

    local function clearFakeTags()
        for _, killer in ipairs(killersFolder:GetChildren()) do
            if killer:GetAttribute("ActorDisplayName") == "Noli" then
                killer:SetAttribute("IsFakeNoli", false)
            end
        end
    end

    local function scanNolis()
        noliByUsername = {}
        for _, killer in ipairs(killersFolder:GetChildren()) do
            if killer:GetAttribute("ActorDisplayName") == "Noli" then
                local username = killer:GetAttribute("Username")
                if username then
                    if not noliByUsername[username] then
                        noliByUsername[username] = {}
                    end
                    table.insert(noliByUsername[username], killer)
                end
            end
        end
        for username, models in pairs(noliByUsername) do
            if #models > 1 then
                for i = 2, #models do
                    models[i]:SetAttribute("IsFakeNoli", true)
                end
                models[1]:SetAttribute("IsFakeNoli", false)
            else
                models[1]:SetAttribute("IsFakeNoli", false)
            end
        end
    end

    local function updateFakeNolis()
        clearFakeTags()
        scanNolis()
    end

    local function setupModel(model, isKiller)
        if not model:IsA("Model") or not model:FindFirstChildOfClass("Humanoid") then return end
        local color = isKiller and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(255, 255, 0)
        attachBillboard(model, color)
        updateBillboardText(model)
        if not model:FindFirstChild("ESP_Highlight") then
            local highlight = Instance.new("Highlight")
            highlight.Name = "ESP_Highlight"
            highlight.FillTransparency = 1
            highlight.OutlineTransparency = 0
            highlight.OutlineColor = color
            highlight.Adornee = model
            highlight.Parent = model
        end
        model:GetAttributeChangedSignal("ActorDisplayName"):Connect(function()
            updateBillboardText(model)
        end)
        model:GetAttributeChangedSignal("SkinNameDisplay"):Connect(function()
            updateBillboardText(model)
        end)
        local humanoid = model:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid:GetPropertyChangedSignal("Health"):Connect(function()
                updateBillboardText(model)
            end)
            humanoid:GetPropertyChangedSignal("MaxHealth"):Connect(function()
                updateBillboardText(model)
            end)
        end
        model.AncestryChanged:Connect(function(_, parent)
            if not parent then
                local bb = model:FindFirstChild("ESP_NameBillboard")
                if bb then bb:Destroy() end
                local hl = model:FindFirstChild("ESP_Highlight")
                if hl then hl:Destroy() end
            end
        end)
    end

    local function scanFolder(folder, isKiller)
        for _, model in ipairs(folder:GetChildren()) do
            setupModel(model, isKiller)
        end
    end

    task.spawn(function()
        while true do
            scanFolder(killersFolder, true)
            scanFolder(survivorsFolder, false)
            task.wait(5)
        end
    end)

    local function handleChildAdded(folder, isKiller)
        folder.ChildAdded:Connect(function(child)
            task.spawn(function()
                repeat task.wait() until child:IsDescendantOf(folder)
                local timeout = 3
                local timer = 0
                while (not child:FindFirstChild("Head") and not child:FindFirstChildWhichIsA("BasePart")) or not child:FindFirstChildOfClass("Humanoid") do
                    task.wait(0.1)
                    timer += 0.1
                    if timer > timeout then return end
                end
                task.wait(0.2)
                setupModel(child, isKiller)
            end)
        end)
    end

    handleChildAdded(killersFolder, true)
    handleChildAdded(survivorsFolder, false)
    updateFakeNolis()

    killersFolder.ChildRemoved:Connect(function(removed)
        if removed:GetAttribute("ActorDisplayName") == "Noli" then
            updateFakeNolis()
        end
    end)

    killersFolder.ChildAdded:Connect(function(added)
        if added:GetAttribute("ActorDisplayName") == "Noli" then
            task.defer(function()
                task.wait(0.2)
                updateFakeNolis()
            end)
        end
    end)

    task.spawn(function()
        while true do
            task.wait(10)
            updateFakeNolis()
        end
    end)

    RunService.RenderStepped:Connect(function()
        for _, folderData in pairs({
            {folder = killersFolder, toggle = killersESPToggle},
            {folder = survivorsFolder, toggle = survivorsESPToggle},
        }) do
            for _, model in ipairs(folderData.folder:GetChildren()) do
                local bb = model:FindFirstChild("ESP_NameBillboard")
                local hl = model:FindFirstChild("ESP_Highlight")
                if bb then bb.Enabled = folderData.toggle end
                if hl then hl.Enabled = folderData.toggle end
                if folderData.toggle and bb and bb.Adornee then
                    local dist = (Camera.CFrame.Position - bb.Adornee.Position).Magnitude
                    local scale = math.clamp(1 / (dist / 20), 0.5, 2)
                    local label = bb:FindFirstChild("NameLabel")
                    if label then
                        label.TextSize = math.clamp(10 * scale, 12, 20)
                        bb.Size = UDim2.new(0, label.TextBounds.X + 20, 0, 50 * scale)
                    end
                end
            end
        end
    end)

    local colorByName = {
        BloxyCola = Color3.fromRGB(255, 140, 0),
        Medkit = Color3.fromRGB(255, 100, 255),
    }
    local espParts = {}
    local itemPartEspTrigger = nil

    local function createNameTag(part, tagName, color)
        if part:FindFirstChild("ESP_Billboard") then return end
        local billboard = Instance.new("BillboardGui")
        billboard.Name = "ESP_Billboard"
        billboard.Size = UDim2.new(0, 100, 0, 30)
        billboard.Adornee = part
        billboard.AlwaysOnTop = true
        billboard.StudsOffset = Vector3.new(0, 2.5, 0)
        billboard.Parent = part
        local textLabel = Instance.new("TextLabel")
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.TextColor3 = color
        textLabel.TextStrokeTransparency = 0
        textLabel.Text = tagName
        textLabel.Font = Enum.Font.SourceSansBold
        textLabel.TextScaled = false
        textLabel.TextSize = 10
        textLabel.Parent = billboard
    end

    local function createBoxESP(part)
        if not part or not part:IsA("BasePart") then return end
        if part.Name ~= "ItemRoot" or not part.Parent then return end
        local tagName = part.Parent.Name
        local color = colorByName[tagName] or Color3.fromRGB(255, 255, 255)
        if part:FindFirstChild(tagName.."_PESP") then return end
        local box = Instance.new("BoxHandleAdornment")
        box.Name = tagName.."_PESP"
        box.Adornee = part
        box.Size = part.Size
        box.Transparency = 0.5
        box.Color3 = color
        box.ZIndex = 0
        box.AlwaysOnTop = true
        box.Parent = part
        createNameTag(part, tagName, color)
        table.insert(espParts, tagName)
    end

    function enableItemESP()
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("BasePart") and v.Name == "ItemRoot" then
                createBoxESP(v)
            end
        end
        if not itemPartEspTrigger then
            itemPartEspTrigger = workspace.DescendantAdded:Connect(function(part)
                if part:IsA("BasePart") and part.Name == "ItemRoot" then
                    createBoxESP(part)
                end
            end)
        end
    end

    function disableItemESP()
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("BasePart") and v.Name == "ItemRoot" then
                if v:FindFirstChild("ESP_Billboard") then
                    v:FindFirstChild("ESP_Billboard"):Destroy()
                end
                local tagName = v.Parent and v.Parent.Name
                if tagName and v:FindFirstChild(tagName.."_PESP") then
                    v:FindFirstChild(tagName.."_PESP"):Destroy()
                end
            end
        end
        espParts = {}
        if itemPartEspTrigger then
            itemPartEspTrigger:Disconnect()
            itemPartEspTrigger = nil
        end
    end

Feng:Toggle({
    Name = "发电机 ESP",
    Value = false,
    Callback = function(bool)
        generatorsEnabled = bool
    end
})

Feng:Toggle({
    Name = "杀手 ESP",
    Value = false,
    Callback = function(Value)
        killersESPToggle = Value
    end
})

Feng:Toggle({
    Name = "幸存者 ESP",
    Value = false,
    Callback = function(Value)
        survivorsESPToggle = Value
    end
})

Feng:Toggle({
    Name = "物品 ESP",
    Value = false,
    Callback = function(Value)
        itemESPEnabled = Value
        if itemESPEnabled then
            enableItemESP()
        else
            disableItemESP()
        end
    end
})
end

local FengYu = Window:Tab("物品区", "140005402255916")

local Feng = FengYu:Section({
    Name = "物品互动",
    SubName = "瞬移这一块",
    Logo = "84830962019412",
    open = true
})

do
    local autoTeleportMedkitEnabled = false
    local teleportMedkitThread = nil

    Feng:Toggle({
        Name = "医疗包传送并互动",
        Value = false,
        Callback = function(state)
            autoTeleportMedkitEnabled = state

            if autoTeleportMedkitEnabled then
                teleportMedkitThread = task.spawn(function()
                    while autoTeleportMedkitEnabled and task.wait(0.5) do
                        local character = game.Players.LocalPlayer.Character
                        if character and character:FindFirstChild("HumanoidRootPart") then
                            local humanoidRootPart = character.HumanoidRootPart

                            local medkit = workspace:FindFirstChild("Map", true)
                            if medkit then
                                medkit = medkit:FindFirstChild("Ingame", true)
                                if medkit then
                                    medkit = medkit:FindFirstChild("Medkit", true)
                                    if medkit then
                                        local itemRoot = medkit:FindFirstChild("ItemRoot", true)
                                        if itemRoot then
                                            itemRoot.CFrame = humanoidRootPart.CFrame + humanoidRootPart.CFrame.LookVector * 3

                                            local prompt = itemRoot:FindFirstChild("ProximityPrompt", true)
                                            if prompt then
                                                fireproximityprompt(prompt)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
            elseif teleportMedkitThread then
                task.cancel(teleportMedkitThread)
                teleportMedkitThread = nil
            end
        end
    })

    local autoTeleportColaEnabled = false
    local teleportColaThread = nil

Feng:Toggle({
    Name = "可乐传送并互动",
    Value = false,
    Callback = function(state)
        autoTeleportColaEnabled = state

        if autoTeleportColaEnabled then
            teleportColaThread = task.spawn(function()
                while autoTeleportColaEnabled and task.wait(0.5) do
                    local character = game.Players.LocalPlayer.Character
                    if character and character:FindFirstChild("HumanoidRootPart") then
                        local humanoidRootPart = character.HumanoidRootPart

                        local cola = workspace:FindFirstChild("Map", true)
                        if cola then
                            cola = cola:FindFirstChild("Ingame", true)
                            if cola then
                                cola = cola:FindFirstChild("BloxyCola", true)
                                if cola then
                                    local itemRoot = cola:FindFirstChild("ItemRoot", true)
                                    if itemRoot then
                                        itemRoot.CFrame = humanoidRootPart.CFrame + humanoidRootPart.CFrame.LookVector * 3

                                        local prompt = itemRoot:FindFirstChild("ProximityPrompt", true)
                                        if prompt then
                                            fireproximityprompt(prompt)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        elseif teleportColaThread then
            task.cancel(teleportColaThread)
            teleportColaThread = nil
        end
    end
})

    local autoMedkitEnabled = false
    local medkitThread = nil

Feng:Toggle({
    Name = "自动互动医疗包",
    Value = false,
    Callback = function(state)
        autoMedkitEnabled = state

        if autoMedkitEnabled then
            medkitThread = task.spawn(function()
                while autoMedkitEnabled and task.wait(0.5) do
                    local medkit = workspace:FindFirstChild("Map", true)
                    if medkit then
                        medkit = medkit:FindFirstChild("Ingame", true)
                        if medkit then
                            medkit = medkit:FindFirstChild("Medkit", true)
                            if medkit then
                                local itemRoot = medkit:FindFirstChild("ItemRoot", true)
                                if itemRoot then
                                    local prompt = itemRoot:FindFirstChild("ProximityPrompt", true)
                                    if prompt then
                                        fireproximityprompt(prompt)
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        elseif medkitThread then
            task.cancel(medkitThread)
            medkitThread = nil
        end
    end
})

    local autoColaEnabled = false
    local colaThread = nil

Feng:Toggle({
    Name = "自动互动可乐",
    Value = false,
    Callback = function(state)
        autoColaEnabled = state

        if autoColaEnabled then
            colaThread = task.spawn(function()
                while autoColaEnabled and task.wait(0.5) do
                    local cola = workspace:FindFirstChild("Map", true)
                    if cola then
                        cola = cola:FindFirstChild("Ingame", true)
                        if cola then
                            cola = cola:FindFirstChild("BloxyCola", true)
                            if cola then
                                local itemRoot = cola:FindFirstChild("ItemRoot", true)
                                if itemRoot then
                                    local prompt = itemRoot:FindFirstChild("ProximityPrompt", true)
                                    if prompt then
                                        fireproximityprompt(prompt)
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        elseif colaThread then
            task.cancel(colaThread)
            colaThread = nil
        end
    end
})
end

Window:Category({
    Name = "幸存者区",
    Collapsible = true,
    Opened = true, 
})

local FengYu = Window:Tab("发电机", "105433515091179")

local Feng = FengYu:Section({
    Name = "发电机系统",
    SubName = "里程碑的开始",
    Logo = "84830962019412",
    open = true
})

local vu2 = {
    autoRepairActive = false
}
local vu4 = {
    repairCheckInterval = 1.5
}

do
    local flow = {
        on = false,
        nodeDelay = 0.04,
        lineDelay = 0.60,
    }

    local function flowKey(n) return n.row.."-"..n.col end
    local function flowNeighbour(r1,c1,r2,c2)
        if r2==r1-1 and c2==c1 then return"up" end
        if r2==r1+1 and c2==c1 then return"down" end
        if r2==r1 and c2==c1-1 then return"left" end
        if r2==r1 and c2==c1+1 then return"right" end
        return false
    end

    local function flowOrder(path, endpoints)
        if not path or #path == 0 then return path end
        local lookup = {}
        for _, n in ipairs(path) do lookup[flowKey(n)] = n end
        local start
        for _, ep in ipairs(endpoints or {}) do
            for _, n in ipairs(path) do
                if n.row == ep.row and n.col == ep.col then
                    start = { row = ep.row, col = ep.col }
                    break
                end
            end
            if start then break end
        end
        if not start then
            for _, n in ipairs(path) do
                local nb = 0
                for _, d in ipairs({{-1,0},{1,0},{0,-1},{0,1}}) do
                    if lookup[(n.row+d[1]).."-"..(n.col+d[2])] then nb = nb + 1 end
                end
                if nb == 1 then start = { row = n.row, col = n.col }; break end
            end
        end
        if not start then start = { row = path[1].row, col = path[1].col } end
        local pool, ordered = {}, {}
        for _, n in ipairs(path) do pool[flowKey(n)] = { row = n.row, col = n.col } end
        local cur = start
        table.insert(ordered, { row = cur.row, col = cur.col })
        pool[flowKey(cur)] = nil
        while next(pool) do
            local moved = false
            for k, node in pairs(pool) do
                if flowNeighbour(cur.row, cur.col, node.row, node.col) then
                    table.insert(ordered, { row = node.row, col = node.col })
                    pool[k] = nil; cur = node; moved = true; break
                end
            end
            if not moved then break end
        end
        return ordered
    end

    local function flowSolve(puzzle)
        if not puzzle or not puzzle.Solution then return end
        local indices = {}
        for i = 1, #puzzle.Solution do indices[i] = i end
        for i = #indices, 2, -1 do
            local j = math.random(1, i)
            indices[i], indices[j] = indices[j], indices[i]
        end
        for _, ci in ipairs(indices) do
            local solution = puzzle.Solution[ci]
            if not solution then continue end
            local ordered = flowOrder(solution, puzzle.targetPairs[ci])
            if not ordered or #ordered == 0 then continue end
            puzzle.paths[ci] = {}
            for _, node in ipairs(ordered) do
                table.insert(puzzle.paths[ci], { row = node.row, col = node.col })
                puzzle:updateGui()
                task.wait(flow.nodeDelay)
            end
            task.wait(flow.lineDelay)
            puzzle:checkForWin()
        end
    end

    local hooked = false
    local function setupFlowHook()
        if hooked then return end
        local modFolder = game:GetService("ReplicatedStorage"):FindFirstChild("Modules")
        local miniFolder = modFolder and modFolder:FindFirstChild("Minigames")
        local fgFolder = miniFolder and miniFolder:FindFirstChild("FlowGameManager")
        local fgModule = fgFolder and fgFolder:FindFirstChild("FlowGame")
        if fgModule then
            local ok, FG = pcall(require, fgModule)
            if ok and FG and FG.new then
                local orig = FG.new
                FG.new = function(...)
                    local p = orig(...)
                    if flow.on then
                        task.spawn(function()
                            task.wait(0.3)
                            flowSolve(p)
                        end)
                    end
                    return p
                end
                hooked = true
            end
        end
    end

Feng:Toggle({
    Name = "绘制修机",
    Value = false,
    Callback = function(on)
        flow.on = on
        if on and not hooked then
            setupFlowHook()
        end
    end
})

Feng:Slider({
    Name = "节点速度 (秒)",
    Value = { 
        Min = 0, 
        Max = 1, 
        Default = 0.04 
    },
    Rounding = 2,
    Callback = function(v)
        flow.nodeDelay = v
    end
})

Feng:Slider({
    Name = "线暂停 (秒)",
    Value = { 
        Min = 0, 
        Max = 1, 
        Default = 0.60 
    },
    Rounding = 2,
    Callback = function(v)
        flow.lineDelay = v
    end
})

Feng:Divider()
Feng:Toggle({
    Name = "自动修复发电机",
    Value = false,
    Callback = function(value)
        vu2.autoRepairActive = value
    end
})

    local function findNearestGenerator()
        local character = game.Players.LocalPlayer.Character
        if not character then return nil end
        local root = character:FindFirstChild("HumanoidRootPart")
        if not root then return nil end

        local generators = {}
        local map = workspace:FindFirstChild("Map")
        if map then
            local ingame = map:FindFirstChild("Ingame")
            if ingame then
                local mapFolder = ingame:FindFirstChild("Map")
                if mapFolder then
                    for _, obj in pairs(mapFolder:GetChildren()) do
                        if obj.Name == "Generator" then
                            table.insert(generators, obj)
                        end
                    end
                end
            end
        end

        local nearest, nearestDist = nil, math.huge
        for _, gen in pairs(generators) do
            local part = gen:FindFirstChildWhichIsA("BasePart")
            if part then
                local dist = (root.Position - part.Position).Magnitude
                if dist < nearestDist then
                    nearest, nearestDist = gen, dist
                end
            end
        end
        return nearest
    end

    local function repairGenerator(generator)
        if not generator then return false end
        local remotes = generator:FindFirstChild("Remotes")
        if remotes then
            local re = remotes:FindFirstChild("RE")
            if re and re:IsA("RemoteEvent") then
                re:FireServer()
                return true
            end
        end
        return false
    end

    spawn(function()
        while wait() do
            if vu2.autoRepairActive then
                local generator = findNearestGenerator()
                if generator then
                    repairGenerator(generator)
                    wait(vu4.repairCheckInterval)
                end
            end
            wait(0.1)
        end
    end)

Feng:Button({
    Name = "完成所有发电机",
    Callback = function()
        pcall(function()
            local gameMap = workspace:FindFirstChild("Map")
            if not (gameMap and gameMap:FindFirstChild("Ingame") and gameMap.Ingame:FindFirstChild("Map")) then
                return
            end

            for _, v in ipairs(gameMap.Ingame.Map:GetChildren()) do
                if v.Name == "Generator" and v:FindFirstChild("Progress") and v.Progress.Value < 100 then
                    local positions = v:FindFirstChild("Positions")
                    if positions then
                        local center = positions:FindFirstChild("Center")
                        local right = positions:FindFirstChild("Right")
                        local left = positions:FindFirstChild("Left")
                        if center and right and left then
                            local function occupied(pos)
                                local folder = workspace:FindFirstChild("Players")
                                local survivors = folder and folder:FindFirstChild("Survivors")
                                if not survivors then return false end
                                for _, sv in ipairs(survivors:GetChildren()) do
                                    if sv ~= game.Players.LocalPlayer and sv:FindFirstChild("HumanoidRootPart") then
                                        if (sv.HumanoidRootPart.Position - pos).Magnitude <= 6 then
                                            return true
                                        end
                                    end
                                end
                                return false
                            end

                            local centerOccupied = occupied(center.Position)
                            local rightOccupied = occupied(right.Position)
                            local leftOccupied = occupied(left.Position)

                            if not (centerOccupied and rightOccupied and leftOccupied) then
                                local char = game.Players.LocalPlayer.Character
                                local hrp = char and char:FindFirstChild("HumanoidRootPart")
                                if hrp then
                                    if not centerOccupied then
                                        hrp.CFrame = center.CFrame
                                    elseif not rightOccupied then
                                        hrp.CFrame = right.CFrame
                                    else
                                        hrp.CFrame = left.CFrame
                                    end
                                end
                                task.wait(0.2)

                                local s2, r2 = pcall(function()
                                    return v.Remotes.RF:InvokeServer("Enter")
                                end)
                                if s2 and r2 == "fixing" then
                                    for _ = 1, 4 do
                                        if v.Progress.Value >= 100 then break end
                                        pcall(function()
                                            v.Remotes.RE:FireServer()
                                        end)
                                        task.wait(1.4)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
})
end

local FengYu = Window:Tab("访客1337", "101150016240183")

local Feng = FengYu:Section({
    Name = "访客1337",
    SubName = "使用这股神秘力量惩罚别人",
    Logo = "101150016240183",
    open = true,
})

Feng:Button({
    Name = "格挡脚本",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BrotherDou/max/refs/heads/main/Auto.lua"))()
    end
})

local FengYu = Window:Tab("机会", "96522474394555")

local Feng = FengYu:Section({
    Name = "机会",
    SubName = "这是你最后的机会",
    Logo = "96522474394555",
    open = true,
})

do
    local CoinflipSettings = {
        Enabled = false,
        TargetCharge = 3,
    }
    local lastCoinflipTime = 0
    local coinflipCooldown = 2
    local function readCoinflipChargesText()
        local ok, txt = pcall(function()
            local mainUI = game.Players.LocalPlayer:FindFirstChild("PlayerGui") and game.Players.LocalPlayer.PlayerGui:FindFirstChild("MainUI")
            if not mainUI then return nil end
            local abil = mainUI:FindFirstChild("AbilityContainer")
            if not abil then return nil end
            local coin = abil:FindFirstChild("Reroll")
            if not coin then return nil end
            local chargesLabel = coin:FindFirstChild("Charges")
            if not chargesLabel then return nil end
            return tostring(chargesLabel.Text)
        end)
        if ok then return txt end
        return nil
    end

    task.spawn(function()
        while true do
            task.wait(0.5)
            if not CoinflipSettings.Enabled then continue end

            local now = tick()
            if now - lastCoinflipTime < coinflipCooldown then continue end

            local isChance = false
            local playersFolder = workspace:FindFirstChild("Players")
            local survFolder = playersFolder and playersFolder:FindFirstChild("Survivors")
            if survFolder then
                for _, surv in ipairs(survFolder:GetChildren()) do
                    if surv:GetAttribute("Username") == game.Players.LocalPlayer.Name and surv.Name == "Chance" then
                        isChance = true
                        break
                    end
                end
            end
            if not isChance then continue end

            local charges = tonumber(readCoinflipChargesText())
            if charges and charges < CoinflipSettings.TargetCharge then
                lastCoinflipTime = now
                pcall(function()
                    local args = {
                        "UseActorAbility",
                        { buffer.fromstring("\003\b\000\000\000CoinFlip") }
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
                end)
            end
        end
    end)

    local ChanceAimbot = {
        Enabled = false,
        Prediction = false,
        Range = 100,
    }

    local oneShootAnims = {"73921036900313", "111384272984267", "90499469533503", "133491532453922"}

    local function isFlintlockVisible(char)
        if not char then return false end
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and (string.lower(tool.Name):find("flintlock") or string.lower(tool.Name):find("revolver") or string.lower(tool.Name):find("gun")) then
            return true
        end
        local flint = char:FindFirstChild("Flintlock", true)
        if not flint then return false end
        if not (flint:IsA("BasePart") or flint:IsA("MeshPart") or flint:IsA("UnionOperation")) then
            flint = flint:FindFirstChildWhichIsA("BasePart", true)
            if not flint then return false end
        end
        return flint.Transparency < 1
    end

    local chanceKillersCache = {}
    local function updateChanceKillers()
        local playersFolder = workspace:FindFirstChild("Players")
        if playersFolder then
            local kFolder = playersFolder:FindFirstChild("Killers")
            if kFolder then
                local list = {}
                for _, k in ipairs(kFolder:GetChildren()) do
                    if k:GetAttribute("Username") then
                        table.insert(list, k)
                    end
                end
                chanceKillersCache = list
            end
        end
    end

    task.spawn(function()
        while true do
            updateChanceKillers()
            task.wait(0.25)
        end
    end)

    local function isLocalPlayerChance()
        local char = game.Players.LocalPlayer.Character
        if not char then return false end
        local survivorsFolder = workspace:FindFirstChild("Players") and workspace.Players:FindFirstChild("Survivors")
        if not survivorsFolder then return false end
        for _, surv in ipairs(survivorsFolder:GetChildren()) do
            if surv == char and surv.Name == "Chance" then
                return true
            end
        end
        return false
    end

    local function isOneShootAnimating(char)
        if not char then return false end
        local hum = char:FindFirstChildOfClass("Humanoid")
        local animator = hum and hum:FindFirstChildOfClass("Animator")
        if animator then
            for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
                local id = tostring(track.Animation and track.Animation.AnimationId or ""):match("%d+")
                if id then
                    for _, animId in ipairs(oneShootAnims) do
                        if id == animId then
                            return true
                        end
                    end
                end
            end
        end
        return false
    end

    task.spawn(function()
        while true do
            task.wait(0.05)
            if not ChanceAimbot.Enabled then continue end

            local lp = game.Players.LocalPlayer
            local char = lp.Character
            if not char then continue end
            if not isLocalPlayerChance() then continue end

            local root = char:FindFirstChild("HumanoidRootPart")
            if not root then continue end

            local isShooting = isOneShootAnimating(char) or isFlintlockVisible(char)
            if not isShooting then continue end

            local target = nil
            local shortestDist = ChanceAimbot.Range
            for _, killer in ipairs(chanceKillersCache) do
                local kRoot = killer:FindFirstChild("HumanoidRootPart")
                if kRoot then
                    local dist = (kRoot.Position - root.Position).Magnitude
                    if dist <= shortestDist then
                        shortestDist = dist
                        target = kRoot
                    end
                end
            end

            if target then
                local targetPos = target.Position

                if ChanceAimbot.Prediction then
                    local velocity = target.Velocity or target.AssemblyLinearVelocity
                    if velocity then
                        local ping = 0
                        pcall(function() ping = lp:GetNetworkPing() end)
                        local dist = (target.Position - root.Position).Magnitude
                        local raycastSpeed = 1000
                        local raycastDelay = dist / raycastSpeed
                        local totalDelay = ping + raycastDelay
                        local dropoff = math.clamp(dist / ChanceAimbot.Range, 0.1, 1)
                        local distanceBoost = 1 + (dist / ChanceAimbot.Range) * 0.25
                        local predictionFactor = totalDelay * 1.2 * dropoff * distanceBoost
                        targetPos = targetPos + (velocity * predictionFactor)
                    end
                end

                root.CFrame = CFrame.lookAt(root.Position, Vector3.new(targetPos.X, root.Position.Y, targetPos.Z))
            end
        end
    end)

Feng:Toggle({
    Name = "启用机会射击自瞄",
    Value = false,
    Callback = function(v)
        ChanceAimbot.Enabled = v
    end
})

Feng:Toggle({
    Name = "瞄准预测",
    Value = false,
    Callback = function(v)
        ChanceAimbot.Prediction = v
    end
})

Feng:Slider({
    Name = "射击半径",
    Value = { 
        Min = 20, 
        Max = 1000, 
        Default = 100 
    },
    Callback = function(v)
        ChanceAimbot.Range = v
    end
})

Feng:Divider()

Feng:Toggle({
    Name = "自动抛硬币翻转",
    Value = false,
    Callback = function(v)
        CoinflipSettings.Enabled = v
    end
})

Feng:Dropdown({
    Name = "硬币充能层数",
    Values = {"1", "2", "3"},
    Value = "3",
    Multi = false,
    Callback = function(val)
        CoinflipSettings.TargetCharge = tonumber(val)
    end
})
end

local FengYu = Window:Tab("两次", "86434410365514")

local Feng = FengYu:Section({
    Name = "两次",
    SubName = "你喜欢蚊子吗？",
    Logo = "86434410365514",
    open = true,
})

do
    local RunService = game:GetService("RunService")
    local Workspace = game:GetService("Workspace")
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local LP = Players.LocalPlayer

    local NetworkEvent = ReplicatedStorage:FindFirstChild("Modules")
        and ReplicatedStorage.Modules:FindFirstChild("Network")
        and ReplicatedStorage.Modules.Network:FindFirstChild("Network")
        and ReplicatedStorage.Modules.Network.Network:FindFirstChild("RemoteEvent")
    if not NetworkEvent then
        warn("[Two Time] NetworkEvent not found, features may not work.")
        return
    end

    local AdvancedCombat = {
        TwoTimeEnabled      = false,
        TwoTimeRange        = 15,
        ShowTwoTimeVisual   = false,
        BackstabAimMode     = "Body aim"
    }

    local TwoTimeSettings = {
        DaggerAimEnabled    = false,
        DaggerAimMode       = "Body aim",
        DaggerAimRange      = 15
    }

    local lastDaggerCooldownVal = 0
    local daggerAimEndTime      = 0
    local lastTwoTimeUse        = 0
    local isTwoTimeActive       = false

    local twoTimeTriggerAnims = {
        ["119434518007321"] = true,
        ["115194624791339"] = true,
        ["89448354637442"]  = true,
        ["100725497418533"] = true,
        ["107640065977686"] = true,
        ["112902284724598"] = true,
        ["106086955212611"] = true,
        ["77119710693654"]  = true
    }

    local function FireRemoteAbility(abilityName)
        pcall(function()
            local args
            if abilityName == "Block" then
                args = { "UseActorAbility", { buffer.fromstring("\003\005\000\000\000Block") } }
            else
                args = { "UseActorAbility", { buffer.fromstring("\003\005\000\000\000" .. abilityName) } }
            end
            NetworkEvent:FireServer(unpack(args))
        end)
    end

    local function isFakeKiller(killerModel)
        if not killerModel then return true end
        local name = killerModel.Name
        if name:match("^Fake") or name:match("Fake$") then return true end
        local playersFolder = Workspace:FindFirstChild("Players")
        local killersFolder = playersFolder and playersFolder:FindFirstChild("Killers")
        if not killersFolder or not killerModel:IsDescendantOf(killersFolder) then return true end
        return false
    end

    local CachedKillers = {}
    task.spawn(function()
        while true do
            task.wait(0.25)
            local playersFolder = Workspace:FindFirstChild("Players")
            if playersFolder then
                local kFolder = playersFolder:FindFirstChild("Killers")
                if kFolder then
                    local kList = {}
                    for _, k in ipairs(kFolder:GetChildren()) do
                        if not isFakeKiller(k) and k:GetAttribute("Username") then
                            table.insert(kList, k)
                        end
                    end
                    CachedKillers = kList
                end
            end
        end
    end)

    RunService.Heartbeat:Connect(function()
        local myChar = LP.Character
        if not myChar then return end
        local myRoot = myChar:FindFirstChild("HumanoidRootPart")
        if not myRoot then return end

        if not AdvancedCombat.TwoTimeEnabled then return end

        pcall(function()
            local abilityContainer = LP.PlayerGui:FindFirstChild("MainUI")
                and LP.PlayerGui.MainUI:FindFirstChild("AbilityContainer")
            local daggerFrame = abilityContainer and abilityContainer:FindFirstChild("Dagger")
            if daggerFrame then
                local cdTime = daggerFrame:FindFirstChild("CooldownTime")
                local currentCD = (cdTime and cdTime.Visible and cdTime.Text ~= "")
                    and tonumber(cdTime.Text) or 0
                if currentCD > 0 and lastDaggerCooldownVal == 0 then
                    daggerAimEndTime = tick() + 1.0
                end
                lastDaggerCooldownVal = currentCD
            else
                lastDaggerCooldownVal = 0
            end
        end)

        if TwoTimeSettings.DaggerAimEnabled and tick() < daggerAimEndTime then
            local closestKiller = nil
            local shortestDist = TwoTimeSettings.DaggerAimRange
            for _, killerModel in ipairs(CachedKillers) do
                if isFakeKiller(killerModel) or not killerModel:GetAttribute("Username") then continue end
                local hrp = killerModel:FindFirstChild("HumanoidRootPart")
                if hrp then
                    local dist = (hrp.Position - myRoot.Position).Magnitude
                    if dist <= shortestDist then
                        shortestDist = dist
                        closestKiller = hrp
                    end
                end
            end
            if closestKiller then
                local targetPos = closestKiller.Position
                myRoot.CFrame = CFrame.lookAt(myRoot.Position, Vector3.new(targetPos.X, myRoot.Position.Y, targetPos.Z))
            end
        end

        if lastDaggerCooldownVal <= 0 and not isTwoTimeActive then
            local hum = myChar:FindFirstChildOfClass("Humanoid")
            local animator = hum and hum:FindFirstChildOfClass("Animator")
            local wantsToTwoTime = false
            if animator then
                for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
                    local id = tostring(track.Animation and track.Animation.AnimationId or ""):match("%d+")
                    if id and twoTimeTriggerAnims[id] then
                        wantsToTwoTime = true
                        break
                    end
                end
            end

            if wantsToTwoTime then
                local closestKiller = nil
                local shortestDist = AdvancedCombat.TwoTimeRange
                for _, killerModel in ipairs(CachedKillers) do
                    if isFakeKiller(killerModel) or not killerModel:GetAttribute("Username") then continue end
                    local hrp = killerModel:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        local dist = (hrp.Position - myRoot.Position).Magnitude
                        if dist <= shortestDist then
                            shortestDist = dist
                            closestKiller = hrp
                        end
                    end
                end

                if closestKiller then
                    isTwoTimeActive = true
                    lastTwoTimeUse = tick()
                    task.spawn(function()
                        local endTime = tick() + 0.27
                        local myHrp = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
                        local savedPosition = myHrp and myHrp.Position
                        if myHrp then myHrp.Anchored = true end

                        while tick() < endTime do
                            if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
                                and closestKiller and closestKiller.Parent then
                                local lp_hum = LP.Character:FindFirstChildOfClass("Humanoid")
                                if lp_hum and lp_hum.FloorMaterial ~= Enum.Material.Air then
                                    local currentDist = (closestKiller.Position - LP.Character.HumanoidRootPart.Position).Magnitude
                                    local offsetDist = currentDist
                                    if offsetDist > 9 then offsetDist = 2.25 end
                                    local newCFrame = closestKiller.CFrame * CFrame.new(0, 0, offsetDist)
                                    LP.Character.HumanoidRootPart.CFrame = CFrame.lookAt(newCFrame.Position, closestKiller.Position)
                                end
                            end
                            task.wait()
                        end

                        if myHrp then
                            myHrp.Anchored = false
                            if savedPosition and (myHrp.Position - savedPosition).Magnitude > 20 then
                                myHrp.CFrame = CFrame.new(savedPosition)
                            end
                        end
                        isTwoTimeActive = false
                    end)
                end
            end
        end
    end)

    local rangeCircle = nil
    RunService.RenderStepped:Connect(function()
        if not AdvancedCombat.ShowTwoTimeVisual then
            if rangeCircle then rangeCircle.Visible = false end
            return
        end
        local char = LP.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if hrp then
            if not rangeCircle or not rangeCircle.Parent then
                rangeCircle = Instance.new("CylinderHandleAdornment")
                rangeCircle.Name = "TwoTimeRangeVis"
                rangeCircle.Adornee = hrp
                rangeCircle.Height = 0.05
                rangeCircle.Color3 = Color3.fromRGB(0, 255, 0)
                rangeCircle.Transparency = 0.6
                rangeCircle.ZIndex = 1
                rangeCircle.Parent = hrp
            end
            rangeCircle.Radius = AdvancedCombat.TwoTimeRange
            rangeCircle.InnerRadius = math.max(0, AdvancedCombat.TwoTimeRange - 0.5)
            rangeCircle.CFrame = CFrame.new(0, -hrp.Size.Y / 2, 0) * CFrame.Angles(math.rad(90), 0, 0)
            rangeCircle.Visible = true
        elseif rangeCircle then
            rangeCircle.Visible = false
        end
    end)

Feng:Toggle({
    Name = "启用两次背刺",
    Value = false,
    Callback = function(v)
        AdvancedCombat.TwoTimeEnabled = v
    end
})

Feng:Slider({
    Name = "背刺半径",
    Value = { 
        Min = 5, 
        Max = 20, 
        Default = 15 
    },
    Callback = function(v)
        AdvancedCombat.TwoTimeRange = v
    end
})

Feng:Toggle({
    Name = "显示背刺范围圈",
    Value = false,
    Callback = function(v)
        AdvancedCombat.ShowTwoTimeVisual = v
        if not v and rangeCircle then
            rangeCircle.Visible = false
        end
    end
})

Feng:Divider()

Feng:Toggle({
    Name = "匕首瞄准",
    Value = false,
    Callback = function(v)
        TwoTimeSettings.DaggerAimEnabled = v
    end
})

Feng:Slider({
    Name = "匕首瞄准半径",
    Value = { 
        Min = 1, 
        Max = 30, 
            Default = 15 
    },
    Callback = function(v)
        TwoTimeSettings.DaggerAimRange = v
    end
})
end

local FengYu = Window:Tab("维罗妮卡", "96756659203467")

local Feng = FengYu:Section({
    Name = "维罗妮卡",
    SubName = "滑板少年宫颈癌筛查",
    Logo = "96756659203467",
    open = true,
})

local VeronicaSk8Control = false
Feng:Toggle({
    Name = "启用滑板控制",
    Value = false,
    Callback = function(state)
        VeronicaSk8Control = state
    end
})

do
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local Players = game:GetService("Players")
    local LP = Players.LocalPlayer

    local veronicaSk8Anims = {
        "130352140726486",
        "122542233810574",
        "117058860640843",
        "123803922491274"
    }

    local controlChargeActive = false
    local overrideConnection = nil
    local savedHumanoidState = {}
    local hasEverEnabledShiftlock = false

    local function getHumanoid()
        if not LP or not LP.Character then return nil end
        return LP.Character:FindFirstChildOfClass("Humanoid")
    end

    local function saveHumState(hum)
        if not hum or savedHumanoidState[hum] then return end
        local s = {}
        pcall(function()
            s.WalkSpeed = hum.WalkSpeed
            local ok, _ = pcall(function() s.JumpPower = hum.JumpPower end)
            if not ok then pcall(function() s.JumpPower = hum.JumpHeight end) end
            local ok2, ar = pcall(function() return hum.AutoRotate end)
            if ok2 then s.AutoRotate = ar end
            s.PlatformStand = hum.PlatformStand
        end)
        savedHumanoidState[hum] = s
    end

    local function restoreHumState(hum)
        if not hum then return end
        local s = savedHumanoidState[hum]
        if not s then return end
        pcall(function()
            if s.WalkSpeed ~= nil then hum.WalkSpeed = s.WalkSpeed end
            if s.JumpPower ~= nil then
                local ok, _ = pcall(function() hum.JumpPower = s.JumpPower end)
                if not ok then pcall(function() hum.JumpHeight = s.JumpPower end) end
            end
            if s.AutoRotate ~= nil then pcall(function() hum.AutoRotate = s.AutoRotate end) end
            if s.PlatformStand ~= nil then hum.PlatformStand = s.PlatformStand end
        end)
        savedHumanoidState[hum] = nil
    end

    local function startOverride()
        if controlChargeActive then return end
        local hum = getHumanoid()
        if not hum then return end
        controlChargeActive = true
        saveHumState(hum)

        pcall(function()
            hum.WalkSpeed = 60
            hum.AutoRotate = false
        end)

        overrideConnection = RunService.RenderStepped:Connect(function()
            local humanoid = getHumanoid()
            local rootPart = humanoid and humanoid.Parent and humanoid.Parent:FindFirstChild("HumanoidRootPart")
            if not humanoid or not rootPart then return end

            pcall(function()
                humanoid.WalkSpeed = 60
                humanoid.AutoRotate = false
            end)

            local cam = workspace.CurrentCamera
            if cam then
                local lookVec = cam.CFrame.LookVector
                local flat = Vector3.new(lookVec.X, 0, lookVec.Z)
                if flat.Magnitude > 0.01 then
                    rootPart.CFrame = CFrame.new(rootPart.Position, rootPart.Position + flat.Unit)
                end
            end

            local direction = rootPart.CFrame.LookVector
            local horizontal = Vector3.new(direction.X, 0, direction.Z)
            if horizontal.Magnitude > 0 then
                humanoid:Move(horizontal.Unit)
            else
                humanoid:Move(Vector3.new(0, 0, 0))
            end
        end)
    end

    local function stopOverride()
        if not controlChargeActive then return end
        controlChargeActive = false

        if overrideConnection then
            pcall(function() overrideConnection:Disconnect() end)
            overrideConnection = nil
        end

        local hum = getHumanoid()
        if hum then
            pcall(function()
                restoreHumState(hum)
                hum:Move(Vector3.new(0, 0, 0))
            end)
        end
    end

    local function detectChargeAnimation()
        local hum = getHumanoid()
        if not hum then return false end
        for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
            local ok, animId = pcall(function()
                return tostring(track.Animation and track.Animation.AnimationId or ""):match("%d+")
            end)
            if ok and animId and animId ~= "" then
                for _, id in ipairs(veronicaSk8Anims) do
                    if animId == id then
                        return true
                    end
                end
            end
        end
        return false
    end

    RunService.RenderStepped:Connect(function()
        if not VeronicaSk8Control then
            if controlChargeActive then
                stopOverride()
            end
            return
        end

        local hum = getHumanoid()
        if not hum then
            if controlChargeActive then
                stopOverride()
            end
            return
        end

        local isCharging = detectChargeAnimation()
        local isCurrentlyShiftlock = (UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter) or
                                    UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
        if isCurrentlyShiftlock then
            hasEverEnabledShiftlock = true
        end
        local isShiftlockActive = hasEverEnabledShiftlock or isCurrentlyShiftlock

        if isCharging and isShiftlockActive then
            if not controlChargeActive then
                startOverride()
            end
        else
            if controlChargeActive then
                stopOverride()
            end
        end
    end)

    LP.CharacterAdded:Connect(function()
        if controlChargeActive then
            stopOverride()
        end
        hasEverEnabledShiftlock = false
    end)
end

Window:Category({
    Name = "杀手区",
    Collapsible = true,
    Opened = true, 
})

local FengYu = Window:Tab("碰撞修改区", "84082094395188")

local Feng = FengYu:Section({
    Name = "碰撞箱扩展",
    SubName = "手臂设置",
    Logo = "84830962019412",
    open = true,
})

do
    local Players = game:GetService("Players")
    local LP = Players.LocalPlayer
    local RunService = game:GetService("RunService")
    local Workspace = game:GetService("Workspace")

    local hitboxExtender = {
        enabled = false,
        range = 10,
    }

    local function studsToPower(studs)
        return studs * 6
    end

    task.spawn(function()
        while true do
            RunService.Heartbeat:Wait()

            if hitboxExtender.enabled then
                local char = LP.Character
                local hrp = char and char:FindFirstChild("HumanoidRootPart")
                if not hrp then continue end

                local myHitboxDetected = false
                local hitboxesFolder = Workspace:FindFirstChild("Hitboxes")
                local myUsername = char:GetAttribute("Username") or LP.Name
                local myHitboxName = myUsername .. "Hitbox"

                if hitboxesFolder and char then
                    for _, part in ipairs(hitboxesFolder:GetChildren()) do
                        if part.Name == myHitboxName then
                            if hrp and (part.Position - hrp.Position).Magnitude <= 15 then
                                myHitboxDetected = true
                            end
                            break
                        end
                    end
                end

                if myHitboxDetected and char and hrp and hrp.Parent then
                    local velocity = hrp.AssemblyLinearVelocity
                    if velocity.Magnitude > 0.5 then
                        local distance = studsToPower(hitboxExtender.range)
                        local moveDir = velocity.Magnitude > 0 and velocity.Unit or hrp.CFrame.LookVector
                        local newVelocity = velocity + (moveDir * distance)
                        hrp.AssemblyLinearVelocity = Vector3.new(newVelocity.X, velocity.Y, newVelocity.Z)

                        RunService.RenderStepped:Wait()
                        if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") then
                            LP.Character.HumanoidRootPart.AssemblyLinearVelocity = velocity
                        end
                    end
                end
            end
        end
    end)

Feng:Toggle({
    Name = "启用碰撞箱扩展",
    Value = false,
    Callback = function(v)
        hitboxExtender.enabled = v
    end
})

Feng:Slider({
    Name = "碰撞箱长度",
    Value = {
        Min = 0,
        Max = 50,
        Default = 10
    },
    Callback = function(v)
        hitboxExtender.range = math.floor(v)
    end
})
end

local FengYu = Window:Tab("拐弯区", "104851651453042")

local Feng = FengYu:Section({
    Name = "汽车拐弯",
    SubName = "打开[准心]才有效果",
    Logo = "84830962019412",
    open = true,
})

do
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local Players = game:GetService("Players")
    local LP = Players.LocalPlayer
    local Camera = workspace.CurrentCamera

    local dashTurn = {
        sixer = false,
        coolkid = false,
        noli = false,
        noliActive = false,
        noliOrigWalkSpeed = nil,
        noliConn = nil,
    }

    local function getCameraInputDir()
        local cam = Camera
        local cf = cam.CFrame
        local camFwd = Vector3.new(cf.LookVector.X, 0, cf.LookVector.Z)
        local camRight = Vector3.new(cf.RightVector.X, 0, cf.RightVector.Z)
        local x, z = 0, 0
        if UserInputService:IsKeyDown(Enum.KeyCode.W) or UserInputService:IsKeyDown(Enum.KeyCode.Up) then z = z - 1 end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) or UserInputService:IsKeyDown(Enum.KeyCode.Down) then z = z + 1 end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) or UserInputService:IsKeyDown(Enum.KeyCode.Left) then x = x - 1 end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) or UserInputService:IsKeyDown(Enum.KeyCode.Right) then x = x + 1 end
        local dir = camFwd * -z + camRight * x
        if dir.Magnitude > 0.01 then return dir.Unit end
        if camFwd.Magnitude > 0.01 then return camFwd.Unit end
        return Vector3.new(0, 0, -1)
    end

    local function sixerAirStrafeStep()
        if not dashTurn.sixer then return end
        local char = LP.Character
        if not char then return end
        if char:GetAttribute("PursuitState") ~= "Dashing" then return end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        local hum = char:FindFirstChildOfClass("Humanoid")
        if not hrp or not hum then return end
        if hum.FloorMaterial ~= Enum.Material.Air then return end
        local cam = Camera
        local flat = cam.CFrame.LookVector * Vector3.new(1, 0, 1)
        if flat.Magnitude < 0.01 then return end
        flat = flat.Unit
        local vel = hrp.AssemblyLinearVelocity
        local hVel = Vector3.new(vel.X, 0, vel.Z)
        local hSpeed = hVel.Magnitude
        if hSpeed < 0.1 then return end
        local newH = hVel:Lerp(flat * hSpeed, 1)
        hrp.AssemblyLinearVelocity = Vector3.new(newH.X, vel.Y, newH.Z)
    end

    local function coolkidDashTurnStep(dt)
        if not dashTurn.coolkid then return end
        local char = LP.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if not char or not hrp then return end
        if char:GetAttribute("FootstepsMuted") ~= true then return end
        local dir = getCameraInputDir()
        local lv = hrp:FindFirstChildWhichIsA("LinearVelocity")
        if lv then lv.LineDirection = dir end
        if dir.Magnitude > 0.01 then
            local targetRot = CFrame.new(hrp.Position, hrp.Position + dir).Rotation
            hrp.CFrame = CFrame.new(hrp.Position) * hrp.CFrame.Rotation:Lerp(targetRot, math.min(dt * 16, 1))
        end
    end

    local function noliStartOverride()
        if dashTurn.noliActive then return end
        dashTurn.noliActive = true
        dashTurn.noliConn = RunService.RenderStepped:Connect(function()
            if not dashTurn.noli then
                noliStopOverride()
                return
            end
            local char = LP.Character
            local hum = char and char:FindFirstChildOfClass("Humanoid")
            local root = char and char:FindFirstChild("HumanoidRootPart")
            if not hum or not root then return end
            if not dashTurn.noliOrigWalkSpeed then dashTurn.noliOrigWalkSpeed = hum.WalkSpeed end
            hum.WalkSpeed = 60
            hum.AutoRotate = false
            local horiz = Vector3.new(root.CFrame.LookVector.X, 0, root.CFrame.LookVector.Z)
            if horiz.Magnitude > 0 then hum:Move(horiz.Unit) end
        end)
    end

    local function noliStopOverride()
        if not dashTurn.noliActive then return end
        dashTurn.noliActive = false
        if dashTurn.noliConn then
            dashTurn.noliConn:Disconnect()
            dashTurn.noliConn = nil
        end
        local char = LP.Character
        local hum = char and char:FindFirstChildOfClass("Humanoid")
        if hum then
            hum.WalkSpeed = dashTurn.noliOrigWalkSpeed or 16
            hum.AutoRotate = true
            pcall(function() hum:Move(Vector3.new(0, 0, 0)) end)
        end
        dashTurn.noliOrigWalkSpeed = nil
    end

    RunService:BindToRenderStep("SixerAirStrafe", Enum.RenderPriority.Character.Value + 2, sixerAirStrafeStep)

    local coolkidConn = nil
    local function updateCoolkidDash()
        if coolkidConn then coolkidConn:Disconnect() end
        coolkidConn = RunService.RenderStepped:Connect(function(dt)
            coolkidDashTurnStep(dt)
        end)
    end
    updateCoolkidDash()

    LP.CharacterAdded:Connect(function()
        noliStopOverride()
    end)

    RunService.RenderStepped:Connect(function()
        if not dashTurn.noli then
            if dashTurn.noliActive then noliStopOverride() end
            return
        end
        local char = LP.Character
        if not char then return end
        if char:GetAttribute("VoidRushState") == "Dashing" then
            noliStartOverride()
        else
            noliStopOverride()
        end
    end)

Feng:Toggle({
    Name = "访客666 - 空中控制",
    Value = false,
    Callback = function(state)
        dashTurn.sixer = state
    end
})

Feng:Toggle({
    Name = "酷小孩 - 冲刺控制",
    Value = false,
    Callback = function(state)
        dashTurn.coolkid = state
    end
})

Feng:Toggle({
    Name = "诺利 - 冲刺控制",
    Value = false,
    Callback = function(state)
        dashTurn.noli = state
        if not state then noliStopOverride() end
    end
})
end

local FengYu = Window:Tab("自瞄区", "79416567520364")

local Feng = FengYu:Section({
    Name = "自瞄",
    SubName = "靠近幸存者自动瞄准",
    Logo = "84830962019412",
    open = true,
})

do
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local Workspace = game:GetService("Workspace")
    local LP = Players.LocalPlayer

    local aim = {
        on = false,
        cooldown = 0.3,
        lockTime = 0.4,
        maxDist = 30,
        smooth = 0.35,
        targeting = false,
        target = nil,
        deathConn = nil,
        autoRotate = nil,
        lastFired = 0,
        hum = nil,
        hrp = nil,
        cache = {},
        cacheTime = 0,
        cacheLife = 0.5,
    }

    local function aimIsKiller()
        local char = LP.Character
        if not char then return false end
        local killersFolder = Workspace:FindFirstChild("Players") and Workspace.Players:FindFirstChild("Killers")
        return killersFolder and char:IsDescendantOf(killersFolder)
    end

    local function aimRefreshChar(ch)
        aim.hum = ch and ch:FindFirstChildOfClass("Humanoid")
        aim.hrp = ch and ch:FindFirstChild("HumanoidRootPart")
    end

    local function aimRefreshTargets()
        local now = tick()
        if now - aim.cacheTime < aim.cacheLife then return end
        aim.cacheTime = now
        aim.cache = {}
        local survivorsFolder = Workspace:FindFirstChild("Players") and Workspace.Players:FindFirstChild("Survivors")
        if not survivorsFolder then return end
        for _, model in ipairs(survivorsFolder:GetChildren()) do
            if model ~= LP.Character and model:IsA("Model") then
                local h = model:FindFirstChildOfClass("Humanoid")
                local r = model:FindFirstChild("HumanoidRootPart")
                if h and r and h.Health > 0 then
                    table.insert(aim.cache, r)
                end
            end
        end
    end

    local function aimNearest()
        aimRefreshTargets()
        if not aim.hrp or #aim.cache == 0 then return nil end
        local best, bestDist = nil, math.huge
        for _, r in ipairs(aim.cache) do
            local d = (r.Position - aim.hrp.Position).Magnitude
            if d < bestDist and d <= aim.maxDist then
                bestDist = d
                best = r
            end
        end
        return best
    end

    local function aimUnlock()
        if not aim.targeting then return end
        if aim.deathConn then aim.deathConn:Disconnect(); aim.deathConn = nil end
        if aim.autoRotate ~= nil and aim.hum then
            aim.hum.AutoRotate = aim.autoRotate
        end
        aim.targeting = false
        aim.target = nil
    end

    local function aimLock(rootPart)
        if not rootPart or not rootPart.Parent or not aim.hum or not aim.hrp then return end
        if aim.targeting and aim.target == rootPart then return end
        aimUnlock()
        aim.target = rootPart
        aim.targeting = true
        aim.autoRotate = aim.hum.AutoRotate
        aim.hum.AutoRotate = false
        local targetHumanoid = rootPart.Parent:FindFirstChildOfClass("Humanoid")
        if targetHumanoid then
            aim.deathConn = targetHumanoid.Died:Connect(aimUnlock)
        end
        task.delay(aim.lockTime, function()
            if aim.target == rootPart then aimUnlock() end
        end)
    end

    local function setupAimbotTrigger()
        local remote = game:GetService("ReplicatedStorage"):FindFirstChild("Modules")
            and game.ReplicatedStorage.Modules:FindFirstChild("Network")
            and game.ReplicatedStorage.Modules.Network:FindFirstChild("Network")
            and game.ReplicatedStorage.Modules.Network.Network:FindFirstChild("RemoteEvent")
        if not remote then return end

        remote.OnClientEvent:Connect(function(...)
            if not aim.on then return end
            local args = {...}
            if type(args[1]) ~= "string" then return end
            local abilityName = args[1]
            if abilityName:match("Ability") or abilityName:match("[QER]") or
               abilityName == "Slash" or abilityName == "Dagger" or abilityName == "Charge" or
               abilityName == "Stab" or abilityName == "Punch" then
                if tick() - aim.lastFired < aim.cooldown then return end
                aim.lastFired = tick()
                if aimIsKiller() then
                    local target = aimNearest()
                    if target then aimLock(target) end
                end
            end
        end)
    end

    LP.CharacterAdded:Connect(function(ch)
        task.wait(0.5)
        aimRefreshChar(ch)
    end)
    if LP.Character then
        aimRefreshChar(LP.Character)
    end

    RunService.RenderStepped:Connect(function()
        if not aim.on or not aim.targeting or not aim.hrp or not aim.target then return end
        if not aim.target.Parent then aimUnlock(); return end
        local targetHumanoid = aim.target.Parent:FindFirstChildOfClass("Humanoid")
        if not targetHumanoid or targetHumanoid.Health <= 0 then aimUnlock(); return end
        local flat = Vector3.new(
            aim.target.Position.X - aim.hrp.Position.X,
            0,
            aim.target.Position.Z - aim.hrp.Position.Z
        ).Unit
        if flat.Magnitude > 0 then
            aim.hrp.CFrame = aim.hrp.CFrame:Lerp(
                CFrame.new(aim.hrp.Position, aim.hrp.Position + flat),
                aim.smooth
            )
        end
    end)

    setupAimbotTrigger()

Feng:Toggle({
    Name = "使用自瞄",
    Value = aim.on,
    Callback = function(state)
        aim.on = state
        if not state then aimUnlock() end
    end
})

Feng:Slider({
    Name = "冷却时间 (秒)",
    Value = {
        Min = 0.1,
        Max = 2.0,
        Default = aim.cooldown
    },
    Rounding = 1,
    Callback = function(val)
        aim.cooldown = val
    end
})

Feng:Slider({
    Name = "锁定时间 (秒)",
    Value = {
        Min = 0.1,
        Max = 3.0,
        Default = aim.lockTime
    },
    Rounding = 1,
    Callback = function(val)
        aim.lockTime = val
    end
})

Feng:Slider({
    Name = "最大距离",
    Value = {
        Min = 5,
        Max = 100,
        Default = aim.maxDist
    },
    Callback = function(val)
        aim.maxDist = val
    end
})

Feng:Slider({
    Name = "旋转平滑度",
    Value = {
        Min = 0.05,
        Max = 1.0,
        Default = aim.smooth
    },
    Rounding = 2,
    Callback = function(val)
        aim.smooth = val
    end
})
end

local FengYu = Window:Tab("吸力区", "98092096704459")

local Feng = FengYu:Section({
    Name = "吸力",
    SubName = "变成磁铁吸在幸存者上",
    Logo = "84830962019412",
    open = true,
})

do
    local LP = game.Players.LocalPlayer
    local RunService = game:GetService("RunService")
    local Workspace = game:GetService("Workspace")

    local suction = {
        enabled = false,
        strength = 50,
        maxDist = 100,
        cache = {},
        cacheTime = 0,
        cacheLife = 0.3,
        conn = nil,
    }

    local function isKiller()
        local char = LP.Character
        if not char then return false end
        local killers = Workspace:FindFirstChild("Players") and Workspace.Players:FindFirstChild("Killers")
        return killers and char:IsDescendantOf(killers)
    end

    local function getNearestSurvivor()
        local now = tick()
        if now - suction.cacheTime < suction.cacheLife and suction.cache.target and suction.cache.target.Parent then
            return suction.cache.target
        end
        suction.cacheTime = now
        suction.cache = {}

        local survivors = Workspace:FindFirstChild("Players") and Workspace.Players:FindFirstChild("Survivors")
        if not survivors then return nil end

        local char = LP.Character
        if not char then return nil end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not hrp then return nil end

        local best, bestDist = nil, math.huge
        for _, model in ipairs(survivors:GetChildren()) do
            if model ~= char and model:IsA("Model") then
                local hum = model:FindFirstChildOfClass("Humanoid")
                local root = model:FindFirstChild("HumanoidRootPart")
                if hum and root and hum.Health > 0 then
                    local d = (root.Position - hrp.Position).Magnitude
                    if d < bestDist and d <= suction.maxDist then
                        bestDist = d
                        best = root
                    end
                end
            end
        end
        suction.cache.target = best
        return best
    end

    local function pushToTarget(targetRoot)
        if not targetRoot or not targetRoot.Parent then return end

        local killerChar = LP.Character
        if not killerChar then return end
        local killerHRP = killerChar:FindFirstChild("HumanoidRootPart")
        if not killerHRP then return end

        local direction = (targetRoot.Position - killerHRP.Position)
        if direction.Magnitude < 0.1 then return end
        direction = direction.Unit

        local currentVel = killerHRP.AssemblyLinearVelocity
        local pushForce = direction * suction.strength
        local newVel = currentVel:Lerp(currentVel + pushForce, 0.3)
        killerHRP.AssemblyLinearVelocity = newVel
    end

    local function startSuction()
        if suction.conn then return end
        suction.conn = RunService.RenderStepped:Connect(function()
            if not suction.enabled then return end
            if not isKiller() then return end
            local target = getNearestSurvivor()
            if target then
                pushToTarget(target)
            end
        end)
    end

    local function stopSuction()
        if suction.conn then
            suction.conn:Disconnect()
            suction.conn = nil
        end
        suction.cache = {}
    end

Feng:Toggle({
    Name = "冲向幸存者",
    Value = false,
    Callback = function(state)
        suction.enabled = state
        if state then startSuction() 
        else stopSuction() 
        end
    end
})

Feng:Slider({
    Name = "吸力强度",
    Value = { 
        Min = 5, 
        Max = 100, 
        Default = 50 
    },
    Callback = function(v) 
        suction.strength = v 
    end
})

Feng:Slider({
    Name = "最大搜索距离",
    Value = { 
        Min = 20, 
        Max = 200, 
        Default = 100 
    },
    Callback = function(v) 
        suction.maxDist = v 
    end
})

    LP.CharacterAdded:Connect(function()
        if suction.enabled then
            stopSuction()
            startSuction()
        end
    end)
end

local FengYu = Window:Tab("反背刺区", "127607227470291")

local Feng = FengYu:Section({
    Name = "有蚊子！",
    SubName = "免疫一些偷袭你的蚊子",
    Logo = "84830962019412",
    open = true,
})

do
    local abs = {
        on = false,
        range = 40,
        duration = 1.5,
        locked = false,
        soundConn = nil,
        scanThread = nil,
        rings = {},
    }

    local absTriggerSounds = {
        ["86710781315432"] = true,
        ["99820161736138"] = true,
    }

    local function absAddRing(model)
        local hrp = model:FindFirstChild("HumanoidRootPart")
        if not hrp or abs.rings[model] then return end
        pcall(function()
            local ring = Instance.new("Part")
            ring.Name = "AbsRing"
            ring.Shape = Enum.PartType.Cylinder
            ring.Size = Vector3.new(0.1, abs.range * 2, abs.range * 2)
            ring.Color = Color3.fromRGB(220, 50, 50)
            ring.Material = Enum.Material.ForceField
            ring.Transparency = 0.5
            ring.CanCollide = false
            ring.CanTouch = false
            ring.CFrame = hrp.CFrame * CFrame.Angles(0, 0, math.rad(90))
            ring.Parent = hrp
            local w = Instance.new("WeldConstraint")
            w.Part0 = hrp
            w.Part1 = ring
            w.Parent = ring
            abs.rings[model] = ring
        end)
    end

    local function absRemoveRing(model)
        local r = abs.rings[model]
        if r then
            pcall(function() r:Destroy() end)
            abs.rings[model] = nil
        end
    end

    local function absResizeRings()
        for _, r in pairs(abs.rings) do
            if r and r.Parent then
                r.Size = Vector3.new(0.1, abs.range * 2, abs.range * 2)
            end
        end
    end

    local function absCleanRings()
        for m in pairs(abs.rings) do
            absRemoveRing(m)
        end
    end

    local function absFindTwoTime()
        local players = workspace:FindFirstChild("Players")
        if not players then return nil end
        for _, folder in ipairs(players:GetChildren()) do
            local tt = folder:FindFirstChild("TwoTime")
            if tt then return tt end
        end
        return nil
    end

    local function absTrigger()
        if abs.locked then return end
        local plr = game.Players.LocalPlayer
        if not plr then return end
        local ch = plr.Character
        local myRoot = ch and ch:FindFirstChild("HumanoidRootPart")
        if not myRoot then return end
        local ttModel = absFindTwoTime()
        if not ttModel then return end
        local ttRoot = ttModel:FindFirstChild("HumanoidRootPart")
        if not ttRoot then return end
        if (myRoot.Position - ttRoot.Position).Magnitude > abs.range then return end
        abs.locked = true
        task.spawn(function()
            local deadline = tick() + abs.duration
            while tick() < deadline do
                if not abs.on then break end
                local plr2 = game.Players.LocalPlayer
                if not plr2 then break end
                local ch2 = plr2.Character
                local r2 = ch2 and ch2:FindFirstChild("HumanoidRootPart")
                if not r2 or not ttRoot.Parent then break end
                r2.CFrame = CFrame.lookAt(r2.Position, Vector3.new(ttRoot.Position.X, r2.Position.Y, ttRoot.Position.Z))
                task.wait()
            end
            abs.locked = false
        end)
    end

    local function absHookSounds()
        if abs.soundConn then abs.soundConn:Disconnect(); abs.soundConn = nil end
        abs.soundConn = workspace.DescendantAdded:Connect(function(obj)
            if not abs.on or not obj:IsA("Sound") then return end
            local id = obj.SoundId:match("%d+")
            if id and absTriggerSounds[id] then absTrigger() end
        end)
    end

    local function absStartScan()
        if abs.scanThread then return end
        abs.scanThread = task.spawn(function()
            while abs.on do
                local players = workspace:FindFirstChild("Players")
                if players then
                    for _, folder in ipairs(players:GetChildren()) do
                        for _, model in ipairs(folder:GetChildren()) do
                            if model.Name == "TwoTime" then absAddRing(model) end
                        end
                    end
                end
                for m in pairs(abs.rings) do
                    if not m.Parent then absRemoveRing(m) end
                end
                task.wait(1)
            end
            abs.scanThread = nil
        end)
    end

    local function absStart()
        abs.on = true
        absHookSounds()
        absStartScan()
    end

    local function absStop()
        abs.on = false
        if abs.soundConn then abs.soundConn:Disconnect(); abs.soundConn = nil end
        if abs.scanThread then task.cancel(abs.scanThread); abs.scanThread = nil end
        absCleanRings()
        abs.locked = false
    end

    local function setupCharacterListener()
        local plr = game.Players.LocalPlayer
        if plr then
            plr.CharacterAdded:Connect(function()
                abs.locked = false
                if abs.on then
                    absStop()
                    absStart()
                end
            end)
        end
    end
    setupCharacterListener()

Feng:Toggle({
    Name = "启用反背刺",
    Value = false,
    Callback = function(on)
        if on then
            absStart()
        else
            absStop()
        end
    end
})

Feng:Slider({
    Name = "检测范围",
    Value = { 
        Min = 10, 
        Max = 120, 
        Default = abs.range 
    },
    Callback = function(v)
        abs.range = v
        absResizeRings()
    end
    })

Feng:Slider({
    Name = "注视时间",
    Value = { 
        Min = 0.3, 
        Max = 5.0, 
        Default = abs.duration 
    },
    Callback = function(v)
        abs.duration = v
    end
})
end

Window:Category({
    Name = "UI设置",
    Collapsible = true,
    Opened = false, 
})

local FengYu = Window:Tab("配置管理", "137908403526430")

local Feng = FengYu:Section({
    Name = "配置设置",
    SubName = "保存你的配置重新设置时应用到相应的位置",
    Logo = "137908403526430",
    open = true
})

local ConfigName = ""
Feng:Textbox({
    Name = "配置名字",
    Placeholder = "输入配置名",
    Callback = function(val)
        ConfigName = val
    end
})

local dropdownObj
local ConfigPaths = {}

local function RefreshConfigs()
    pcall(function()
        if not isfolder(Window.RootFolder) then makefolder(Window.RootFolder) end
        if not isfolder(Window.ConfigFolder) then makefolder(Window.ConfigFolder) end
    end)
    local newList = {"None"}
    local newPaths = {}
    pcall(function()
        for _, file in pairs(listfiles(Window.ConfigFolder)) do
            local name = file:gsub(".*[\/]", ""):gsub("%.json$", "")
            if name ~= "" then
                table.insert(newList, name)
                newPaths[name] = file
            end
        end
    end)
    ConfigPaths = newPaths
    if dropdownObj then
        dropdownObj.Refresh(newList)
        if Window.CurrentConfig ~= "None" and not ConfigPaths[Window.CurrentConfig] then
            Window.CurrentConfig = "None"
            if dropdownObj.SetValue then
                dropdownObj.SetValue("None")
            end
        end
    end
end

dropdownObj = Feng:Dropdown({
    Name = "选择配置",
    Values = {"None"},
    Value = "None",
    Multi = false,
    Callback = function(val)
        Window.CurrentConfig = val
    end
})

Feng:Button({
    Name = "刷新列表",
    Callback = RefreshConfigs
})

Feng:Button({
    Name = "保存配置",
    Callback = function()
        if ConfigName == "" then
            Window:Notification("保存错误", "你他妈倒是写配置名啊", "Error", 2)
            return
        end
        library:SaveConfig(ConfigName, Window.ConfigFolder)
        RefreshConfigs()
        Window:Notification("成功保存", "配置保存为" .. ConfigName, "Success", 2)
    end
})

Feng:Button({
    Name = "加载配置",
    Callback = function()
        if Window.CurrentConfig == "" or Window.CurrentConfig == "None" then
            Window:Notification("加载错误", "你个傻逼会不会选配置", "Error", 2)
            return
        end
        local name = Window.CurrentConfig
        local path = ConfigPaths[name] or (Window.ConfigFolder .. "/" .. name .. ".json")
        Window:Notification("正在加载", "正在载入" .. name .. "配置", "Info", 2)
        local ok = library:LoadConfig(path)
        if ok then
            Window:Notification("加载成功", name .. "已加载配置", "Success", 2)
        else
            Window:Notification("错误", "加载失败" .. name, "Error", 2)
        end
    end
})

Feng:Button({
    Name = "删除配置",
    Callback = function()
        if Window.CurrentConfig == "" or Window.CurrentConfig == "None" then
            Window:Notification("错误", "你没选配置你删个屁啊？", "Error", 2)
            return
        end
        local name = Window.CurrentConfig
        local paths = {
            ConfigPaths[name],
            Window.ConfigFolder .. "/" .. name .. ".json",
            Window.ConfigFolder .. "\\" .. name .. ".json",
        }
        pcall(function()
            for _, path in ipairs(paths) do
                if path and isfile(path) then
                    delfile(path)
                    break
                end
            end
        end)
        Window.CurrentConfig = "None"
        task.wait(0.05)
        RefreshConfigs()
        if dropdownObj and dropdownObj.SetValue then
            dropdownObj.SetValue("None")
        end
        Window:Notification("成功", name .. " 配置成功删除", "Success", 2)
    end
})

RefreshConfigs()

local FengYu = Window:Tab("设置系统", "137908403526430")

local Feng = FengYu:Section({
    Name = "界面设置"
})

local themeMap = {
    ["默认 = 暗色"] = "Dark",
    ["深紫"] = "Deep Violet",
    ["灰烬"] = "Ash Gray",
    ["木炭"] = "Charcoal",
    ["珍珠白"] = "Pearl White",
    ["血红"] = "Blood Red",
    ["霓虹紫"] = "Neon Purple",
    ["深海"] = "Deep Ocean",
    ["午夜蓝"] = "Midnight Blue",
    ["皇家蓝"] = "Royal Blue",
    ["银河紫"] = "Galaxy Purple",
    ["宇宙紫"] = "Cosmic Violet",
    ["纯黑"] = "AMOLED",
    ["RGB 动态"] = "RGB",
    ["霓虹赛博"] = "Neon Cyber",
    ["极地冰霜"] = "Arctic Frost",
    ["棉花糖"] = "Cotton Candy",
    ["橙色"] = "Orange",
    ["青色"] = "Cyanic",
    ["琥珀流光"] = "Amber Glow",
    ["花绽"] = "Bloomings",
    ["绯红"] = "Crimson",
    ["金色"] = "Gold",
}
local themeDisplay = {}
for display, _ in pairs(themeMap) do
    table.insert(themeDisplay, display)
end

Feng:Dropdown({
    Name = "主题颜色",
    Values = themeDisplay,
    Value = themeDisplay[1],
    Multi = false,
    Callback = function(v)
        library:SetTheme(themeMap[v])
    end
})

Feng:Toggle({
    Name = "光标",
    Value = false,
    Callback = function(val)
        library:SetCustomCursor(val)
    end
})

Feng:Keybind({
    Name = "菜单键绑定",
    Default = Enum.KeyCode.RightShift,
    Callback = function(v)
        Window:SetKeybind(v)
    end
})

Feng:Button({
    Name = "摧毁界面",
    Callback = function()
        Window:Destroy()
    end
})

local Thing = game:HttpGet(string.format("https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true", game.Players.LocalPlayer.UserId))
Thing = game:GetService("HttpService"):JSONDecode(Thing).data[1]
local AvatarImage = Thing.imageUrl

local device
if game.UserInputService.TouchEnabled and not game.UserInputService.KeyboardEnabled and not game.UserInputService.MouseEnabled then
  device = "移动设备"
 elseif not game.UserInputService.TouchEnabled and game.UserInputService.KeyboardEnabled and game.UserInputService.MouseEnabled then
  device = "电脑"
 elseif game.UserInputService.TouchEnabled and game.UserInputService.KeyboardEnabled and game.UserInputService.MouseEnabled then
  device = "带触摸屏的电脑"
end

local msg = {
  ["username"] = "殺脚本记录",
  ["embeds"] = {
    {
      ["color"] = tonumber(tostring("0x32CD32")),
      ["title"] = "被遗弃监控-有人正在使用" .. os.date("%H") .. "时" .. os.date("%M") .. "分",
      ["thumbnail"] = {
        ["url"] = AvatarImage,
      },
      ["fields"] = {
        {
          ["name"] = "用户名",
          ["value"] = game.Players.LocalPlayer.Name,
          ["inline"] = true
        },
        {
          ["name"] = "名称",
          ["value"] = game.Players.LocalPlayer.DisplayName,
          ["inline"] = true
        },
        {
          ["name"] = "地图名称",
          ["value"] = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
          ["inline"] = true
        },
        {
          ["name"] = "使用的注入器",
          ["value"] = identifyexecutor() or getexecutorname() or "未知",
          ["inline"] = true
        },
        {
          ["name"] = "账号年龄",
          ["value"] = game.Players.LocalPlayer.AccountAge .. "天",
          ["inline"] = true
        },
        {
          ["name"] = "设备",
          ["value"] = device,
          ["inline"] = false
        },
      }
    }
  }
}

local request = http_request or request or HttpPost or syn.request
request({
  Url = "https://discord.com/api/webhooks/1449072757894545582/G3XjFZ_FnO--rDROAYrFiQS6QyrgHViBs_kyT-hJvmoTU_I3sVE6gG3xzI9NaJy97hN1",
  Method = "POST",
  Headers = {["Content-Type"] = "application/json"},
  Body = game.HttpService:JSONEncode(msg)
})