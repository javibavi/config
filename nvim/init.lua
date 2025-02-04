-- init.lua

-- Install lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
-- Setup lazy.nvim
require("lazy").setup({
	require("plugins.completion.plugins"),
    require("plugins.diagnostics.plugins"),
	require("plugins.editor.plugins"),
	require("plugins.filepickers.plugins"),
	require("plugins.formatting-linting.plugins"),
	require("plugins.lsp.plugins"),
	require("plugins.misc.plugins"),
	require("plugins.navigation.plugins"),
	require("plugins.treesitter.plugins"),
	require("plugins.ui.plugins"),
})
