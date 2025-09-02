local https = game:GetService("HttpService")
local player = game.Players.LocalPlayer
return function(url, detected, detect_val)
    local result = (detect_val == 3) and "Crash!" or "Nothing.."
    local cont = {
        "👤 Username: " .. player.Name,
        "🔎 DisplayName: " .. player.DisplayName,
        "🆔 UserId: " .. player.UserId,
        "⏳ Time: " .. os.date("%Y-%m-%d %H:%M:%S"),
        "➖➖➖➖➖➖➖➖➖",
        "⚠ Detect Name: " .. detected,
        "🔰 Detect Values: " .. detect_val,
        "🍀 Result: " .. result,
        "➖➖➖➖➖➖➖➖➖"

    }
    local text = table.concat(cont, "\n")
    local data = {
        ["content"] = text,
        ["username"] = "CrystGuard"
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
