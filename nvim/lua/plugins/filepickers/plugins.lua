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
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			settings.telescope()
			mappings.telescope()
		end,
	},
}
