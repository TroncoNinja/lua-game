local DiceD6 = require("assets.dices.DiceD6")

GreatSword = {}

GreatSword = {
    name = "Great Sword",
    damage = {DiceD6, DiceD6},
    bonus = 0
}

function GreatSword:rollDamage()
    local result = {
        value = 0,
        dice = ""
    }
    for _, dice in ipairs(self.damage) do
        local roll = dice:rollDice(self.bonus)
        result.value = result.value + roll.value
        result.dice = result.dice .. roll.dice .. " | "
    end
    result.dice = string.sub(result.dice, 1, -4)
    return result;
end

return GreatSword