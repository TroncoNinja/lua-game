-- Test for the weapon modules

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

-- test the weapon modules
print("The player attacks with the:")
print(Sword.name)  -- Print the name of the weapon
print("Damage: " .. Sword:rollDamage())  -- Roll the dice for the weapon damage

-- test the weapon modules
print("The player attacks with the:")
print(GreatSword.name)  -- Print the name of the weapon
print("Damage: " .. GreatSword:rollDamage())  -- Roll the dice for the weapon damage