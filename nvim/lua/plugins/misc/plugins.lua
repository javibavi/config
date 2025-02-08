local settings = require("plugins.misc.config")
local mappings = require("plugins.misc.mappings")

return {
	{
		"andweeb/presence.nvim",
		config = function()
			settings.presence()
		end,
	},
	{
		"chrisgrieser/nvim-rip-substitute",
        config = function ()
            settings.substitute()
            mappings.substitute()
        end
	},
	{
		"OXY2DEV/markview.nvim",
		lazy = false, -- Recommended
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
	},
}
