local Lighting = game:GetService("Lighting")

-- Удаляем старое небо, если есть
if Lighting:FindFirstChild("Sky") then
    Lighting.Sky:Destroy()
end

-- Создаём новое небо
local pinkSky = Instance.new("Sky")
pinkSky.Parent = Lighting

-- Устанавливаем розовые текстуры неба (можно заменить ID)
pinkSky.SkyboxBk = "rbxassetid://271042516" -- Задний фон
pinkSky.SkyboxDn = "rbxassetid://271077243" -- Низ
pinkSky.SkyboxFt = "rbxassetid://271042556" -- Перед
pinkSky.SkyboxLf = "rbxassetid://271042310" -- Лево
pinkSky.SkyboxRt = "rbxassetid://271042467" -- Право
pinkSky.SkyboxUp = "rbxassetid://271077958" -- Верх

-- Отключаем звёзды и планеты
pinkSky.CelestialBodiesShown = false
pinkSky.StarCount = 0

