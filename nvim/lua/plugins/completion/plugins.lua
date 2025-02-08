local settings = require("plugins.completion.config")
local mappings = require("plugins.completion.mappings")

return {
    {
        -- Literally just need this so that rustaceanvim stops whining
        'hrsh7th/cmp-nvim-lsp',
    },
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"saghen/blink.compat",
		-- use the latest release, via version = '*', if you also use the latest release for blink.cmp
		version = "*",
		-- lazy.nvim will automatically load the plugin when it's required by blink.cmp
		lazy = true,
		opts = {},
	},
	{
		"saghen/blink.cmp",
		-- use a release tag to download pre-built binaries
		version = "*",
		config = function()
			settings.blink()
		end,
	},
    {
        "xzbdmw/colorful-menu.nvim",
        config = function ()
            settings.colorful()
        end
    }
}
