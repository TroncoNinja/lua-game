-- Test for the interface module

-- require the interface module
local Interface = require("assets.Interface")

-- check if the Interface module was loaded
if Interface == nil then
    error("Failed to load Interface module")
end

-- create a new instance of the Interface class
local interface = Interface:new()

-- create a player, enemy, rooms, messages placeholder
local player = {
    str = 10,
    dex = 10,
    con = 10,
    weapon = "Sword"
}
local enemy = {
    name = "Goblin",
    hp = 10
}
local noEnemy = {
    name = "",
    hp = ""
}
local rooms = {
    "Castle",
    "Prisons",
    "Dungeon",
    "Catacombs"
}
local message = "You are in a dark room, you can hear the sound of water dripping from the ceiling.";
local message2 = "the goblin rolls 2d6 and gets 7";
local message3 = "the player rolls 2d6 and gets 12";

-- test the Interface class
Interface:clear()  -- Clear the console
print(interface:write(player, enemy, message, rooms, 1))  -- Write the interface to the console
os.execute("sleep 1")  -- Sleep for 1 second
Interface:clear()  -- Clear the console
print(interface:write(player, enemy, message2, rooms, 2))  -- Write the interface to the console
os.execute("sleep 1")  -- Sleep for 1 second
Interface:clear()  -- Clear the console
print(interface:write(player, enemy, message3, rooms, 3))  -- Write the interface to the console
os.execute("sleep 1")  -- Sleep for 1 second
Interface:clear()  -- Clear the console
print(interface:write(player, noEnemy, message, rooms, 4))  -- Write the interface to the console