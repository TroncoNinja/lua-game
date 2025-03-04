-- Test for the weapon modules

-- require the weapon modules
local Sword = require("assets.weapons.Sword")
local GreatSword = require("assets.weapons.GreatSword")
local Axe = require("assets.weapons.Axe")
local GreatAxe = require("assets.weapons.GreatAxe")
local Staff = require("assets.weapons.Staff")
local GreatStaff = require("assets.weapons.GreatStaff")

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

-- test the weapon modules
print("\nThe player attacks with the:")
print(Axe.name)  -- Print the name of the weapon
local result = Axe:rollDamage()
print("Damage: " .. result.dice .. " Value: " .. result.value)  -- Roll the dice for the weapon damage

-- add a bonus to the weapon
Axe.bonus = 3
print("\nThe player attacks with the:")
print(Axe.name)  -- Print the name of the weapon
local result = Axe:rollDamage()
print("Damage: " .. result.dice .. " Value: " .. result.value)  -- Roll the dice for the weapon damage

-- test the weapon modules
print("\nThe player attacks with the:")
print(GreatAxe.name)  -- Print the name of the weapon
local result = GreatAxe:rollDamage()
print("Damage: " .. result.dice .. " Value: " .. result.value)  -- Roll the dice for the weapon damage

-- add a bonus to the weapon
GreatAxe.bonus = 4
print("\nThe player attacks with the:")
print(GreatAxe.name)  -- Print the name of the weapon
local result = GreatAxe:rollDamage()
print("Damage: " .. result.dice .. " Value: " .. result.value)  -- Roll the dice for the weapon damage

-- test the weapon modules
print("\nThe player attacks with the:")
print(Staff.name)  -- Print the name of the weapon
local result = Staff:rollDamage()
print("Damage: " .. result.dice .. " Value: " .. result.value)  -- Roll the dice for the weapon damage

-- add a bonus to the weapon
Staff.bonus = Staff.bonus + 1
print("\nThe player attacks with the:")
print(Staff.name)  -- Print the name of the weapon
local result = Staff:rollDamage()
print("Damage: " .. result.dice .. " Value: " .. result.value)  -- Roll the dice for the weapon damage

-- test the weapon modules
print("\nThe player attacks with the:")
print(GreatStaff.name)  -- Print the name of the weapon
local result = GreatStaff:rollDamage()
print("Damage: " .. result.dice .. " Value: " .. result.value)  -- Roll the dice for the weapon damage

-- add a bonus to the weapon
GreatStaff.bonus = GreatStaff.bonus + 1
print("\nThe player attacks with the:")
print(GreatStaff.name)  -- Print the name of the weapon
local result = GreatStaff:rollDamage()
print("Damage: " .. result.dice .. " Value: " .. result.value)  -- Roll the dice for the weapon damage

