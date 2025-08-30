local gui_names = loadstring(game:HttpGet("https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/detc/names.lua"))()
if not gethui then game.Players.LocalPlayer:Kick("Failed To Get Script, Error Code: 401") end

local paths = {gethui(), game.CoreGui, game.Players.LocalPlayer:WaitForChild("PlayerGui")}
local detct_val = 0

local function delfromCoreGui()
    for _, v in pairs(game.CoreGui:GetChildren()) do
        for _, name in pairs(gui_names) do
            if string.find(v.Name, name) then
                v:Destroy()
            end
        end
    end    
end


game.CoreGui.ChildAdded:Connect(function ()
    delfromCoreGui()
end)



