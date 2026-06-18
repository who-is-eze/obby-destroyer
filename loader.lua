local HttpService = game:GetService("HttpService")
local currentPlaceId = game.PlaceId
local loadedScript = nil

local success, apiResponse = pcall(function()
    return game:HttpGet("https://api.github.com/repos/who-is-eze/obby-destroyer/contents/gameList?ref=main")
end)

if not success then return end

local folderContents = HttpService:JSONDecode(apiResponse)
local matchFileName = nil

for _, file in ipairs(folderContents) do
    if file.type == "file" and string.match(file.name, "%.lua$") then
        if string.gsub(file.name, "%.lua$", "") == tostring(currentPlaceId) then
            matchFileName = file.name
            break
        end
    end
end

local targetUrl = matchFileName 
    and "https://raw.githubusercontent.com/who-is-eze/obby-destroyer/refs/heads/main/gameList/" .. matchFileName
    or "https://raw.githubusercontent.com/who-is-eze/obby-destroyer/refs/heads/main/universalTry.lua"

local scriptSuccess, scriptContent = pcall(function()
    return game:HttpGet(targetUrl)
end)

if scriptSuccess then
    loadedScript = loadstring(scriptContent)
end
