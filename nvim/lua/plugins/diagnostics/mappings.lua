local M = {}
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

M.trouble = function()
    map("n", "<leader>fx", "<cmd>Trouble<cr>", opts)
end

return M
