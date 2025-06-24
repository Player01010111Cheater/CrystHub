local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()


local Window = WindUI:CreateWindow({
    Title = "UI Title",
    Icon = "door-open",
    Folder = "GrowHub",
    Size = UDim2.fromOffset(580, 380),
    Transparent = true,
    Theme = "Dark",
    SideBarWidth = 200,
    -- Background = "", -- rbxassetid only
    -- BackgroundImageTransparency = 0.42,
    HideSearchBar = false,
    ScrollBarEnabled = true,
    User = {
        Enabled = true,
        Anonymous = false,
        Callback = function()
            print("clicked")
        end,
    },

})

local Tab = Window:Tab({
    Title = "Info",
    Icon = "info",
    Locked = false,
})
local section_main = Tab:Section({ 
    Title = "Info",
    TextSize = 34, -- Default Size
    Icon="info"
})
