local character = game.Players.idkidkidk999010.Character -- или игрок: game.Players.Игрок.Character
local highlight = Instance.new("Highlight")
highlight.Parent = character

-- Настройки:
highlight.FillColor = Color3.fromRGB(255, 100, 100)  -- Цвет "заполнения" (свечение внутри)
highlight.FillTransparency = 0.7                     -- Прозрачность (0 - видно, 1 - невидно)
highlight.OutlineColor = Color3.fromRGB(255, 255, 0)  -- Цвет контура
highlight.OutlineTransparency = 0.3                   -- Прозрачность контура
