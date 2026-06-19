-- resources
local fileName_settings = "handmade_settingthing.png"
local url_settings = "https://raw.githubusercontent.com/who-is-eze/obby-destroyer/main/resources/handmade_settingthing.png"
local fileName_info = "handmade_infothing.png"
local url_info = "https://raw.githubusercontent.com/who-is-eze/obby-destroyer/main/resources/handmade_infothing.png"

local function imageExist(fileName, url)
    if not isfile(fileName) then
        local success, content = pcall(function()
            return game:HttpGet(url)
        end)
        if success then
            writefile(fileName, content)
        else
            warn("failed downloading resource ´", fileName "´")
        end
    end
end
	
imageExists(fileName_settings, url_settings)
imageExists(fileName_settings, url_settings)
	
-- main gui

local obbyDestroyer3000script = Instance.new("ScreenGui")
obbyDestroyer3000script.Name = "obbyDestroyer3000script"
obbyDestroyer3000script.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
obbyDestroyer3000script.Parent = game:GetService("CoreGui")

local mainFrame = Instance.new("Frame")
mainFrame.Name = "mainFrame"
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.fromRGB(152, 162, 255)
mainFrame.BorderSizePixel = 0
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.Size = UDim2.new(0, 500, 0, 350)
mainFrame.Parent = obbyDestroyer3000script

local title = Instance.new("TextLabel")
title.Name = "title"
title.Font = Enum.Font.SourceSans
title.Text = "obby destroyer 3000 script"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextScaled = true
title.TextSize = 14
title.TextWrapped = true
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 0.75
title.BorderSizePixel = 0
title.Size = UDim2.new(1, 0, 0, 50)
title.Parent = mainFrame

local buttonsFolder = Instance.new("Folder")
buttonsFolder.Name = "Buttons"
buttonsFolder.Parent = mainFrame

local btnUnlockAll = Instance.new("TextButton")
btnUnlockAll.Name = "btnUnlockAll"
btnUnlockAll.Font = Enum.Font.SourceSans
btnUnlockAll.Text = "click me"
btnUnlockAll.TextColor3 = Color3.fromRGB(0, 0, 0)
btnUnlockAll.TextScaled = true
btnUnlockAll.TextSize = 14
btnUnlockAll.TextWrapped = true
btnUnlockAll.BackgroundColor3 = Color3.fromRGB(106, 220, 116)
btnUnlockAll.BorderSizePixel = 0
btnUnlockAll.Position = UDim2.new(0.05, 0, 0.2857143, 0)
btnUnlockAll.Size = UDim2.new(0, 100, 0, 50)
btnUnlockAll.Parent = buttonsFolder

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 3)
uiCorner.Parent = btnUnlockAll

local lblUnlockAll = Instance.new("TextLabel")
lblUnlockAll.Name = "lblUnlockAll"
lblUnlockAll.Font = Enum.Font.SourceSans
lblUnlockAll.Text = "unlock all levels"
lblUnlockAll.TextColor3 = Color3.fromRGB(0, 0, 0)
lblUnlockAll.TextScaled = true
lblUnlockAll.TextSize = 14
lblUnlockAll.TextWrapped = true
lblUnlockAll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lblUnlockAll.BackgroundTransparency = 1
lblUnlockAll.BorderSizePixel = 0
lblUnlockAll.Position = UDim2.new(0.024, 0, 0.1714286, 0)
lblUnlockAll.Size = UDim2.new(0, 125, 0, 40)
lblUnlockAll.Parent = mainFrame

local textLabelHint = Instance.new("TextLabel")
textLabelHint.Font = Enum.Font.SourceSans
textLabelHint.Text = "(it can take some time in some games)"
textLabelHint.TextColor3 = Color3.fromRGB(54, 54, 54)
textLabelHint.TextScaled = true
textLabelHint.TextSize = 14
textLabelHint.TextWrapped = true
textLabelHint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textLabelHint.BackgroundTransparency = 1
textLabelHint.BorderSizePixel = 0
textLabelHint.Position = UDim2.new(0.104, 0, 2.25, 0)
textLabelHint.Size = UDim2.new(0, 100, 0, 25)
textLabelHint.Parent = lblUnlockAll

