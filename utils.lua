local crystalmodule = {}

function crystalmodule.SetCFrame(player, part)
    local character = player.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then
        return
    end

    local hrp = character.HumanoidRootPart

    if typeof(part) == "Instance" and part:IsA("Part") then
        hrp.CFrame = part.CFrame
    elseif typeof(part) == "CFrame" then
        hrp.CFrame = part
    else
        warn("Invalid argument: must be a Part or CFrame")
    end
end

return crystalmodule
