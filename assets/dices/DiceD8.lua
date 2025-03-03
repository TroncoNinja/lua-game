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
    if bonus == nil then
        return self.d8[math.random(1, 8)]
    else
        if bonus < 0 then
            return self.d8[math.random(1, 8)] .. " " .. bonus
        else
            return self.d8[math.random(1, 8)] .. " +" .. bonus
        end
    end
end

return DiceD8