local DiceD8 = require("assets.dices.DiceD8")

local GreatStaff = {}

GreatStaff = {
    name = "Great Staff",
    damage = {DiceD8},
    bonus = 2
}

function GreatStaff:rollDamage()
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

return GreatStaff