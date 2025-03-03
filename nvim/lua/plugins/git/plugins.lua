local settings = require("plugins.git.config")
local mappings = require("plugins.git.mappings")

return {
	{
		"lewis6991/gitsigns.nvim",
		opts = settings.gitsigns,
	},
	{
		"sindrets/diffview.nvim",
		opts = {},
		config = function()
			mappings.diffview()
		end,
	},
	{
		"akinsho/git-conflict.nvim",
		version = "*",
		opts = {},
		config = function()
			mappings.conflict()
		end,
	},
}
