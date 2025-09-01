return function(url, text)
    local https = game:GetService("HttpService")
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
