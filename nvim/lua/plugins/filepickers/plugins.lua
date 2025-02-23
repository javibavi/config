local settings = require("plugins.filepickers.config")
local mappings = require("plugins.filepickers.mappings")

return {
	{
		"nvim-tree/nvim-tree.lua",
		-- dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
            settings.nvimtree()
			mappings.nvimtree()
		end,
	},
	{
		-- Telescope is a plugin used to grep through files
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		-- dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			settings.telescope()
			mappings.telescope()
		end,
	},
	{
		-- This is a plugin to allow our code options to come up as a nice ui
		"nvim-telescope/telescope-ui-select.nvim",
	},
}
