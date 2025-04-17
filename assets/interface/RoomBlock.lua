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
<<<<<<< HEAD
    local blockWidth = 16
    local rooms = {
        roomTable.values[roomTable.index - 1] or "",
        roomTable.values[roomTable.index],
        roomTable.values[roomTable.index + 1] or ""
    }
   
    block[2] = "│ " .. rooms[1] .. string.rep(" ", blockWidth - 3 - #rooms[1]) .. "│"
    block[3] = "│ » " ..rooms[2] .. string.rep(" ", blockWidth - 5 - #rooms[2]) .. "│"
    block[4] = "│ " .. rooms[3] .. string.rep(" ", blockWidth - 3 - #rooms[3]) .. "│"
=======
    local index = roomTable.index
   
    if roomTable.values[index - 1] then
        block[2] = "│ " .. roomTable.values[index - 1] .. string.rep(" ", blockWidth - 3 - #roomTable.values[index - 1]) .. "│"
    else
        block[2] = "│ " .. string.rep(" ", blockWidth - 3) .. "│"
    end
    
    block[3] = "│ » " .. roomTable.values[index] .. string.rep(" ", blockWidth - 5 - #roomTable.values[index]) .. "│"
    
    if roomTable.values[index + 1] then
        block[4] = "│ " .. roomTable.values[index + 1] .. string.rep(" ", blockWidth - 3 - #roomTable.values[index + 1]) .. "│"
    else
        block[4] = "│ " .. string.rep(" ", blockWidth - 3) .. "│"
    end
>>>>>>> 1acaede (refactor interface and test modules: improve RoomBlock build logic and enhance interface tests)

    local returnTable = {}

    for i = 1, #block do
        returnTable[i] = utils:stringToTable(block[i])
    end

    return returnTable
end

return RoomBlock