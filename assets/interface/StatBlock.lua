local StatBlock = {
    "┌──────────────┐",
    "│ STR:         │",
    "│ DEX:         │",
    "│ CON:         │",
    "└──────────────┘"
    
}


function StatBlock:build(player)
    local stats = {
        str = player:getStrength(),
        dex = player:getDexterity(),
        con = player:getConstitution()
    }
    for x = 1, #stats do
        StatBlock[x + 1] = StatBlock[x + 1]:gsub(" ", stats[x])
    end
    
end

return 