local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
player = game.Players.LocalPlayer
player_gui = player.PlayerGui
WindUI:AddTheme({
  Name = "Ocean",
  Accent = "#154359",
  Outline = "#FFFFFF",
  Text = "#EFEFEF",
  Placeholder = "#A0B0C0",
  Background = "#0A1F29",
  Button = "#23617E",
  Icon = "#A5D8FF",
})
local Window = WindUI:CreateWindow({
    Title = "GrowHub V1.0",
    Icon = "app-window",
    Folder = "GrowHub",
    Size = UDim2.fromOffset(580, 350),
    Transparent = true,
    Theme = "Ocean",
    SideBarWidth = 200,
    -- Background = "", -- rbxassetid only
    -- BackgroundImageTransparency = 0.42,
    HideSearchBar = false,
    ScrollBarEnabled = true,
    User = {
        Enabled = true,
        Anonymous = false,
        Callback = function()
            -- Тут логика
        end,
    },

})

local Tab = Window:Tab({
    Title = "Dialog UI",
    Icon = "message-square-text",
    Locked = false,
})
local section_main = Tab:Section({ 
    Title = "Dialog UI",
    TextSize = 26, -- Default Size
    Icon="message-square-text" -- Иконка дома
})
local honeyshop = Tab:Toggle({
    Title = "Honey Shop UI",
    Desc = "Show Honey Shop",
    Type = "Checkbox",
    Default = false,
    Callback = function(state) 
        if state == true then
            player_gui.HoneyEventShop_UI.Enabled = true
        else
            player_gui.HoneyEventShop_UI.Enabled = false
        end
    end
})
