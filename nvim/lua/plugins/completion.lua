return {
	{
		"saghen/blink.cmp",
		-- use a release tag to download pre-built binaries
		version = "1.*",
		dependencies = { "rafamadriz/friendly-snippets" },
        event = "BufReadPre",
		opts = {
			-- Enabling the signature highlights
			signature = {
				enabled = true,
			},

			-- Config for the various sources
			sources = {
				default = {
					"lsp",
					"path",
					"snippets",
				},

				-- Get rid of commandline completion when input is short
				min_keyword_length = function(ctx)
					-- only applies when typing a command, doesn't apply to arguments
					if ctx.mode == "cmdline" and string.find(ctx.line, " ") == nil then
						return 3
					end
					return 0
				end,
			},

			-- Set keymaps for cycling with tab and S-tab
			keymap = {
				["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
				["<C-e>"] = { "hide", "fallback" },
				["<CR>"] = { "accept", "fallback" },

				["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
				["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },

				["<Up>"] = { "snippet_backward", "fallback" },
				["<Down>"] = { "snippet_forward", "fallback" },
				["<C-p>"] = {},
				["<C-n>"] = {},

				["<C-b>"] = { "scroll_documentation_up", "fallback" },
				["<C-f>"] = { "scroll_documentation_down", "fallback" },

				["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
			},
		},
	},
}
