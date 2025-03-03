-- Tests for the Dice class

-- require assets.Dice*
local DiceD6 = require("assets.dices.DiceD6")
local DiceD8 = require("assets.dices.DiceD8")
local DiceD10 = require("assets.dices.DiceD10")

-- check if the Dice* module was loaded
if DiceD6 == nil then
    error("Failed to load DiceD6 module")
end
if DiceD8 == nil then
    error("Failed to load DiceD8 module")
end
if DiceD10 == nil then
    error("Failed to load DiceD10 module")
end

if package.config:sub(1,1) == "\\" then
    os.execute("cls");
else
    os.execute("clear");
end

-- test the Dice* class
print("Rolling the dice without bonus:")
print(DiceD6:rollDice())  -- Roll the dice without a bonus
print(DiceD8:rollDice())  -- Roll the dice without a bonus
print(DiceD10:rollDice()) -- Roll the dice without a bonus

print("Rolling the dice with a bonus of +5:")
print(DiceD6:rollDice(5))  -- Roll the dice with a bonus of +5
print(DiceD8:rollDice(5))  -- Roll the dice with a bonus of +5
print(DiceD10:rollDice(5)) -- Roll the dice with a bonus of +5

print("Rolling the dice with a bonus of +10:")
print(DiceD6:rollDice(10))  -- Roll the dice with a bonus of +10
print(DiceD8:rollDice(10))  -- Roll the dice with a bonus of +10
print(DiceD10:rollDice(10)) -- Roll the dice with a bonus of +10

print("Rolling the dice with a bonus of -1:")
print(DiceD6:rollDice(-1))  -- Roll the dice with a bonus of -1
print(DiceD8:rollDice(-1))  -- Roll the dice with a bonus of -1
print(DiceD10:rollDice(-1)) -- Roll the dice with a bonus of -1