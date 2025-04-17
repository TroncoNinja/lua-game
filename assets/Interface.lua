Interface = {};


local windowSize = 62;  -- size of the writable space in the window
local miniWindowSize = 14;  -- size of the writable space in the mini window
local centralWindowSize = 28;   -- size of the writable space in the central window

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
    "╚".."══════════════════════════════════════════════════════════════"..        "╝\n";

return Interface;