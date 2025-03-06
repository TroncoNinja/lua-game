-- Tests for the display module

-- require src.display
local display = require("src.display")

-- check if the display module was loaded
if display == nil then
    error("Failed to load display module")
end

local exampleMatrix = {
    {"x", "x", "x"},
    {"x", "o", "x"},
    {"x", "x", "x"}
}

local exampleRow = "Hello, World!"

-- test the display module

