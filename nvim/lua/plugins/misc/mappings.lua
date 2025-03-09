local M = {}
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

M.substitute = function()
	map({"n", "x"}, "<leader>fs", function() require("rip-substitute").sub() end, opts)
end

M.grug = function ()
    map("n", "<leader>r", "<cmd>GrugFar<CR>", opts)
end

M.undo = function ()
    map('n', '<leader>u', vim.cmd.UndotreeToggle, opts)
end

return M
