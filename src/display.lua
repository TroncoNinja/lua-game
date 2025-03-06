local utils = require("src.utils")

local display = {}

local displayWidth = 64
local displayHeight = 64

local displayMatrix = utils:buildMatrix(displayHeight, displayWidth)
local displayBufferMatrix = {}
local displayBufferRow = {}

function display:clear()
    for i = 1, displayHeight do
        for j = 1, displayWidth do
            displayMatrix[i][j] = ""
        end
    end
end

function display:inputToBufferMatrix(inputMatrix)
    displayBufferMatrix = inputMatrix
end

function display:inputToBufferRow(inputRow)
    displayBufferRow = inputRow
end    

function display:writeBufferRow(posY)
    if posY < 1 or posY > displayHeight then
        error("Invalid input, expected posY to be within display bounds")
    end

    for i = 1, #displayBufferRow do
        displayMatrix[posY][i] = displayBufferRow[i]
    end

end

function display:writeBufferMatrix(posX, posY)
    if posX < 1 or posX > displayWidth or posY < 1 or posY > displayHeight then
        error("Invalid input, expected posX and posY to be within display bounds")
    end

    for i = 1, #displayBufferMatrix do
        for j = 1, #displayBufferMatrix[i] do
            displayMatrix[posY + i - 1][posX + j - 1] = displayBufferMatrix[i][j]
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