local secondFrame = Instance.new("ScrollingFrame")
secondFrame.Name = "secondFrame"
secondFrame.Active = true
secondFrame.BackgroundColor3 = Color3.fromRGB(152, 162, 255)
secondFrame.BorderSizePixel = 0
secondFrame.Position = UDim2.new(0.6855346, 0, 0.2727273, 0)
secondFrame.Size = UDim2.new(0, 155, 0, 349)
secondFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
secondFrame.ScrollBarThickness = 5
secondFrame.Parent = obbyDestroyer3000script

local statusFolder = Instance.new("Folder")
statusFolder.Name = "status"
statusFolder.Parent = secondFrame

local statusGame1 = Instance.new("TextLabel")
statusGame1.Name = "statusGame1"
statusGame1.Font = Enum.Font.SourceSans
statusGame1.Text = ""
statusGame1.TextColor3 = Color3.fromRGB(0, 0, 0)
statusGame1.TextSize = 14
statusGame1.BackgroundColor3 = Color3.fromRGB(78, 255, 0)
statusGame1.BorderSizePixel = 0
statusGame1.Position = UDim2.new(0.7677419, 0, 0.0668831, 0)
statusGame1.Size = UDim2.new(0, 25, 0, 25)
statusGame1.Parent = statusFolder

local uiCorner1 = Instance.new("UICorner")
uiCorner1.CornerRadius = UDim.new(1, 0)
uiCorner1.Parent = statusGame1

local statusGame2 = Instance.new("TextLabel")
statusGame2.Name = "statusGame2"
statusGame2.Font = Enum.Font.SourceSans
statusGame2.Text = ""
statusGame2.TextColor3 = Color3.fromRGB(0, 0, 0)
statusGame2.TextSize = 14
statusGame2.BackgroundColor3 = Color3.fromRGB(78, 255, 0)
statusGame2.BorderSizePixel = 0
statusGame2.Position = UDim2.new(0.7677419, 0, 0.125974, 0)
statusGame2.Size = UDim2.new(0, 25, 0, 25)
statusGame2.Parent = statusFolder

local uiCorner2 = Instance.new("UICorner")
uiCorner2.CornerRadius = UDim.new(1, 0)
uiCorner2.Parent = statusGame2

local takemethereFolder = Instance.new("Folder")
takemethereFolder.Name = "takemethereButtons"
takemethereFolder.Parent = secondFrame

local btnTakeMeThere1 = Instance.new("TextButton")
btnTakeMeThere1.Name = "btnTakeMeThere1"
btnTakeMeThere1.Font = Enum.Font.SourceSans
btnTakeMeThere1.Text = "take me there"
btnTakeMeThere1.TextColor3 = Color3.fromRGB(0, 0, 0)
btnTakeMeThere1.TextScaled = true
btnTakeMeThere1.TextSize = 14
btnTakeMeThere1.TextWrapped = true
btnTakeMeThere1.BackgroundColor3 = Color3.fromRGB(106, 220, 116)
btnTakeMeThere1.BorderSizePixel = 0
btnTakeMeThere1.Position = UDim2.new(0.0516129, 0, 0.0593507, 0)
btnTakeMeThere1.Size = UDim2.new(0, 100, 0, 50)
btnTakeMeThere1.Parent = takemethereFolder

local uiCorner3 = Instance.new("UICorner")
uiCorner3.CornerRadius = UDim.new(0, 3)
uiCorner3.Parent = btnTakeMeThere1

