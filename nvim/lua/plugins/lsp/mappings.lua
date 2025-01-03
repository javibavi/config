local M = {}
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

M.lsp_config = function()
	map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	map("n", "<leader>fa", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
	map("n", "gf", "<cmd>lua vim.lsp.buf.format()<CR>", opts)
end

return M
