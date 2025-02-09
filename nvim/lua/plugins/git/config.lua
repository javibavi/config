local M = {}

M.gitsigns = function ()
    require('gitsigns').setup({
        current_line_blame = true
    })
end

return M
