DiceD10 = {}

DiceD10.d10 = {
    [1] = "⚀:1",
    [2] = "⚁:2",
    [3] = "⚂:3",
    [4] = "⚃:4",
    [5] = "⚄:5",
    [6] = "⚅:6",
    [7] = "⚆:7",
    [8] = "⚇:8",
    [9] = "⚈:9",
    [10] = "⚉:10"
}

function DiceD10:rollDice(bonus)
    if bonus == nil then
        return self.d10[math.random(1, 10)]
    else
        if bonus < 0 then
            return self.d10[math.random(1, 10)] .. " " .. bonus
        else
            return self.d10[math.random(1, 10)] .. " +" .. bonus
        end
    end
end

return DiceD10