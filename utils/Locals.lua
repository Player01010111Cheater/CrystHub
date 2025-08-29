return function()
    local LocalVars = {}
    LocalVars.players = game:GetService("Players")
    LocalVars.player = LocalVars.players.LocalPlayer
    return LocalVars
end
