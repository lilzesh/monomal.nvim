local M = {}

local function darken_channel(hex, percent)
    local dec = 1 - percent / 100
    
    local darker = math.floor(tonumber(hex, 16) * dec)
    darker = darker > 0 and darker or 0

    return string.format("%x", darker)
end

function M.darken(color, percent)
    local _, _, r, g, b = string.find(color, "#(..)(..)(..)")

    r = darken_channel(r, percent)
    g = darken_channel(g, percent)
    b = darken_channel(b, percent)

    return "#" .. r .. g .. b
end

return M
