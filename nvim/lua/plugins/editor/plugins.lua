local settings = require("plugins.editor.config")
local mappings = require("plugins.editor.mappings")

return {
	{ "catgoose/nvim-colorizer.lua" },
	{ "numToStr/Comment.nvim" },
	{
		"ya2s/nvim-cursorline",
		config = function()
			settings.cursorline()
		end,
	},
	{
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			settings.lsplines()
		end,
	},
	{
		"jake-stewart/multicursor.nvim",
		branch = "1.0",
		config = function()
			settings.multicursor()
			mappings.multicursor()
		end,
	},
	{
		"kylechui/nvim-surround",
		event = "VeryLazy",
		config = function()
			settings.surround()
		end,
	},
	{ "folke/todo-comments.nvim" },
}
