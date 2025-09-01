local function req(url)
    return loadstring(game:HttpGet(url))()
end

local cryst_items = {
    ApplySystemInject = "https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/CrystGuard/CrystUtils/ApplySystemInject.lua",
    SendWebHook = "https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/CrystGuard/CrystUtils/SendWebHook.lua",
    search_textlabels = "https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/CrystGuard/finder/FindInTextLabels.lua"
}

local manager = {}

for name, item in pairs(cryst_items) do
    if type(item) == "string" and item:match("^https?://") then
        manager[name] = function(...)
            local f = req(item)
            manager[name] = f
            return f(...)
        end
    else
        manager[name] = item
    end
end

return manager

