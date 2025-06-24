-- Правильный способ загрузки WindUI
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/src/main.lua"))()

-- Создание окна с корректными параметрами
local Window = WindUI:CreateWindow({
    Title = "WindUI Library",
    SubTitle = "Version 1.0",  -- Добавьте подзаголовок
    Size = UDim2.fromOffset(460, 460),
    Theme = "Dark",
    
    -- Настройки пользователя
    User = {
        Enabled = true,
        Anonymous = false,
        Callback = function() 
            print("User profile clicked")
        end
    },
    
    -- Настройки закрытия
    CloseAction = {
        Confirm = true,  -- Запрашивать подтверждение
        Text = "Закрыть",  -- Текст кнопки
        Description = "Вы уверены, что хотите закрыть окно?"  -- Описание
    },
    
    -- Дополнительные настройки
    Search = true,  -- Показывать поиск
    Scroll = true  -- Включить скролл
})

-- Пример добавления вкладки
local Tab = Window:AddTab({
    Title = "Главная",
    Icon = "rbxassetid://129260712070622"
})

-- Добавление секции
local Section = Tab:AddSection("Основные настройки")
