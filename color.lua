-- color.lua
local colors = {
    RED = {1, 0, 0},
    GREEN = {0, 1, 0},
    SOFT_GREEN = {0.4, 0.6, 0.3},
    DARK_GREEN = {0.3, 0.5, 0.3},
    BLUE = {0, 0, 1},
    LIGHT_BLUE = {0.5, 0.7, 1},
    SOFT_BLUE = {0.4, 0.6, 0.9},
    ORANGE = {1, 0.55, 0},
    PURPLE = {0.5, 0, 0.5},
    BLACK = {0, 0, 0},
    WHITE = {1, 1, 1},
    GRAY = {0.3, 0.5, 0.7},
    LIGHT_GRAY = {0.7, 0.7, 0.7},
    DARK_GRAY = {0.3, 0.3, 0.3},
}

function getColor(color)
    return colors[color] or colors.WHITE
end
