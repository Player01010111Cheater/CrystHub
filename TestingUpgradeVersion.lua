local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/src/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "WindUI Library",
    SubTitle = "Version 1.0",  -- Обязательный параметр!
    Size = UDim2.fromOffset(460, 460),
    
    -- Правильные параметры закрытия:
    CloseAction = {
        Confirm = true,  -- Включить подтверждение
        Text = "Закрыть",  -- Текст кнопки
        Description = "Ты уверен что хочешь закрыть меню? Ты не сможешь открыть её снова."  -- Описание
    },
    
    -- Корректные настройки:
    Theme = "Dark",
    Search = true,  -- Включить поиск (аналог HideSearchBar)
    Scroll = true,  -- Включить скролл
    
    User = {
        Enabled = true,
        Anonymous = false,
        Callback = function() 
            print("клик по профилю")
        end
    }
})
