local settings = require("plugins.completion.config")
local mappings = require("plugins.completion.mappings")

return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		-- This is the engine that makes the autocompletion box actually come up when we type
		"hrsh7th/nvim-cmp",
		config = function()
			settings.cmp()
		end,
	},
}
