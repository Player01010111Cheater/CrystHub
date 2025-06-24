local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

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
    Title = "Main",
    Icon = "house",
    Locked = false,
})
local section_main = Tab:Section({ 
    Title = "Main",
    TextSize = 34, -- Default Size
    Icon="house" -- Иконка дома
})
Window.OnClose = function()
    -- Вместо простого закрытия показываем меню подтверждения
    local confirmed = ShowConfirmationDialog("Закрыть окно?") -- свою функцию напиши
    if confirmed then
        Window:Destroy()
    else
        -- не закрывать окно
    end
end
