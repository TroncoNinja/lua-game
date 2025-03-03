Interface = {};
Interface.__index = Interface;

local windowSize = 62;  -- size of the writable space in the window
local miniWindowSize = 14;  -- size of the writable space in the mini window
local centralWindowSize = 28;   -- size of the writable space in the central window

function Interface:new()
    local instance = setmetatable({}, Interface);
    return instance;
end

function Interface:write(player, enemy, message, rooms, roomIndex)

    -- creation of the room strings for the interface
    local rm1Text = "";
    local rm3Text = "";
    if roomIndex == 1 then
        rm1Text = string.rep(" ", miniWindowSize);
    else
        rm1Text = " "..rooms[roomIndex - 1];
        rm1Text = rm1Text .. string.rep(" ", miniWindowSize - string.len(rm1Text));
    end
    local rm2Text = " > "..rooms[roomIndex];
    -- print("roomText: "..rm2Text);
    -- print("roomLen:" .. string.len(rm2Text));
    -- os.exit();
    rm2Text = rm2Text .. string.rep(" ", miniWindowSize - string.len(rm2Text));
    if roomIndex == #rooms then
        rm3Text = string.rep(" ", miniWindowSize);
    else
        rm3Text = " "..rooms[roomIndex + 1];
        rm3Text = rm3Text .. string.rep(" ", miniWindowSize - string.len(rm3Text));
    end
    

    -- creation of the player stat strings for the interface
    local strText = " STR: ".. player.str;
    strText = strText .. string.rep(" ", miniWindowSize - string.len(strText));
    local dexText = " DEX: ".. player.dex;
    dexText = dexText .. string.rep(" ", miniWindowSize - string.len(dexText));
    local conText = " HP:  ".. player.con;
    conText = conText .. string.rep(" ", miniWindowSize - string.len(conText));
    local weaponText = " Weapon: ".. player.weapon;
    weaponText = weaponText .. string.rep(" ", windowSize - 2 - string.len(weaponText));

    -- creation of the enemy stat strings for the interface
    local enemyText = " "..enemy.name;
    enemyText = enemyText .. string.rep(" ", centralWindowSize - string.len(enemyText));
    local enemyHPText = " HP: ".. enemy.hp;
    enemyHPText = enemyHPText .. string.rep(" ", centralWindowSize - string.len(enemyHPText));

    -- creation of the ASCII interface
    local returnASCII = 
    "╔".."══════════════════════════════════════════════════════════════"..        "╗\n" ..
    "║".."┌──────────────┐".."┌────────────────────────────┐".."┌──────────────┐".."║\n" ..
    "║".."│"..strText .."│".."│ Stai affrontando:          │".."│"..rm1Text .."│".."║\n" ..
    "║".."│"..dexText .."│".."│"..  enemyText           .."│".."│"..rm2Text .."│".."║\n" ..
    "║".."│"..conText .."│".."│"..  enemyHPText         .."│".."│"..rm3Text .."│".."║\n" ..
    "║".."└──────────────┘".."└────────────────────────────┘".."└──────────────┘".."║\n" ..
    "║".."┌────────────────────────────────────────────────────────────┐"..        "║\n" ..
    "║".."│"..weaponText                                            .."│"..        "║\n" ..
    "║".."└────────────────────────────────────────────────────────────┘"..        "║\n" ..
    "╚".."══════════════════════════════════════════════════════════════"..        "╝\n" ..
    message.."\n";

    return returnASCII;
end

function Interface:clear()
    if package.config:sub(1,1) == "\\" then
        os.execute("cls");
    else
        os.execute("clear");
    end
end

return Interface;