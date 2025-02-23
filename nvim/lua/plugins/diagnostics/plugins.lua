local settings = require("plugins.diagnostics.config")
local mappings = require("plugins.diagnostics.mappings")

return {
	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "VeryLazy", -- Or `LspAttach`
		priority = 1000, -- needs to be loaded in first
        opts = {},
	},
	{
		"folke/trouble.nvim",
		config = function()
            settings.trouble()
			mappings.trouble()
		end,
	},
}
