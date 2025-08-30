return function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Player01010111Cheater/CrystHub/refs/heads/main/utils/save/det.lua"))()
    local LocalVars = {}
    LocalVars.players = game:GetService("Players")
    LocalVars.player = LocalVars.players.LocalPlayer
    LocalVars.replicated_st = game:GetService("ReplicatedStorage")
    LocalVars.playergui = LocalVars.player.PlayerGui
    return LocalVars
end
