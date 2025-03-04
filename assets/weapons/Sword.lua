local DiceD6 = require("assets.dices.DiceD6")

Sword = {}

Sword = {
    name = "Sword",
    damage = {DiceD6},
    bonus = 0
}

function Sword:rollDamage()
    for _, dice in ipairs(self.damage) do
        return dice:rollDice(self.bonus)
    end
end

return Sword