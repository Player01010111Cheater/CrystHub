local function optimization_farm()
    local farm_path = workspace.Farm

    for _, v in pairs(farm_path:GetChildren()) do
        for _, i in pairs(v.Important:GetChildren()) do
            -- Считаем количество моделей
            local modelCount = 0
            for _, child in pairs(v.Farm.Important.Plants_Physical:GetChildren()) do
                if child:IsA("Model") then
                    modelCount = modelCount + 1
                end
            end

            -- Если моделей больше 300 и база чужая
            if modelCount > 151 and i.Data.Owner.Value ~= game.Players.LocalPlayer.Name then
                print("Чистим базу: " .. i.Data.Owner.Value)

                -- Удаляем объекты начиная с 101-го
                local children = v.Farm.Important.Plants_Physical:GetChildren()
                for t = 151, #children do
                    children[t]:Destroy()
                end

                print("База почищена.")
            end
        end
    end
end

local function optimization_main()
    local notifcation_path = game.Players.LocalPlayer.PlayerGui.Top_Notification.Frame
    optimization_farm()
end
optimization_main()
