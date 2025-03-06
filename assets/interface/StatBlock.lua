local utils = require("src.utils")

local StatBlock = {}
local block = {
    "┌──────────────┐",
    "│ STR:         │",
    "│ DEX:         │",
    "│ CON:         │",
    "└──────────────┘"
}

function StatBlock:build(player)
    local blockWidth = 16
    local stats = {
        str = player:getStrength(),
        dex = player:getDexterity(),
        con = player:getConstitution()
    }

    block[2] = "│ STR: " .. stats.str .. string.rep(" ", blockWidth - 8 - #tostring(stats.str)) .. "│"
    block[3] = "│ DEX: " .. stats.dex .. string.rep(" ", blockWidth - 8 - #tostring(stats.dex)) .. "│"
    block[4] = "│ CON: " .. stats.con .. string.rep(" ", blockWidth - 8 - #tostring(stats.con)) .. "│"

    local returnTable = {}

    for i = 1, #block do
        returnTable[i] = utils:stringToTable(block[i])
    end

    return returnTable 
end

return StatBlock