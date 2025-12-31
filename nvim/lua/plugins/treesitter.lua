return {
	{
		-- Package for better syntax highlighting
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = {
			"OXY2DEV/markview.nvim",
		},
		opts = {
			-- Ensures we have syntax highlighting installed for any language we encounter
			auto_install = true,
			modules = {},
			ensure_installed = {},
			sync_install = false,
			ignore_install = {},

			-- Enables highlighting and indenting
			highlight = { enable = true },
			indent = { enable = true },
		},
	},
	{
		"Wansmer/treesj",
		event = "InsertEnter",
		keys = { {
			"<leader>s",
			function()
				require("treesj").toggle()
			end,
		} },
		opts = { use_default_keymaps = false },
	},
}
