local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local stagesFolder = Workspace:FindFirstChild("Stages")
if not stagesFolder then return end

local stagesList = {}

for _, stageModel in ipairs(stagesFolder:GetChildren()) do
    local stageNumber = tonumber(stageModel.Name)
    if stageNumber and stageModel:IsA("Model") then
        table.insert(stagesList, {model = stageModel, number = stageNumber})
    end
end

table.sort(stagesList, function(a, b)
    return a.number < b.number
end)

for _, stageData in ipairs(stagesList) do
    local stageModel = stageData.model
    
    if character and humanoidRootPart and humanoidRootPart.Parent then
        local stageCFrame = stageModel:GetPivot()
        humanoidRootPart.CFrame = stageCFrame + Vector3.new(0, 3, 0)
    else
        break
    end
    
    task.wait(0.25)
end