local btnTakeMeThere2 = Instance.new("TextButton")
btnTakeMeThere2.Name = "btnTakeMeThere2"
btnTakeMeThere2.Font = Enum.Font.SourceSans
btnTakeMeThere2.Text = "take me there"
btnTakeMeThere2.TextColor3 = Color3.fromRGB(0, 0, 0)
btnTakeMeThere2.TextScaled = true
btnTakeMeThere2.TextSize = 14
btnTakeMeThere2.TextWrapped = true
btnTakeMeThere2.BackgroundColor3 = Color3.fromRGB(106, 220, 116)
btnTakeMeThere2.BorderSizePixel = 0
btnTakeMeThere2.Position = UDim2.new(0.0516129, 0, 0.1184416, 0)
btnTakeMeThere2.Size = UDim2.new(0, 100, 0, 50)
btnTakeMeThere2.Parent = takemethereFolder

local uiCorner4 = Instance.new("UICorner")
uiCorner4.CornerRadius = UDim.new(0, 3)
uiCorner4.Parent = btnTakeMeThere2

local nothingtoseehere = Instance.new("TextLabel")
nothingtoseehere.Font = Enum.Font.SourceSansItalic
nothingtoseehere.Text = "nothing to see here..."
nothingtoseehere.TextColor3 = Color3.fromRGB(0, 0, 0)
nothingtoseehere.TextSize = 14
nothingtoseehere.TextWrapped = true
nothingtoseehere.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
nothingtoseehere.BackgroundTransparency = 1
nothingtoseehere.BorderColor3 = Color3.fromRGB(0, 0, 0)
nothingtoseehere.BorderSizePixel = 0
nothingtoseehere.Position = UDim2.new(0, 0, 0.985000014, 0)
nothingtoseehere.Size = UDim2.new(0, 150, 0, 25)
nothingtoseehere.Name = "nothingtoseehere"
nothingtoseehere.Parent = secondFrame

local gameTag1 = Instance.new("TextLabel")
gameTag1.Name = "gameTag1"
gameTag1.Font = Enum.Font.SourceSans
gameTag1.Text = "IMPOSSIBLE Obby to Heaven 😇"
gameTag1.TextColor3 = Color3.fromRGB(0, 0, 0)
gameTag1.TextScaled = true
gameTag1.TextSize = 14
gameTag1.TextWrapped = true
gameTag1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gameTag1.BackgroundTransparency = 1
gameTag1.BorderSizePixel = 0
gameTag1.Position = UDim2.new(0, 0, 0.0324675, 0)
gameTag1.Size = UDim2.new(0, 150, 0, 35)
gameTag1.Parent = secondFrame

local lblSupported = Instance.new("TextLabel")
lblSupported.Name = "lblSupported"
lblSupported.Font = Enum.Font.SourceSans
lblSupported.Text = "supported games"
lblSupported.TextColor3 = Color3.fromRGB(0, 0, 0)
lblSupported.TextScaled = true
lblSupported.TextSize = 14
lblSupported.TextWrapped = true
lblSupported.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lblSupported.BackgroundTransparency = 0.75
lblSupported.BorderSizePixel = 0
lblSupported.Size = UDim2.new(0, 150, 0, 50)
lblSupported.Parent = secondFrame

local gameTag2 = Instance.new("TextLabel")
gameTag2.Name = "gameTag2"
gameTag2.Font = Enum.Font.SourceSans
gameTag2.Text = "oMega Obby 🌟 725 Stages!"
gameTag2.TextColor3 = Color3.fromRGB(0, 0, 0)
gameTag2.TextScaled = true
gameTag2.TextSize = 14
gameTag2.TextWrapped = true
gameTag2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gameTag2.BackgroundTransparency = 1
gameTag2.BorderSizePixel = 0
gameTag2.Position = UDim2.new(0, 0, 0.0915584, 0)
gameTag2.Size = UDim2.new(0, 150, 0, 35)
gameTag2.Parent = secondFrame

-- config thing

local configFrame = Instance.new("Frame")
configFrame.Name = "configFrame"
configFrame.BackgroundColor3 = Color3.fromRGB(152, 162, 255)
configFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
configFrame.BorderSizePixel = 0
configFrame.Position = UDim2.new(0.0433618836, 0, 0.272727281, 0)
configFrame.Size = UDim2.new(0, 500, 0, 350)
configFrame.Visible = false
configFrame.Parent = obbyDestroyer3000script

