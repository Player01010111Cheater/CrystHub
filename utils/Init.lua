local function req(url)
    return loadstring(game:HttpGet(url))()
end

local urls = {
    SafeCall = "https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/utils/SafeCall.lua",
    CustomCFrame = "https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/utils/CustomCFrame.lua"
}

local utils = {}

for name, url in pairs(urls) do
    utils[name] = function(...)
        local f = req(url)
        utils[name] = f
        return f(...)
    end
end

return utils
