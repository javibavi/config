local settings = require("plugins.misc.config")
local mappings = require("plugins.misc.mappings")

return {
	{
		"vyfor/cord.nvim",
		build = ":Cord update",
		opts = {},
	},
	{
		"chrisgrieser/nvim-rip-substitute",
		opts = {},
		config = function()
			mappings.substitute()
		end,
	},
	{
		"OXY2DEV/markview.nvim",
		lazy = false, -- Recommended
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			preset = "helix",
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
		init = function()
			settings.whichkey()
		end,
	},
	{
		"rachartier/tiny-glimmer.nvim",
		event = "VeryLazy",
		opts = settings.glimmer,
	},
	{
		"MagicDuck/grug-far.nvim",
		config = function()
			settings.grug()
			mappings.grug()
		end,
	},
}
