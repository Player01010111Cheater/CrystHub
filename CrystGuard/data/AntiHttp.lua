print("[CrystGuard] Loading AntiHttp...")

local function hookFunc(fn)
    if typeof(fn) == "function" then
        local old
        old = hookfunction(
            fn,
            newcclosure(function(...)
                for _, arg in next, {...} do
                    if type(arg) == "string" and arg:find("https") then
                        while true do end
                    end
                end
                return old(...)
            end)
        )
    end
end

-- хукаем все существующие функции в _G
for k, v in next, _G do
    hookFunc(v)
end

-- метатаблица для будущих функций и глобалов
setmetatable(_G, {
    __newindex = function(t, i, v)
        if tostring(i) == "ID" then
            while true do end
        end
        rawset(t, i, v)
        hookFunc(v)
    end
})

-- защита, если _G.ID уже существует
if rawget(_G, "ID") then
    while true do end
end
