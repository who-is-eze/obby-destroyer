local HttpService = game:GetService("HttpService")
local currentPlaceId = game.PlaceId

local notificationSuccess, notificationContent = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/who-is-eze/obby-destroyer/refs/heads/main/notification.lua")
end)

if notificationSuccess then
    local notiFunc, notiSyntaxErr = loadstring(notificationContent)
    if notiFunc then
        local notiSuccess, notiErr = pcall(notiFunc)
        if not notiSuccess then
            warn("error running notifications script:", notiErr)
        end
    else
        warn("error in notification script:", notiSyntaxErr)
    end
else
    warn("failed to download notification script")
end

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

if matchFileName then
    local gameScriptUrl = "https://raw.githubusercontent.com/who-is-eze/obby-destroyer/refs/heads/main/gameList/" .. matchFileName
    local gameSuccess, gameContent = pcall(function() return game:HttpGet(gameScriptUrl) end)
    
    if gameSuccess then
        local loadedGameFunc, gameSyntax = loadstring(gameContent)
        if loadedGameFunc then
            getgenv().ExecuteGameScript = loadedGameFunc
        else
            warn("error in game script:", gameSyntax)
            getgenv().ExecuteGameScript = nil
        end
    else
        getgenv().ExecuteGameScript = nil
    end
else
    getgenv().ExecuteGameScript = nil
end

local targetUrl = matchFileName 
    and "https://raw.githubusercontent.com/who-is-eze/obby-destroyer/refs/heads/main/main.lua"
    or "https://raw.githubusercontent.com/who-is-eze/obby-destroyer/refs/heads/main/universalTry.lua"

local scriptSuccess, scriptContent = pcall(function()
    return game:HttpGet(targetUrl)
end)

if scriptSuccess then
    local loadedFunc, syntaxErr = loadstring(scriptContent)
    if loadedFunc then
        local execSuccess, execErr = pcall(loadedFunc)
        if not execSuccess then
            warn("error running UI script:", execErr)
        end
    else
        warn("error in gui script:", syntaxErr)
    end
else
    warn("failed to download UI script")
end
