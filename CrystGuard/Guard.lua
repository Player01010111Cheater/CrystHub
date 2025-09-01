print("[CrystGuard] Loading Luau Guard...")
if not gethui then while true do end end
local gui_names = loadstring(game:HttpGet("https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/CrystGuard/data/GuiNames.lua"))()
local config = loadstring(game:HttpGet("https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/CrystGuard/data/CrystConfig.lua"))()
local manager = loadstring(game:HttpGet("https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/CrystGuard/CrystUtils/Manager.lua"))()

--// locals
local paths = {gethui(), game.CoreGui, game.Players.LocalPlayer:WaitForChild("PlayerGui")}
local detct_val = 0

--// functions
local function check_ui(ui)
    for _, name in pairs(gui_names) do
        if string.find(ui.Name:lower(),name:lower()) then
            ui:Destroy()
            detct_val = detct_val + 1
            if detct_val == config.MaxResult then while true do end end
        else
            manager.search_textlabels(ui, gui_names)
        end
    end
end

(function ()
    for _, path in pairs(paths) do
        for _, gui in pairs(path:GetChildren()) do
            check_ui(gui)
        end
        path.ChildAdded:Connect(function (it)
            it.Enabled = false
            task.wait(0.3)
            check_ui(it)
        end)
    end
end)()
