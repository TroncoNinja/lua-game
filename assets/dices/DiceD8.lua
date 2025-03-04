DiceD8 = {}

DiceD8.d8 = {
    [1] = "⚀:1",
    [2] = "⚁:2",
    [3] = "⚂:3",
    [4] = "⚃:4",
    [5] = "⚄:5",
    [6] = "⚅:6",
    [7] = "⚆:7",
    [8] = "⚇:8"
}

function DiceD8:rollDice(bonus)
    local result = {
        value = math.random(1, 8),
        dice = ""
    }
    result.dice = self.d8[result.value]
    
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

return DiceD8