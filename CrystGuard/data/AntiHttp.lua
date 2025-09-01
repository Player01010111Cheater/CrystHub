print("[CrystGuard] Loading AntiHttp..")
local functions = {
    rconsoleprint,
    setclipboard,
    rconsoleerr,
    rconsolewarn,
    warn,
    error
}

if not hookfunction or not newcclosure then
    error("hookfunction or newcclosure not supported")
end

local function hookFunction(func)
    local old = hookfunction(func, newcclosure(function(...)
        for _, arg in ipairs({...}) do
            if tostring(arg):find("http") or tostring(arg):find("%.%w+$") then
                while true do end
            end
        end
        return old(...)
    end))
end

for _, func in pairs(functions) do
    if func then
        hookFunction(func)
    end
end

setmetatable(functions, {
    __newindex = function(t, i, v)
        if type(v) == "function" then
            hookFunction(v)
        end
        rawset(t, i, v)
    end
})

if _G.ID then
    while true do end
end

setmetatable(_G, {
    __newindex = function(t, i, v)
        if tostring(i) == "ID" then
            while true do end
        end
        rawset(t, i, v)
    end
})
