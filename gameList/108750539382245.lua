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
    task.wait(0.25)
end
print("nice")
