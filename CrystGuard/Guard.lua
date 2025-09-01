print("[CrystGuard] Loading Luau Guard...")
local gui_names = loadstring(game:HttpGet("https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/CrystGuard/data/GuiNames.lua"))()
local config = loadstring(game:HttpGet("https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/CrystGuard/data/CrystConfig.lua"))()
local manager = loadstring(game:HttpGet("https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/CrystGuard/CrystUtils/Manager.lua"))()
local menus = {
    "WindUI", "Rayfield"
}

if not gethui then while true do end end
local paths = {gethui(), game.CoreGui, game.Players.LocalPlayer:WaitForChild("PlayerGui")}
local detct_val = 0
local function del_ui(gui_del)
    gui_del.Enabled = false
    task.wait(0.3)
    if gui_del.Parent == gethui() then gui_del:Remove() gui_del:Destroy() else gui_del:Destroy() end
    detct_val = detct_val + 1
    if detct_val == config.MaxResult then while true do end end
end
local function search_ingui(guis)
    for _, menu in pairs(menus) do
        for _, name in pairs(gui_names) do
            if string.find(guis.Name:lower(), name:lower()) then
                del_ui(guis)
            elseif string.find(guis.Name:lower(), menu:lower()) then
                manager.search_textlabels(menu, gui_names)
            end
        end
    end
end
for _, path in pairs(paths) do
    for _, gui in pairs(path:GetChildren()) do
        search_ingui(gui)
    end
    path.ChildAdded:Connect(function (it)
        search_ingui(it)
        print(it.Name)
    end)
    print(path)
end

