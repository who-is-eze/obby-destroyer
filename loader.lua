local HttpService = game:GetService("HttpService")
local currentPlaceId = game.PlaceId

local success, apiResponse = pcall(function()
    return game:HttpGet("https://api.github.com/repos/who-is-eze/obby-destroyer/contents/gameList?ref=main")
end)

if not success then 
    warn("prob github api down, failed to fetch")
    return 
end

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
    and "https://raw.githubusercontent.com/who-is-eze/obby-destroyer/refs/heads/main/main.lua"
    or "https://raw.githubusercontent.com/who-is-eze/obby-destroyer/refs/heads/main/universalTry.lua"

local scriptSuccess, scriptContent = pcall(function()
    return game:HttpGet(targetUrl)
end)

if scriptSuccess then
    local execSuccess, execErr = pcall(function()
        loadstring(scriptContent)()
    end)
    if not execSuccess then
        warn("error on main script:", execErr)
    end
else
    warn("failed to download")
end

local notificationSuccess, notificationContent = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/who-is-eze/obby-destroyer/refs/heads/main/notification.lua")
end)

if notificationSuccess then
    task.spawn(function()
        local notiSuccess, notiErr = pcall(function()
            loadstring(notificationContent)()
        end)
        if not notiSuccess then
            warn("error loading notifications script:", notiErr)
        end
    end)
end
