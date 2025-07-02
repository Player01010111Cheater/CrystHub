local Lighting = game:GetService("Lighting")

-- Удаляем старое небо, если есть
if Lighting:FindFirstChild("Sky") then
    Lighting.Sky:Destroy()
end

-- Создаём новое небо
local pinkSky = Instance.new("Sky")
pinkSky.Parent = Lighting

-- Устанавливаем розовые текстуры неба (можно заменить ID)
pinkSky.SkyboxBk = "rbxassetid://2710425166" -- Задний фон
pinkSky.SkyboxDn = "rbxassetid://2710425321" -- Низ
pinkSky.SkyboxFt = "rbxassetid://2710425503" -- Перед
pinkSky.SkyboxLf = "rbxassetid://2710425682" -- Лево
pinkSky.SkyboxRt = "rbxassetid://2710425845" -- Право
pinkSky.SkyboxUp = "rbxassetid://2710426017" -- Верх

-- Отключаем звёзды и планеты
pinkSky.CelestialBodiesShown = false
pinkSky.StarCount = 0

