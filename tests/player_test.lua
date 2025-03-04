-- require the player module
local player = require("src.player")

-- require the weapon modules
local Sword = require("assets.weapons.Sword")
local GreatSword = require("assets.weapons.GreatSword")

-- check if the weapon modules were loaded
if Sword == nil then
    error("Failed to load Sword module")
end
if GreatSword == nil then
    error("Failed to load GreatSword module")
end

-- check if the player module was loaded
if player == nil then
    error("Failed to load player module")
end

-- Test the player module
print("setting Player name by code")
player:setName("Giocatore")
print("Player name: " .. player.name)

print("\nsetting Player name by input")
player:setName()
print("Player name: " .. player.name)