local title = Instance.new("TextLabel")
title.Name = "title"
title.Font = Enum.Font.SourceSans
title.Text = "configuration panel"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextScaled = true
title.TextSize = 14
title.TextWrapped = true
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 0.75
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Size = UDim2.new(0, 500, 0, 50)
title.Parent = configFrame

local btnCloseConfig = Instance.new("TextButton")
btnCloseConfig.Name = "btnClose"
btnCloseConfig.Font = Enum.Font.SourceSans
btnCloseConfig.Text = "X"
btnCloseConfig.TextColor3 = Color3.fromRGB(0, 0, 0)
btnCloseConfig.TextSize = 35
btnCloseConfig.TextWrapped = true
btnCloseConfig.BackgroundColor3 = Color3.fromRGB(255, 80, 67)
btnCloseConfig.BorderColor3 = Color3.fromRGB(0, 0, 0)
btnCloseConfig.BorderSizePixel = 0
btnCloseConfig.Position = UDim2.new(0.959500015, 0, -0.0557142869, 0)
btnCloseConfig.Size = UDim2.new(0, 40, 0, 40)
btnCloseConfig.Parent = configFrame

local buttonsFolder = Instance.new("Folder")
buttonsFolder.Name = "Buttons"
buttonsFolder.Parent = configFrame

local btnConfig_1 = Instance.new("TextButton")
btnConfig_1.Name = "btnConfig_1"
btnConfig_1.Font = Enum.Font.SourceSans
btnConfig_1.RichText = true
btnConfig_1.Text = "placeholder text"
btnConfig_1.TextColor3 = Color3.fromRGB(0, 0, 0)
btnConfig_1.TextScaled = true
btnConfig_1.TextSize = 14
btnConfig_1.TextWrapped = true
btnConfig_1.BackgroundColor3 = Color3.fromRGB(106, 220, 116)
btnConfig_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
btnConfig_1.BorderSizePixel = 0
btnConfig_1.Position = UDim2.new(0.0480000004, 0, 0.17428571, 0)
btnConfig_1.Size = UDim2.new(0, 175, 0, 50)
btnConfig_1.Parent = buttonsFolder

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 3)
uiCorner.Parent = btnConfig_1

local btnConfig_2 = Instance.new("TextButton")
btnConfig_2.Name = "btnConfig_2"
btnConfig_2.Font = Enum.Font.SourceSans
btnConfig_2.RichText = true
btnConfig_2.Text = "placeholder text"
btnConfig_2.TextColor3 = Color3.fromRGB(0, 0, 0)
btnConfig_2.TextScaled = true
btnConfig_2.TextSize = 14
btnConfig_2.TextWrapped = true
btnConfig_2.BackgroundColor3 = Color3.fromRGB(106, 220, 116)
btnConfig_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
btnConfig_2.BorderSizePixel = 0
btnConfig_2.Position = UDim2.new(0.0480000004, 0, 0.39142856, 0)
btnConfig_2.Size = UDim2.new(0, 175, 0, 50)
btnConfig_2.Parent = buttonsFolder

local uiCorner1 = Instance.new("UICorner")
uiCorner1.CornerRadius = UDim.new(0, 3)
uiCorner1.Parent = btnConfig_2

local btnConfig_3 = Instance.new("TextButton")
btnConfig_3.Name = "btnConfig_3"
btnConfig_3.Font = Enum.Font.SourceSans
btnConfig_3.RichText = true
btnConfig_3.Text = "placeholder text"
btnConfig_3.TextColor3 = Color3.fromRGB(0, 0, 0)
btnConfig_3.TextScaled = true
btnConfig_3.TextSize = 14
btnConfig_3.TextWrapped = true
btnConfig_3.BackgroundColor3 = Color3.fromRGB(106, 220, 116)
btnConfig_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
btnConfig_3.BorderSizePixel = 0
btnConfig_3.Position = UDim2.new(0.0480000004, 0, 0.622857153, 0)
btnConfig_3.Size = UDim2.new(0, 175, 0, 50)
btnConfig_3.Parent = buttonsFolder

