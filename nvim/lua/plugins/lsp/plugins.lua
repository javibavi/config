local settings = require("plugins.lsp.config")
local mappings = require("plugins.lsp.mappings")
return {
	{
		"folke/lazydev.nvim",
		ft = "lua", -- only load on lua files
		opts = {
			library = {
				-- See the configuration section for more details
				-- Load luvit types when the `vim.uv` word is found
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
		},
	},
	{
		-- Plugin that allows for easy installation of LSPs
		"williamboman/mason.nvim",
		config = function()
			settings.mason()
		end,
	},
	{
		-- Plugin that allows for certain lsps to be forcefully installed
		"williamboman/mason-lspconfig.nvim",
		config = function()
			settings.mason_lsp_config()
		end,
	},
	{
		-- Plugin that allows Neovim to interact with our LSPs
		"neovim/nvim-lspconfig",
		config = function()
			settings.lsp_config()
			mappings.lsp_config()
		end,
	},
}
