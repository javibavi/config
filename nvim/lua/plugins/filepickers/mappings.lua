local M = {}

local map = vim.keymap.set

M.nvimtree = function()
	map("n", "<leader>n", "<cmd>NvimTreeToggle <CR>", { noremap = true, silent = true })
end

M.telescope = function()
	map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {})
	map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {})
	map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", {})
	map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", {})
	map("n", "<leader>fn", "<cmd>Telescope notify<CR>", {})
end

return M
