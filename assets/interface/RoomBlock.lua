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
    local blockWidth = 16
    local rooms = {
        roomTable.values[roomTable.index - 1] or "",
        roomTable.values[roomTable.index],
        roomTable.values[roomTable.index + 1] or ""
    }
   
    block[2] = "│ " .. rooms[1] .. string.rep(" ", blockWidth - 3 - #rooms[1]) .. "│"
    block[3] = "│ » " ..rooms[2] .. string.rep(" ", blockWidth - 5 - #rooms[2]) .. "│"
    block[4] = "│ " .. rooms[3] .. string.rep(" ", blockWidth - 3 - #rooms[3]) .. "│"

    local returnTable = {}

    for i = 1, #block do
        returnTable[i] = utils:stringToTable(block[i])
    end

    return returnTable
end

return RoomBlock