return {
	{
		"ggandor/leap.nvim",
		dependencies = {
			"tpope/vim-repeat",
		},
		keys = {
			{ "s", "<Plug>(leap)", mode = "n" },
			{ "S", "<Plug>(leap-from-window)", mode = "n" },
			{ "s", "<Plug>(leap)", mode = { "x", "o" } },
		},
	},
	{
		"bassamsdata/namu.nvim",
        keys = {
            {"<leader>ns", "<cmd>Namu symbols<CR>"},
            {"<leader>nw", "<cmd>Namu workspace<CR>"},
            {"<leader>ndb", "<cmd>Namu diagnostics buffers<CR>"},
            {"<leader>ndw", "<cmd>Namu diagnostics workspace<CR>"},
        },
		opts = {
			global = {},
			namu_symbols = { -- Specific Module options
				options = {},
			},
		},
	},
}
