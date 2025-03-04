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
local result = Sword:rollDamage()
print("Damage: " .. result.dice .. " Value: " .. result.value)  -- Roll the dice for the weapon damage

-- add a bonus to the weapon
Sword.bonus = 2
print("\nThe player attacks with the:")
print(Sword.name)  -- Print the name of the weapon
local result = Sword:rollDamage()
print("Damage: " .. result.dice .. " Value: " .. result.value)  -- Roll the dice for the weapon damage

-- test the weapon modules
print("\nThe player attacks with the:")
print(GreatSword.name)  -- Print the name of the weapon
local result = GreatSword:rollDamage()
print("Damage: " .. result.dice .. " Value: " .. result.value)  -- Roll the dice for the weapon damage

-- add a bonus to the weapon
GreatSword.bonus = 1
print("\nThe player attacks with the:")
print(GreatSword.name)  -- Print the name of the weapon
local result = GreatSword:rollDamage()
print("Damage: " .. result.dice .. " Value: " .. result.value)  -- Roll the dice for the weapon damage