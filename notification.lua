-- thanks chatgpt for converting this gui in normal shit!
local notificationGui = Instance.new("ScreenGui")
notificationGui.Name = "notification"
notificationGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
notificationGui.Parent = game:GetService("CoreGui")

local mainFrame = Instance.new("Frame")
mainFrame.Name = "mainFrame"
mainFrame.AnchorPoint = Vector2.new(0.5, 1)
mainFrame.BackgroundColor3 = Color3.fromRGB(152, 162, 255)
mainFrame.BorderSizePixel = 0
mainFrame.Position = UDim2.new(0.5, 0, 1, 0)
mainFrame.Size = UDim2.new(0, 400, 0, 100)
mainFrame.Parent = notificationGui

local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "notification"
titleLabel.Font = Enum.Font.SourceSans
titleLabel.Text = "game notification"
titleLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
titleLabel.TextScaled = true
titleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.BackgroundTransparency = 0.75
titleLabel.BorderSizePixel = 0
titleLabel.Size = UDim2.new(1, 0, 0, 40)
titleLabel.Parent = mainFrame

local notificationText = Instance.new("TextLabel")
notificationText.Name = "notificationText"
notificationText.Font = Enum.Font.SourceSans
notificationText.Text = "notification placeholder"
notificationText.TextColor3 = Color3.fromRGB(0, 0, 0)
notificationText.TextScaled = true
notificationText.TextWrapped = true
notificationText.BackgroundTransparency = 1
notificationText.BorderSizePixel = 0
notificationText.Position = UDim2.new(0, 0, 0.4, 0)
notificationText.Size = UDim2.new(1, 0, 0, 59)
notificationText.Parent = mainFrame

local closeButton = Instance.new("TextButton")
closeButton.Name = "closeButton"
closeButton.Font = Enum.Font.SourceSans
closeButton.Text = "alr"
closeButton.TextColor3 = Color3.fromRGB(0, 0, 0)
closeButton.TextSize = 35
closeButton.BackgroundColor3 = Color3.fromRGB(255, 80, 67)
closeButton.BorderSizePixel = 0
closeButton.Position = UDim2.new(0.9475, 0, -0.19, 0)
closeButton.Size = UDim2.new(0, 40, 0, 40)
closeButton.Parent = mainFrame

-- close noti thing
closeButton.MouseButton1Click:Connect(function()
    notificationGui:Destroy()
    print("closing notification")
end)


local TweenService = game:GetService("TweenService")
local finalPosition = mainFrame.Position

mainFrame.Position = finalPosition + UDim2.new(0, 0, 0, 100)
TweenService:Create(mainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = finalPosition}):Play()
