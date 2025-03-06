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
print("setting Player name to 'Giocatore'")
player:setName("Giocatore")
print("Player name: " .. player:getName())

print("setting Player strength to 10")
player:setStrength(10)
print("Player strength: " .. player:getStrength())

print("setting Player dexterity to 10")
player:setDexterity(10)
print("Player dexterity: " .. player:getDexterity())

print("setting Player constitution to 10")
player:setConstitution(10)
print("Player constitution: " .. player:getConstitution())

print("setting Player weapon to Sword")
player:setWeapon(Sword)
print("Player weapon: " .. player:getWeapon().name)
