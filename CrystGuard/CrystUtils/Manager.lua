local function req(url)
    return loadstring(game:HttpGet(url))()
end

local cryst_items = {
    ApplySystemInject = "",
    SendWebHook = ""
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

