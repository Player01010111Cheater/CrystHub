local gui_names = loadstring(game:HttpGet("https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/detc/names.lua"))()
if not gethui then 
    game.Players.LocalPlayer:Kick("Failed To Get Script, Error Code: 401") 
    return
end

local paths = {gethui(), game.CoreGui, game.Players.LocalPlayer:WaitForChild("PlayerGui")}
local detct_val = 0

local function delfromCoreGui()
    local success, err = pcall(function()
        for _, v in pairs(game.CoreGui:GetChildren()) do
            -- Проверяем, что объект — ScreenGui и имеет имя
            if v and v:IsA("ScreenGui") and v.Name then
                for _, name in pairs(gui_names) do
                    if name and type(name) == "string" then
                        if string.find(v.Name:lower(), name:lower()) then
                            print("Найден объект для удаления: " .. v.Name) -- Для отладки
                            -- Пробуем удалить с обработкой ошибок
                            local destroySuccess, destroyErr = pcall(function()
                                -- Альтернативный способ удаления: сначала отключаем, потом удаляем
                                v.Enabled = false -- Отключаем GUI
                                task.wait(0.05) -- Небольшая задержка
                                v:Destroy()
                                print("Успешно удален: " .. v.Name)
                            end)
                            if not destroySuccess then
                                warn("Ошибка при удалении объекта " .. v.Name .. ": " .. tostring(destroyErr))
                            end
                        end
                    end
                end
            end
        end
    end)
    if not success then
        warn("Ошибка в delfromCoreGui: " .. tostring(err))
    end
end

-- Обработчик ChildAdded с увеличенной задержкой
game.CoreGui.ChildAdded:Connect(function(child)
    print("Обнаружен новый объект: " .. (child.Name or "Без имени")) -- Для отладки
    task.wait(0.5) -- Увеличенная задержка для надежности
    delfromCoreGui()
end)

-- Вызываем сразу для удаления существующих объектов
print("Проверка существующих объектов в CoreGui...")
delfromCoreGui()
