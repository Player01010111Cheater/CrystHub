local function req(url)
    return loadstring(game:HttpGet(url))()
end

local utils = {
    SafeCall = function(...)
        local f = req("https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/utils/SafeCall.lua")
        utils.SafeCall = f
        return f(...)
    end,

    CustomCFrame = function(...)
        local f = req("https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/utils/CustomCFrame.lua")
        utils.CustomCFrame = f
        return f(...)
    end,
}
