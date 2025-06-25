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
    HideSearchBar = true,
    ScrollBarEnabled = false,
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
local summerevent = Window:Tab({
    Title = "Summer Event",
    Icon = "sun",
    Locked = false
})
local shop = Window:Tab({
    Title = "AutoBuy",
    Icon = "shopping-cart",
    Locked = false
})
local section_shop = shop:Section({
    Title = "AutoBuy",
    TextSize = 26,
    Icon = "shopping-cart"
})
local sectionevent = summerevent:Section({
    Title = "Summer Event",
    TextSize = 26,
    Icon = "sun"
})
local section_main = Tab:Section({ 
    Title = "Dialog UI",
    TextSize = 26, -- Default Size
    Icon="message-square-text" -- Иконка дома
})
local seedshop = Tab:Toggle({
    Title="Seed Shop UI",
    Desc="Show Seed Shop",
    Type="Toggle",
    Default=false,
    Callback = function (state)
        if state == true then
            player_gui.Seed_Shop.Enabled = true
        else
            player_gui.Seed_Shop.Enabled = false
        end
    end
})
local gearshop = Tab:Toggle({
    Title = "Gear Shop UI",
    Desc = "Show Gear Shop",
    Type = "Toggle",
    Default = false,
    Callback = function (state)
        if state == true then
            player_gui.Gear_Shop.Enabled = true
        else
            player_gui.Gear_Shop.Enabled = false
        end
    end
})
local honeyshop = Tab:Toggle({
    Title = "Honey Shop UI",
    Desc = "Show Honey Shop",
    Type = "Toggle",
    Default = false,
    Callback = function(state) 
        if state == true then
            player_gui.HoneyEventShop_UI.Enabled = true
        else
            player_gui.HoneyEventShop_UI.Enabled = false
        end
    end
})
local cosmeticshop = Tab:Toggle({
    Title = "Cosmetic Shop UI",
    Desc = "Show Cosmetic Shop",
    Type = "Toggle",
    Default = false,
    Callback = function (state)
        if state == true then
            player_gui.CosmeticShop_UI.Enabled = true
        else
            player_gui.CosmeticShop_UI.Enabled = false
        end
    end
})
local dailyquest = Tab:Toggle({
    Title = "Daily Quest UI",
    Desc = "Open Daily Quests",
    Type = "Toggle",
    Default = false,
    Callback = function (state)
        if state == true then
            player_gui.DailyQuests_UI.Enabled = true
        else
            player_gui.DailyQuests_UI.Enabled = false
        end
    end
})

local isAutoCollecting = false

local autocollectsummerfruits = summerevent:Toggle({
    Title = "Automatically collects all summer fruits. (dont work)",
    Type = "Toggle",
    Default = false,
    Callback = function(state)
        isAutoCollecting = state

        if isAutoCollecting then
            task.spawn(function()
                while isAutoCollecting do
                    for _, v in pairs(workspace.Farm:GetChildren()) do
                        if v:FindFirstChild("Important") and v.Important:FindFirstChild("Data") and v.Important.Data:FindFirstChild("Owner") then
                            if v.Important.Data.Owner.Value == player.Name then
                                for _, t in pairs(v.Important:FindFirstChild("Plants_Physical"):GetChildren()) do
                                    local validNames = {
                                        ['Apple'] = true,
                                        ['Tomato'] = true,
                                        ['Pineapple'] = true,
                                        ['Prickly Pear'] = true,
                                        ['Sugar Apple'] = true,
                                        ['Banana'] = true,
                                        ['Kiwi'] = true
                                    }

                                    if validNames[t.Name] then
                                        print("Собираем: " .. t.Name)
                                        for _, i in pairs(t.Fruits:GetDescendants()) do
                                            if i.ClassName == "ProximityPrompt" then
                                                -- Телепортнуться ближе
                                                i.Parent.CanCollide = false
                                                i.Parent.Transparency = 1
                                                i.Parent.RequiresLineOfSight = false
                                                i.Parent.CFrame = player.Character.HumanoidRootPart.CFrame
                                                i:InputHoldBegin()
                                                i:InputHoldEnd()
                                                wait(0.3)
                                            end
                                        end
                                    end
                                    -- Проверка выхода из цикла, если пользователь выключил toggle
                                    if not isAutoCollecting then return end
                                end
                            end
                        end
                    end

                    task.wait(2) -- подождать перед повторной проверкой
                end
            end)
        else
            print("Автосбор выключен")
        end
    end
})

local putallsummer = summerevent:Button({
    Title = "Put all summer fruit",
    Desc = "Stacks all summer fruits together.",
    Locked = false,
    Callback = function()
        game:GetService("ReplicatedStorage").GameEvents.SummerHarvestRemoteEvent:FireServer("SumbitAllPlants")
    end
})
local autobuy_event = shop:Section({
    Title = "Event Shop",
    Desc = "Event Shop Autobuy",
    TextSize = 26
})
local honeydropdonw = shop:Dropdown({
    Title = "Honey Shop",
    Values = { "Flower Seed Pack", "Category B", "Category C" },
    Value = { "Flower Seed Pack" },
    Multi = true,
    AllowNone = true,
    Callback = function(option) 
        print("Categories selected: " .. game:GetService("HttpService"):JSONEncode(option))
    end
})
local normal_autobuy = shop:Section({
    Title = "Normal Shop",
    Desc = "Normal Shop Autobuy",
    TextSize = 26
})
local dropdown_seed = shop:Dropdown({
    Title = "Seed Shop",
    Values = { "Carrot", "Strawberry", "Blueberry", "Tomato", "Cauliflower", "Watermelon", "Green Apple", "Avocado", "Banana", "Pineapple", "Kiwi", "Prickly Pear", "Loquat", "Feijoa", "Sugar Apple" },
    Value = { "Carrot" },
    Multi = true,
    AllowNone = true,
    Callback = function(option)
        print(option)
        print("Category selected: " .. game:GetService("HttpService"):JSONEncode(option))
    end
})


