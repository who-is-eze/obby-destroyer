-- just the gui
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

-- scripts

local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

btnTakeMeThere1.MouseButton1Click:Connect(function()
    local success, err = pcall(function()
        TeleportService:Teleport(targetPlaceId, player)
    end)
    if not success then
      Notification:Notify("error!", "teleporting failed! try again later")
    end
end)

btnTakeMeThere2.MouseButton1Click:Connect(function()
    local success, err = pcall(function()
        TeleportService:Teleport(targetPlaceId, player)
    end)
    if not success then
      Notification:Notify("error!", "teleporting failed! try again later")
    end
end)