local uiCorner2 = Instance.new("UICorner")
uiCorner2.CornerRadius = UDim.new(0, 3)
uiCorner2.Parent = btnConfig_3

local btnConfig_4 = Instance.new("TextButton")
btnConfig_4.Name = "btnConfig_4"
btnConfig_4.Font = Enum.Font.SourceSans
btnConfig_4.RichText = true
btnConfig_4.Text = "placeholder text"
btnConfig_4.TextColor3 = Color3.fromRGB(0, 0, 0)
btnConfig_4.TextScaled = true
btnConfig_4.TextSize = 14
btnConfig_4.TextWrapped = true
btnConfig_4.BackgroundColor3 = Color3.fromRGB(106, 220, 116)
btnConfig_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
btnConfig_4.BorderSizePixel = 0
btnConfig_4.Position = UDim2.new(0.0480000004, 0, 0.82571429, 0)
btnConfig_4.Size = UDim2.new(0, 175, 0, 50)
btnConfig_4.Parent = buttonsFolder

local uiCorner3 = Instance.new("UICorner")
uiCorner3.CornerRadius = UDim.new(0, 3)
uiCorner3.Parent = btnConfig_4

local statusFolder = Instance.new("Folder")
statusFolder.Name = "Status"
statusFolder.Parent = configFrame

local configStatus_4 = Instance.new("TextLabel")
configStatus_4.Name = "configStatus_4"
configStatus_4.Font = Enum.Font.SourceSans
configStatus_4.Text = ""
configStatus_4.TextColor3 = Color3.fromRGB(0, 0, 0)
configStatus_4.TextSize = 14
configStatus_4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
configStatus_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
configStatus_4.BorderSizePixel = 0
configStatus_4.Position = UDim2.new(0.474387079, 0, 0.860129893, 0)
configStatus_4.Size = UDim2.new(0, 25, 0, 25)
configStatus_4.Parent = statusFolder

local uiCorner4 = Instance.new("UICorner")
uiCorner4.CornerRadius = UDim.new(1, 0)
uiCorner4.Parent = configStatus_4

local configStatus_3 = Instance.new("TextLabel")
configStatus_3.Name = "configStatus_3"
configStatus_3.Font = Enum.Font.SourceSans
configStatus_3.Text = ""
configStatus_3.TextColor3 = Color3.fromRGB(0, 0, 0)
configStatus_3.TextSize = 14
configStatus_3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
configStatus_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
configStatus_3.BorderSizePixel = 0
configStatus_3.Position = UDim2.new(0.474387079, 0, 0.660129905, 0)
configStatus_3.Size = UDim2.new(0, 25, 0, 25)
configStatus_3.Parent = statusFolder

local uiCorner5 = Instance.new("UICorner")
uiCorner5.CornerRadius = UDim.new(1, 0)
uiCorner5.Parent = configStatus_3

local configStatus_2 = Instance.new("TextLabel")
configStatus_2.Name = "configStatus_2"
configStatus_2.Font = Enum.Font.SourceSans
configStatus_2.Text = ""
configStatus_2.TextColor3 = Color3.fromRGB(0, 0, 0)
configStatus_2.TextSize = 14
configStatus_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
configStatus_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
configStatus_2.BorderSizePixel = 0
configStatus_2.Position = UDim2.new(0.474387079, 0, 0.425844193, 0)
configStatus_2.Size = UDim2.new(0, 25, 0, 25)
configStatus_2.Parent = statusFolder

local uiCorner6 = Instance.new("UICorner")
uiCorner6.CornerRadius = UDim.new(1, 0)
uiCorner6.Parent = configStatus_2

