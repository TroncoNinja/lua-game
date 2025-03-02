DiceD6 = {}
DiceD6.__index = DiceD6

function DiceD6:new()
    local instance = setmetatable({}, DiceD6)
    instance.d6 = {
        [1] = "⚀:1",
        [2] = "⚁:2",
        [3] = "⚂:3",
        [4] = "⚃:4",
        [5] = "⚄:5",
        [6] = "⚅:6"
    }
    return instance
end

function DiceD6:rollDice(bonus)
    if bonus == nil then
        return self.d6[math.random(1, 6)]
    else
        if bonus < 0 then
            return self.d6[math.random(1, 6)] .. " " .. bonus
        else
            return self.d6[math.random(1, 6)] .. " +" .. bonus
        end
    end
end

return DiceD6