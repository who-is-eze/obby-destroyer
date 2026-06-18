local Converted = {
	["_notification"] = Instance.new("ScreenGui");
	["_mainFrame"] = Instance.new("Frame");
	["_notificationText"] = Instance.new("TextLabel");
	["_notification1"] = Instance.new("TextLabel");
	["_closeButton"] = Instance.new("TextButton");
}

Converted["_notification"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_notification"].Name = "notification"
Converted["_notification"].Parent = game:GetService("CoreGui")

Converted["_mainFrame"].AnchorPoint = Vector2.new(0.5, 1)
Converted["_mainFrame"].BackgroundColor3 = Color3.fromRGB(152.0000061392784, 162.00000554323196, 255)
Converted["_mainFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_mainFrame"].BorderSizePixel = 0
Converted["_mainFrame"].Position = UDim2.new(0.5, 0, 1, 0)
Converted["_mainFrame"].Size = UDim2.new(0, 400, 0, 100)
Converted["_mainFrame"].Name = "mainFrame"
Converted["_mainFrame"].Parent = Converted["_notification"]

Converted["_notificationText"].Font = Enum.Font.SourceSans
Converted["_notificationText"].Text = "notification placeholder"
Converted["_notificationText"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_notificationText"].TextScaled = true
Converted["_notificationText"].TextSize = 14
Converted["_notificationText"].TextWrapped = true
Converted["_notificationText"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_notificationText"].BackgroundTransparency = 1
Converted["_notificationText"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_notificationText"].BorderSizePixel = 0
Converted["_notificationText"].Position = UDim2.new(0, 0, 0.400000006, 0)
Converted["_notificationText"].Size = UDim2.new(0, 400, 0, 59)
Converted["_notificationText"].Name = "notificationText"
Converted["_notificationText"].Parent = Converted["_mainFrame"]

Converted["_notification1"].Font = Enum.Font.SourceSans
Converted["_notification1"].Text = "game notification"
Converted["_notification1"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_notification1"].TextScaled = true
Converted["_notification1"].TextSize = 14
Converted["_notification1"].TextWrapped = true
Converted["_notification1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_notification1"].BackgroundTransparency = 0.75
Converted["_notification1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_notification1"].BorderSizePixel = 0
Converted["_notification1"].Size = UDim2.new(0, 400, 0, 40)
Converted["_notification1"].Name = "notification"
Converted["_notification1"].Parent = Converted["_mainFrame"]

Converted["_closeButton"].Font = Enum.Font.SourceSans
Converted["_closeButton"].Text = "alr"
Converted["_closeButton"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_closeButton"].TextSize = 35
Converted["_closeButton"].TextWrapped = true
Converted["_closeButton"].BackgroundColor3 = Color3.fromRGB(255, 80.00000283122063, 67.00000360608101)
Converted["_closeButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_closeButton"].BorderSizePixel = 0
Converted["_closeButton"].Position = UDim2.new(0.94749999, 0, -0.189999998, 0)
Converted["_closeButton"].Size = UDim2.new(0, 40, 0, 40)
Converted["_closeButton"].Name = "closeButton"
Converted["_closeButton"].Parent = Converted["_mainFrame"]
