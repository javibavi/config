local M = {}
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

M.treesj = function ()
    map('n', '<leader>s', require('treesj').toggle, opts)
end

return M
