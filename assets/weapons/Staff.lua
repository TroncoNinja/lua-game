local DiceD6 = require("assets.dices.DiceD6")

local Staff = {}

Staff = {
    name = "Staff",
    damage = {DiceD6},
    bonus = 1
}

function Staff:rollDamage()
    local result = {
        value = 0,
        dice = ""
    }
    for _, dice in ipairs(self.damage) do
        local roll = dice:rollDice(self.bonus)
        result.value = result.value + roll.value
        result.dice = roll.dice
    end
    return result;
end

return Staff