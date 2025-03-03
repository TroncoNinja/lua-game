local DiceD6 = require("assets.dices.DiceD6")

Sword = {}
Sword.__index = Sword

Sword = {
    name = "Sword",
    damage = DiceD6:new(),
    bonus = 0
}

return Sword