-- Test for the weapon modules

-- require the weapon modules
local Sword = require("assets.weapons.Sword")

-- check if the weapon modules were loaded
if Sword == nil then
    error("Failed to load Sword module")
end

-- test the weapon modules
print("The player attacks with the:")
print(Sword.name)  -- Print the name of the weapon
print(Sword.damage:rollDice(Sword.bonus))  -- Roll the dice for the weapon damage
print(Sword.damage:rollDice(5)) -- Roll the dice for the weapon damage with a bonus of +5

-- change the values of the weapon
Sword.name = "Great Sword"
Sword.bonus = 10

-- test the weapon modules
print("The player attacks with the:")
print(Sword.name)  -- Print the name of the weapon
print(Sword.damage:rollDice(Sword.bonus))  -- Roll the dice for the weapon damage
print(Sword.damage:rollDice(5)) -- Roll the dice for the weapon damage with a bonus of +5