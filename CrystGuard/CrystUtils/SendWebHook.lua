local https = game:GetService("HttpService")
local player = game.Players.LocalPlayer
return function(url, detected, detect_val)
    local cont = {
        "👤 Username: " .. player.Name,
        "🔎 DisplayName: " .. player.DisplayName,
        "🆔 UserId: " .. player.UserId,
        "➖➖➖➖➖➖➖➖➖",
        "⚠ Detected: " .. detected,
        "🔰 Detect Values: " .. detect_val,

    }
    local text = table.concat(cont, "\n")
    local data = {
        ["content"] = text,
        ["username"] = "CrystGuard-Notification"
    }
    local body = https:JSONEncode(data)
    request({
        Url = url,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = body
    })
end
