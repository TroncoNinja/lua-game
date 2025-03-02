-- Tests for the Dice class

-- require assets.DiceD6
local DiceD6 = require("assets.DiceD6")

if DiceD6 == nil then
    error("Failed to load DiceD6 module")
end

-- assign the DiceD6 class to a local variable
local d6 = DiceD6:new()

-- test the DiceD6 class
print("Rolling the dice without bonus:")
print(d6:rollDice())  -- Roll the dice without a bonus

print("Rolling the dice with a bonus of +5:")
print(d6:rollDice(5))  -- Roll the dice with a bonus of +5

print("Rolling the dice with a bonus of +10:")
print(d6:rollDice(10)) -- Roll the dice with a bonus of +10

print("Rolling the dice with a bonus of -1:")
print(d6:rollDice(-1)) -- Roll the dice with a bonus of -1