local Util = require("monomal.util")

local M = {}

function M.setup()
    local colors = {
        dark = "#110f0d",
        light = "#b9b6ae",
        auxiliary = "#dd00ff",
    }

    local groups = {
        Normal = {
            fg = colors.light,
            bg = colors.dark,
        },
        Comment = {
            fg = Util.darken(colors.light, 50) 
        },
        Keyword = {

        },
        String = {

        },
        Number = {
        
        },
        LineNr = {

        },
        CursorLine = {

        },
        StatusLine = {

        },
        Visual = {

        },
    }

    for group, opts in pairs(groups) do
        vim.api.nvim_set_hl(0, group, opts);
    end
end

return M
