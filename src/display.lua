local utils = require("src.utils")

local display = {}

local displayWidth = 64
local displayHeight = 32

local fillChar = " "
local displayMatrix = utils:buildMatrix(displayWidth, displayHeight)
local displayBufferMatrix = {}
local displayBufferRow = {}

-- utils functions
function display:clearBufferRow()
    displayBufferRow = {}
end

function display:clearBufferMatrix()
    displayBufferMatrix = {}
end

function display:clear()
    for i = 1, displayHeight do
        for j = 1, displayWidth do
            displayMatrix[i][j] = fillChar
        end
    end
    if package.config:sub(1,1) == "\\" then
        os.execute("cls");
    else
        os.execute("clear");
    end  
end
-- end utils functions
-- setters
function display:setHeight(value)
    if type(value) == "number" then
        displayHeight = value
    else
        error("Invalid input, expected number")
    end
end

function display:setWidth(value)
    if type(value) == "number" then
        displayWidth = value
    else
        error("Invalid input, expected number")
    end
end
-- end setters
-- getters
function display:getHeight()
    return displayHeight
end

function display:getWidth()
    return displayWidth
end

function display:getMatrix()
    return displayMatrix
end
-- end getters

function display:customFill(char)
    self:clearBufferRow()
    self:clearBufferMatrix()
    fillChar = char
    displayMatrix = utils:buildMatrix(displayWidth, displayHeight, fillChar)
end

function display:inputToBufferMatrix(inputMatrix)
    displayBufferMatrix = inputMatrix
end

function display:inputToBufferRow(inputRow)
    for i = 1, displayWidth do
        if i <= #inputRow then
            displayBufferRow[i] = inputRow:sub(i, i)
        else
            displayBufferRow[i] = fillChar
        end
    end
end    

function display:writeBufferRow(posY)
    if posY < 1 or posY > displayHeight then
        error("Invalid input, expected posY to be within display bounds")
    end

    for i = 1, displayWidth do
        displayMatrix[posY][i] = displayBufferRow[i]
    end

end

function display:writeBufferMatrix(posX, posY)
    if posX < 1 or posX > displayWidth or posY < 1 or posY > displayHeight then
        error("Invalid input, expected posX and posY to be within display bounds")
    end

    for i = 1, #displayBufferMatrix do
        for j = 1, #displayBufferMatrix[i] do
            if posX + j - 1 > displayWidth or posY + i - 1 > displayHeight then
                -- out of bounds writing
            else
                displayMatrix[posY + i - 1][posX + j - 1] = displayBufferMatrix[i][j]
            end
        end
    end
end

function display:output()
    for i = 1, displayHeight do
        for j = 1, displayWidth do
            io.write(displayMatrix[i][j])
        end
        io.write("\n")
    end
end

return display