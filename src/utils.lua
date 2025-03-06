local utils = {}

function utils:checkPlayerName(stringIn)
    if type(stringIn) == "string" then
        if string.len(stringIn) > 0 then
            if #stringIn <= 20 then
                return 0
            else
                return "Invalid input, expected string with length <= 20"
            end
        else
            return "Invalid input, expected string with length > 0"
        end
    else
        return "Invalid input, expected string"
    end
end

function utils:buildMatrix(height, width)
    local matrix = {}
    for i = 1, height do
        matrix[i] = {}
        for j = 1, width do
            matrix[i][j] = ""
        end
    end
    return matrix 
end

return utils