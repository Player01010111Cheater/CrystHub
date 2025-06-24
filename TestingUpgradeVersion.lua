local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local Window = WindUI:CreateWindow({
    Title = "WindUI Library",
    Icon = "rbxassetid://129260712070622",
    IconThemed = true,
    Folder = "GrowHub",
    Size = UDim2.fromOffset(460, 460),
    Transparent = true,
    Theme = "Dark",
    User = {
        Enabled = true, -- <- or false
        Callback = function() print("clicked") end, -- <- optional
        Anonymous = false -- <- or true
    },
    SideBarWidth = 200,
    -- HideSearchBar = true, -- hides searchbar
    ScrollBarEnabled = true, -- enables scrollbar
    -- Background = "rbxassetid://13511292247", -- rbxassetid only
    CloseButton = {
        Icon = "rbxassetid://11223344",
        Text = "Закрыть окно",
        Desc="Ты уверен что хочешь закрыть меню? Ты не сможешь открыть её снова."
    }

})
local MainTab = Window:AddTab({
    Title="Главная",
    Icon="house",
})  -- Создаём вкладку
local FarmingTab = Window:AddTab("Фарминг")  -- Ещё одна вкладка

