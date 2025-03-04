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
local result = DiceD6:rollDice()
print(result.dice, result.value, "\n")  -- Roll the dice without a bonus
local result = DiceD8:rollDice()
print(result.dice, result.value, "\n")  -- Roll the dice without a bonus
local result = DiceD10:rollDice()
print(result.dice, result.value, "\n")  -- Roll the dice without a bonus

print("Rolling the dice with a bonus of +5:")
local result = DiceD6:rollDice(5)
print(result.dice, result.value, "\n")  -- Roll the dice with a bonus of +5
local result = DiceD8:rollDice(5)
print(result.dice, result.value, "\n")  -- Roll the dice with a bonus of +5
local result = DiceD10:rollDice(5)
print(result.dice, result.value, "\n")  -- Roll the dice with a bonus of +5

print("Rolling the dice with a bonus of +10:")
local result = DiceD6:rollDice(10)
print(result.dice, result.value, "\n")  -- Roll the dice with a bonus of +10
local result = DiceD8:rollDice(10)
print(result.dice, result.value, "\n")  -- Roll the dice with a bonus of +10
local result = DiceD10:rollDice(10)
print(result.dice, result.value, "\n")  -- Roll the dice with a bonus of +10

print("Rolling the dice with a bonus of -1:")
local result = DiceD6:rollDice(-1)
print(result.dice, result.value, "\n")  -- Roll the dice with a bonus of -1
local result = DiceD8:rollDice(-1)
print(result.dice, result.value, "\n")  -- Roll the dice with a bonus of -1
local result = DiceD10:rollDice(-1)
print(result.dice, result.value)        -- Roll the dice with a bonus of -1