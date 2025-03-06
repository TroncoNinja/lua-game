local player = {}

local name = "Player"
local strength = 1
local dexterity = 1
local constitution = 1
local weapon = {}

-- getters
function player:getName()
    return name
end

function player:getStrength()
    return strength
end

function player:getDexterity()
    return dexterity
end

function player:getConstitution()
    return constitution
end

function player:getWeapon()
    return weapon
end
-- end getters
-- setters
function player:setName(value)
    if type(value) == "string" then
        name = value
    else
        error("Name must be a string")
    end
end

function player:setStrength(value)
    if type(value) == "number" then
        strength = value
    else
        error("Strength must be a number")
    end
end

function player:setDexterity(value)
    if type(value) == "number" then
        dexterity = value
    else
        error("Dexterity must be a number")
    end
end

function player:setConstitution(value)
    if type(value) == "number" then
        constitution = value
    else
        error("Constitution must be a number")
    end
end

function player:setWeapon(value)
    if type(value) == "table" then
        weapon = value
    else
        error("Weapon must be a table")
    end
end
-- end setters

return player