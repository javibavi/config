local M = {}

local map = vim.keymap.set

M.nvimtree = function()
	map("n", "<leader>t", "<cmd>NvimTreeToggle <CR>", { noremap = true, silent = true })
end

M.telescope = function()
	map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {})
	map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {})
	map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", {})
	map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", {})
	map("n", "<leader>fn", "<cmd>Telescope notify<CR>", {})
	map("n", "<leader>fq", "<cmd>Telescope quickfix<CR>", { })
	map("n", "<leader>fl", "<cmd>Telescope loclist<CR>", { })
	map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { })
end

return M
