local M = {}

local function update(color, dec)
    local _, _, r, g, b = string.find(color, "#(..)(..)(..)")
    local channels = { r, g, b }

    for i, channel in ipairs(channels) do
        local updated = math.floor(tonumber(channel, 16) * dec)
        
        if dec < 1 then
            updated = updated > 0 and updated or 0
        else
            updated = updated < 255 and updated or 255
        end

        channels[i] = string.format("%x", updated)
    end

    return channels
end

local function hex(channels)
    return "#" .. table.concat(channels)
end

function M.darken(color, percent)
    local dec = 1 - percent / 100
    local updated = update(color, dec)

    return hex(updated);
end

function M.lighten(color, percent)
    local dec = 1 + percent / 100
    local updated = update(color, dec)

    return hex(updated)
end

return M

