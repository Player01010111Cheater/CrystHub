local gui_names = loadstring(game:HttpGet("https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/detc/names.lua"))()
if not gethui then game.Players.LocalPlayer:Kick("Failed To Get Script, Error Code: 401") end

local paths = {gethui(), game.CoreGui, game.Players.LocalPlayer:WaitForChild("PlayerGui")}
local detct_val = 0

local function del(gui)
    for _, name in pairs(gui_names) do
        if string.find(gui.Name, name) then
            gui.Parent = nil
            gui:Destroy()
            detct_val = detct_val + 1
            if detct_val == 3 then game.Players.LocalPlayer:Kick("Failed To Load Script, Error Code: 301") end
        end
    end    
end
for _, path in pairs(paths) do
    for _, gui in pairs(path:GetChildren()) do
        del(gui)
    end
    path.ChildAdded:Connect(function (item)
        print(item)
        del(item)
    end)
end

