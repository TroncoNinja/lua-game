local utils = require("src.utils")

local display = {}

local displayWidth = 64
local displayHeight = 64

local displayMatrix = utils:buildMatrix(displayHeight, displayWidth)
local displayBuffer = {}

function display:clear()
    for i = 1, displayHeight do
        for j = 1, displayWidth do
            displayMatrix[i][j] = ""
        end
    end
end

function display:inputMatrixToBuffer(inputMatrix)
    displayBuffer = inputMatrix
end

function display:insertBuffer(posX, posY)
    if posX < 1 or posX > displayWidth or posY < 1 or posY > displayHeight then
        error("Invalid input, expected posX and posY to be within display bounds")
    end

    for i = 1, #displayBuffer do
        for j = 1, #displayBuffer[i] do
            displayMatrix[posY + i - 1][posX + j - 1] = displayBuffer[i][j]
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