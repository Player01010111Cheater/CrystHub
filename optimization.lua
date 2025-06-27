local function optimization_farm()
    local farm_path = workspace.Farm

    for _, v in pairs(farm_path:GetChildren()) do
        local modelCount = 0

        -- Считаем модели во всех Plants_Physical
        for _, i in pairs(v.Important.Plants_Physical:GetChildren()) do
            for _, child in pairs(i:GetChildren()) do
                if child:IsA("Model") then
                    modelCount = modelCount + 1
                end
            end
        end


        -- Если моделей больше 151 и база чужая
        if modelCount > 115 and v.Important.Data.Owner.Value ~= game.Players.LocalPlayer.Name then
            print("Чистим базу: " .. v.Important.Data.Owner.Value)

            -- Удаляем лишние объекты в Plants_Physical
            for _, i in pairs(v.Important.Plants_Physical:GetChildren()) do
                local children = i:GetChildren()
                for t = 1, #children do
                    children[t]:Destroy()
                end
            end

            print("База почищена.")
        end
    end
end

local function optimization_main()
    local notifcation_path = game.Players.LocalPlayer.PlayerGui.Top_Notification.Frame
    optimization_farm()
end

optimization_main()
