return {
	{
		-- Plugin that allows for easy installation of LSPs
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("mason-lspconfig").setup({
				function(server_name)
					vim.lsp.enable(server_name)
				end,
			})
		end,
	},
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
		"kosayoda/nvim-lightbulb",
		opts = {
			autocmd = { enabled = true },
		},
	},
	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "VeryLazy", -- Or `LspAttach`
		priority = 1000, -- needs to be loaded in first
		opts = {
			preset = "modern", -- Can be: "modern", "classic", "minimal", "powerline", ghost", "simple", "nonerdfont", "amongus"
			hi = {
				error = "DiagnosticError",
				warn = "DiagnosticWarn",
				info = "DiagnosticInfo",
				hint = "DiagnosticHint",
				arrow = "NonText",
				background = "CursorLine", -- Can be a highlight or a hexadecimal color (#RRGGBB)
				mixing_color = "None", -- Can be None or a hexadecimal color (#RRGGBB). Used to blend the background color with the diagnostic background color with another color.
			},
			options = {
				-- Show the source of the diagnostic.
				show_source = true,

				-- Use your defined signs in the diagnostic config table.
				use_icons_from_diagnostic = false,

				-- Add messages to the diagnostic when multilines is enabled
				add_messages = true,

				-- Throttle the update of the diagnostic when moving cursor, in milliseconds.
				-- You can increase it if you have performance issues.
				-- Or set it to 0 to have better visuals.
				throttle = 20,

				-- The minimum length of the message, otherwise it will be on a new line.
				softwrap = 30,

				-- If multiple diagnostics are under the cursor, display all of them.
				multiple_diag_under_cursor = true,

				-- Enable diagnostic message on all lines.
				-- Can either be a boolean or a table with the following options:
				--  multilines = {
				-- 	-- Enable the multilines feature
				-- 	enabled = false,
				--
				-- 	-- Always show diagnostic messages on all lines
				--  	always_show = false,
				--  }
				--
				-- If it is a boolean set as true, it will enable the feature with the default options:
				--  multilines = {
				-- 	enabled = true,
				-- 	always_show = false,
				-- }

				multilines = {
					enabled = true,
					always_show = true,
				},

				-- Show all diagnostics on the cursor line.
				show_all_diags_on_cursorline = false,

				-- Enable diagnostics on Insert mode. You should also se the `throttle` option to 0, as some artefacts may appear.
				enable_on_insert = false,

				overflow = {
					-- Manage the overflow of the message.
					--    - wrap: when the message is too long, it is then displayed on multiple lines.
					--    - none: the message will not be truncated.
					--    - oneline: message will be displayed entirely on one line.
					mode = "wrap",
				},

				-- Format the diagnostic message.
				-- Example:
				-- format = function(diagnostic)
				--     return diagnostic.message .. " [" .. diagnostic.source .. "]"
				-- end,
				format = nil,

				--- Enable it if you want to always have message with `after` characters length.
				break_line = {
					enabled = false,
					after = 30,
				},

				virt_texts = {
					priority = 2048,
				},

				-- Filter by severity.
				severity = {
					vim.diagnostic.severity.ERROR,
					vim.diagnostic.severity.WARN,
					vim.diagnostic.severity.INFO,
					vim.diagnostic.severity.HINT,
				},

				-- Overwrite events to attach to a buffer. You should not change it, but if the plugin
				-- does not works in your configuration, you may try to tweak it.
				overwrite_events = nil,
			},
		},
	},
	{
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>xx",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>xX",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>cs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>cl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "Location List (Trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
	},
}
