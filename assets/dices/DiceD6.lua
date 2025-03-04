DiceD6 = {}

DiceD6.d6 = {
    [1] = "⚀:1",
    [2] = "⚁:2",
    [3] = "⚂:3",
    [4] = "⚃:4",
    [5] = "⚄:5",
    [6] = "⚅:6"
}

function DiceD6:rollDice(bonus)
    local result = {
        value = math.random(1, 6),
        dice = ""
    }
    result.dice = self.d6[result.value]

    if bonus == nil then
        return result
    else
        if bonus < 0 then
            result.value = result.value + bonus
            result.dice = result.dice .. " -" .. math.abs(bonus)
            return result
        else
            result.value = result.value + bonus
            result.dice = result.dice .. " +" .. bonus
            return result
        end
    end
end

return DiceD6