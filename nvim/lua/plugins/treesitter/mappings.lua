local M = {}
local map = vim.keymap.set

M.treesj = function ()
    map('n', '<leader>s', require('treesj').toggle, {})
end

return M
