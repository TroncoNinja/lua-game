-- Test for the interface module

-- require interface modules
local StatBlock = require("assets.interface.StatBlock")
local RoomBlock = require("assets.interface.RoomBlock")
local display = require("src.display")
local player = require("src.player")

-- check if the Interface module was loaded
if StatBlock == nil then
    error("Failed to load StatBlock module")
end
if RoomBlock == nil then
    error("Failed to load RoomBlock module")
end

-- create a player, enemy, rooms, messages placeholder

-- create a StatBlock
local block = StatBlock:build(player)

local roomTable = {
    index = 3,
    values = {
        "Room 1",
        "Room 2",
        "Room 3"
    }
}

-- check if the StatBlock was built
display:inputToBufferMatrix(block)
display:writeBufferMatrix(1, 1)
display:output()

os.execute("sleep 3")
display:clear()

player:setStrength(10)
player:setDexterity(9)
player:setConstitution(8)

block = StatBlock:build(player)

display:inputToBufferMatrix(block)
display:writeBufferMatrix(1, 1)
display:output()

block = RoomBlock:build(roomTable)

display:inputToBufferMatrix(block)
display:writeBufferMatrix(1, 1)
display:output()

display:clear()

roomTable.index = 1
block = RoomBlock:build(roomTable)

display:inputToBufferMatrix(block)
display:writeBufferMatrix(1, 1)
display:output()

display:clear()

roomTable.index = 3
block = RoomBlock:build(roomTable)

display:inputToBufferMatrix(block)
display:writeBufferMatrix(1, 1)
display:output()