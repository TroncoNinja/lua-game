local utils = require("src.utils")

local RoomBlock = {}
local block = {
    "┌──────────────┐",
    "│              │",
    "│ »            │",
    "│              │",
    "└──────────────┘"
}

local blockWidth = 16

function RoomBlock:build(roomTable)
    local returnTable = {}
    local index = roomTable.index
   
    for i = 1, #block do
        block[i + 1] = "| ".. roomTable.values[index] .. string.rep(" ", blockWidth - 2 - #roomTable.values[index]) .. " |"
        returnTable[i] = utils:stringToTable(block[i])
    end

    return returnTable
end

return RoomBlock