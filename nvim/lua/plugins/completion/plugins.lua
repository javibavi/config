local settings = require("plugins.completion.config")
local mappings = require("plugins.completion.mappings")

return {
	{
		-- Literally just need this so that rustaceanvim stops whining
		"hrsh7th/cmp-nvim-lsp",
		ft = "rust",
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
		opts = settings.blink,
	},
	{
		"xzbdmw/colorful-menu.nvim",
		opts = {},
	},
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			settings.copilot()
		end,
	},
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
		},
		build = "make tiktoken", -- Only on MacOS or Linux
        config = function ()
            settings.chat()
            mappings.chat()
        end
	},
}
