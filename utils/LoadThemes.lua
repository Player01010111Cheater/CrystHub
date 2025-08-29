local HttpService = game:GetService("HttpService")

return function(WindUI)
    local succes, responce = pcall(request, {
        Url = "https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/utils/cloud_themes.json",
        Method = "GET",
        Headers = {
            ["User-Agent"] = "CrystalClient"
        }
    })
    if succes then
        local success_decode, json_data = pcall(function()
            return HttpService:JSONDecode(responce.Body)
        end)
        if success_decode then
            for name, data in pairs(json_data) do
                WindUI:AddTheme{
                    Name = name,
                    Accent = data.Accent,
                    Dialog = data.Dialog,
                    Outline = data.Outline,
                    Text = data.Text,
                    Placeholder = data.Placeholder,
                    Background = data.Background,
                    Button = data.Button,
                    Icon = data.Icon
                }
            end
        else
            warn("Failed to decode JSON")
        end
    else
        warn("Failed to fetch themes")
    end
end
