-- Test for the interface module

-- require interface modules
local StatBlock = require("assets.interface.StatBlock")
local display = require("src.display")
local player = require("src.player")

-- check if the Interface module was loaded
if StatBlock == nil then
    error("Failed to load StatBlock module")
end

-- create a player, enemy, rooms, messages placeholder

-- create a StatBlock
local block = StatBlock(player)

-- check if the StatBlock was built
display:inputToBufferMatrix(block)
display:writeBufferMatrix(1, 1)
display:output()