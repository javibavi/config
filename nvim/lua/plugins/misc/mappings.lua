local M = {}

local map = vim.keymap.set

M.trouble = function()
	map("n", "<leader>x", "<cmd>Trouble<cr>", {})
end

return M
