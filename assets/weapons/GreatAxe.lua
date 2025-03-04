local DiceD10 = require("assets.dices.DiceD10")

GreatAxe = {}

GreatAxe = {
    name = "Great Axe",
    damage = {DiceD10},
    bonus = 0
}

function GreatAxe:rollDamage()
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

return GreatAxe