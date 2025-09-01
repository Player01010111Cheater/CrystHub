print("[CrystGuard] Loading AntiHttp...")

local functions = {
    rconsoleprint,
    print,
    setclipboard,
    rconsoleerr,
    rconsolewarn,
    warn,
    error
}

for _, fn in next, functions do
    if typeof(fn) == "function" then
        local old
        old = hookfunction(
            fn,
            newcclosure(function(...)
                local args = {...}
                for _, arg in next, args do
                    if type(arg) == "string" and arg:find("https") then
                        while true do end
                    end
                end
                return old(...)
            end)
        )
    end
end

if rawget(_G, "ID") then
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
