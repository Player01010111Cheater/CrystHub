local gui_names = loadstring(game:HttpGet("https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/detc/names.lua"))()
if not gethui then game.Players.LocalPlayer:Kick("Failed To Get Script, Error Code: 401") end

local paths = {gethui(), game.CoreGui, game.Players.LocalPlayer:WaitForChild("PlayerGui")}
local detct_val = 0




game.CoreGui.ChildAdded:Connect(function (item)
    if string.find(item.Name, "HttpSpy") then
        item:Remove()
        item:Destroy()
    end
end)