local configStatus_1 = Instance.new("TextLabel")
configStatus_1.Name = "configStatus_1"
configStatus_1.Font = Enum.Font.SourceSans
configStatus_1.Text = ""
configStatus_1.TextColor3 = Color3.fromRGB(0, 0, 0)
configStatus_1.TextSize = 14
configStatus_1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
configStatus_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
configStatus_1.BorderSizePixel = 0
configStatus_1.Position = UDim2.new(0.474387079, 0, 0.208701342, 0)
configStatus_1.Size = UDim2.new(0, 25, 0, 25)
configStatus_1.Parent = statusFolder

local uiCorner7 = Instance.new("UICorner")
uiCorner7.CornerRadius = UDim.new(1, 0)
uiCorner7.Parent = configStatus_1

local btnSettings = Instance.new("ImageButton");
local successSettings, assetSettings = pcall(function() return getcustomasset(fileName_settings) end)
if successSettings then
    btnSettings.Image = assetSettings
end
btnSettings.Image = getcustomasset(fileName_settings)
btnSettings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
btnSettings.BackgroundTransparency = 1
btnSettings.BorderColor3 = Color3.fromRGB(0, 0, 0)
btnSettings.BorderSizePixel = 0
btnSettings.Position = UDim2.new(0.878000021, 0, 0.82571429, 0)
btnSettings.Size = UDim2.new(0, 50, 0, 50)
btnSettings.Name = "btnSettings"
btnSettings.Parent = mainFrame

local btnInfo = Instance.new("ImageButton");
local successInfo, assetInfo = pcall(function() return getcustomasset(fileName_info) end)
if successInfo then
    btnInfo.Image = assetInfo
end
btnInfo.Image = getcustomasset(fileName_info)
btnInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
btnInfo.BackgroundTransparency = 1
btnInfo.BorderColor3 = Color3.fromRGB(0, 0, 0)
btnInfo.BorderSizePixel = 0
btnInfo.Position = UDim2.new(0.878000021, 0, 0.82571429, 0)
btnInfo.Size = UDim2.new(0, 50, 0, 50)
btnInfo.Name = "btnInfo"
btnInfo.Parent = mainFrame

-- services

local UserInputService = game:GetService("UserInputService")
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- teleport scripts

btnTakeMeThere1.MouseButton1Click:Connect(function()
    local success, err = pcall(function()
        TeleportService:Teleport(15919221063, player)
    end)
    
    if not success then
        if getgenv().Notification then
            getgenv().Notification:Notify("error!", "teleporting failed! try again later")
        else
            warn("tp and notifications failed:", err)
        end
    else
        if getgenv().Notification then
            getgenv().Notification:Notify("success", "teleporting...")
        end
    end
end)

btnTakeMeThere2.MouseButton1Click:Connect(function()
    local success, err = pcall(function()
        TeleportService:Teleport(8003084678, player)
    end)
    if not success then
        if getgenv().Notification then
            getgenv().Notification:Notify("error!", "teleporting failed! try again later")
        else
            warn("tp and notifications failed:", err)
        end
    else
        if getgenv().Notification then
            getgenv().Notification:Notify("success", "teleporting...")
        end
    end
end)

-- drag thing for the guis

local function makeDraggable(frame)
    local dragging = false
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end

makeDraggable(mainFrame)
makeDraggable(secondFrame) 
makeDraggable(configFrame)

-- script loader

btnUnlockAll.MouseButton1Click:Connect(function()
    if getgenv().ExecuteGameScript then
        if getgenv().Notification then
            getgenv().Notification:Notify("executing", "running script...")
        end
        local success, err = pcall(function()
            getgenv().ExecuteGameScript()
        end)
        if not success then
            warn("error running script:", err)
            if getgenv().Notification then
                getgenv().Notification:Notify("error!", "the script failed")
            end
        end
    else
        if getgenv().Notification then
            getgenv().Notification:Notify("not supported", "this game is not supported")
        end
    end
end)

-- config scripts

btnCloseConfig.MouseButton1Click:Connect(function()
	configFrame.Visible = false
end)
