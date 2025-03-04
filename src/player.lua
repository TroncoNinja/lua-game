-- loading utils
local utils = require("src.utils")

local player = {}

player = {
    name = "Player",
    health = 1,
    weapon = nil
}

function player:setName(stringIn)
    if stringIn ~= nil then
        local check = utils:checkPlayerName(stringIn)
        if check == 0 then
            self.name = stringIn
        else
            error(check)
        end
        self.name = stringIn
    else
        io.write("Insert the name of your brave hero: ")
        local name = io.read()
        local check = utils:checkPlayerName(name)
        if check == 0 then
            self.name = name
        else
            print(check .. "\n")
            self:setName()
        end
    end
end

return player