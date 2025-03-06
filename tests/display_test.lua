-- Tests for the display module

-- require src.display and src.utils
local display = require("src.display")
local utils = require("src.utils")

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

display:customFill("x")

-- test the display module
display:output()
print("Expected: 64x32 display with all x")
print("Display #columns: " .. #display.displayMatrix[1])
print("Display #rows: " .. #display.displayMatrix)
os.execute("sleep 3")
display:clear()

-- To execute the test uncomment the following code

-- display:customFill("@")
-- display:inputToBufferMatrix(exampleMatrix)
-- for y = 32, display.displayHeight do
--     for x = 1, display.displayWidth do
--         display:writeBufferMatrix(x, y)
--         display:output()
--         print("X: " .. x .. " Y: " .. y)
--         os.execute("sleep 0.5")
--         display:clear()
--     end
-- end

-- display:inputToBufferRow(exampleRow)
-- for y = 1, display.displayHeight do
--     display:writeBufferRow(y)
--     display:output()
--     print("Y: " .. y)
--     os.execute("sleep 0.5")
--     display:clear()
-- end

-- display:customFill("_")
-- display:inputToBufferRow(exampleRow)
-- for y = 1, display.displayHeight do
--     display:writeBufferRow(y)
--     display:output()
--     print("Y: " .. y)
--     os.execute("sleep 0.5")
--     display:clear()
-- end

