local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local checkpointsFolder = Workspace:FindFirstChild("Checkpoints")

if not checkpointsFolder then
    warn("patched ;(")
    return
end

local toggleFrame = Instance.new("Frame")
toggleFrame.Name = "toggleFrame"
toggleFrame.BackgroundColor3 = Color3.fromRGB(152, 162, 255)
toggleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
toggleFrame.BorderSizePixel = 0
toggleFrame.Position = UDim2.new(0.428815663, 0, 0.748051941, 0)
toggleFrame.Size = UDim2.new(0, 225, 0, 75)
toggleFrame.Parent = obbyDestroyer3000script

local title = Instance.new("TextLabel")
title.Name = "title"
title.Font = Enum.Font.SourceSans
title.Text = "toggle"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextScaled = true
title.TextSize = 14
title.TextWrapped = true
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 0.75
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Size = UDim2.new(0, 225, 0, 25)
title.Parent = toggleFrame

local textLabel = Instance.new("TextLabel")
textLabel.Name = "text"
textLabel.Font = Enum.Font.SourceSans
textLabel.Text = "press 'G' or this button to stop this script"
textLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
textLabel.TextScaled = true
textLabel.TextSize = 14
textLabel.TextWrapped = true
textLabel.TextXAlignment = Enum.TextXAlignment.Left
textLabel.TextYAlignment = Enum.TextYAlignment.Top
textLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textLabel.BackgroundTransparency = 1
textLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
textLabel.BorderSizePixel = 0
textLabel.Position = UDim2.new(0, 0, 0.333333343, 0)
textLabel.Size = UDim2.new(0, 100, 0, 50)
textLabel.Parent = toggleFrame

local stopButton = Instance.new("TextButton")
stopButton.Name = "stopButton"
stopButton.Font = Enum.Font.SourceSans
stopButton.Text = "stop"
stopButton.TextColor3 = Color3.fromRGB(0, 0, 0)
stopButton.TextScaled = true
stopButton.TextSize = 14
stopButton.TextWrapped = true
stopButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
stopButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
stopButton.BorderSizePixel = 0
stopButton.Position = UDim2.new(0.444444448, 0, 0.400000006, 0)
stopButton.Size = UDim2.new(0, 100, 0, 40)
stopButton.Parent = toggleFrame

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 3)
uiCorner.Parent = stopButton

local UserInputService = game:GetService("UserInputService")
local inputConnection

local function stopScript()
    if toggleFrame then
        toggleFrame:Destroy()
    end
    if inputConnection then
        inputConnection:Disconnect()
    end
    if getgenv().Notification then
        getgenv().Notification:Notify("stopped", "script has been terminated")
    end
end

inputConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.G then
        stopScript()
    end
end)

local checkpointsList = {}
for _, checkpoint in ipairs(checkpointsFolder:GetChildren()) do
    local checkpointNumber = tonumber(checkpoint.Name)
    if checkpointNumber and checkpoint:IsA("BasePart") then
        table.insert(checkpointsList, {part = checkpoint, number = checkpointNumber})
    end
end

table.sort(checkpointsList, function(a, b)
    return a.number < b.number
end)

for _, checkpointData in ipairs(checkpointsList) do
    local checkpoint = checkpointData.part
    if character and humanoidRootPart and humanoidRootPart.Parent then
        humanoidRootPart.CFrame = checkpoint.CFrame + Vector3.new(0, 3, 0)
    else
        warn("no character (???)")
        break
    end
-- change this wait to whatever you want
-- if the game has an anticheat leave this alone
    task.wait(0.15)
end
print("nice")

stopButton.MouseButton1Click:Connect(stopScript)
