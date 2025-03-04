local DiceD6 = require("assets.dices.DiceD6")

local d6_1 = DiceD6
local d6_2 = DiceD6

GreatSword = {}

GreatSword = {
    name = "Great Sword",
    damage = {d6_1, d6_2},
    bonus = 0
}

function GreatSword:rollDamage()
    for _, dice in ipairs(self.damage) do
        return dice:rollDice(self.bonus)
    end
end

return GreatSword