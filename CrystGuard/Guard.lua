print("[CrystGuard] Loading Luau Guard...")
local gui_names = loadstring(game:HttpGet("https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/CrystGuard/data/GuiNames.lua"))()
local config = loadstring(game:HttpGet("https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/CrystGuard/data/CrystConfig.lua"))()
local manager = loadstring(game:HttpGet("https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/CrystGuard/CrystUtils/Manager.lua"))()

if not gethui then while true do end end
local paths = {gethui(), game.CoreGui, game.Players.LocalPlayer:WaitForChild("PlayerGui")}
local detct_val = 0

(function ()
    for _, path in pairs(paths) do
        for _, gui in pairs(path:GetChildren()) do
            for _, name in pairs(gui_names) do
                if string.find(gui.Name:lower(), name:lower()) and gui:IsA("ScreenGui") then
                    gui.Enabled = false
                    task.wait(0.05)
                    gui:Destroy()
                    detct_val = detct_val + 1
                    if detct_val == config.MaxResult then while true do end end
                end
            end
        end
        path.ChildAdded:Connect(function (it)
            for _, na in pairs(gui_names) do
                if string.find(it.Name:lower(), na:lower()) and it:IsA("ScreenGui") then
                    it.Enabled = false
                    task.wait(0.3)
                    if it.Parent == gethui() then it:Destroy() it:Remove() else it:Destroy() end
                    detct_val = detct_val + 1
                    if detct_val == config.MaxResult then while true do end end
                end
            end
        end)
    end
end)()
