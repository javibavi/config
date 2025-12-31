return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				panel = {
					enabled = true,
					auto_refresh = true,
					keymap = {
						jump_prev = "[[",
						jump_next = "]]",
						accept = "<CR>",
						refresh = "gr",
						open = "<M-CR>",
					},
					layout = {
						position = "bottom", -- | top | left | right | horizontal | vertical
						ratio = 0.4,
					},
				},
				suggestion = {
					enabled = true,
					auto_trigger = false,
					hide_during_completion = true,
					trigger_on_accept = true,
					debounce = 75,
					keymap = {
						accept = "<C-a>",
						accept_word = false,
						accept_line = false,
						next = "<C-n>",
						prev = "<C-p>",
						dismiss = "<C-BS>",
					},
				},
				filetypes = {
					yaml = false,
					markdown = false,
					help = false,
					gitcommit = false,
					gitrebase = false,
					hgcommit = false,
					svn = false,
					cvs = false,
					["."] = false,
				},
				copilot_node_command = "node", -- Node.js version must be > 18.x
				server_opts_overrides = {},
			})
		end,
	},
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		keys = {
			{ "<leader>ce", "<cmd>CopilotChatExplain<CR>", mode = { "n", "v" } },
			{ "<leader>cf", "<cmd>CopilotChatFix<CR>", mode = { "n", "v" } },
			{ "<leader>ct", "<cmd>CopilotChatTests<CR>", mode = { "n", "v" } },
			{ "<leader>co", "<cmd>CopilotChatOptimize<CR>", mode = { "n", "v" } },
			{ "<leader>cC", "<cmd>CopilotChatCommit<CR>", mode = { "n", "v" } },
			{ "<leader>cd", "<cmd>CopilotChatDocs<CR>", mode = { "n", "v" } },

			{ "<leader>cc", "<cmd>CopilotChatToggle<CR>", mode = { "n" } },
			{ "<leader>cs", "<cmd>CopilotChatStop<CR>", mode = { "n" } },
			{ "<leader>cr", "<cmd>CopilotChatReset<CR>", mode = { "n" } },
			{ "<leader>cp", "<cmd>CopilotChatPrompts<CR>", mode = { "n" } },
			{ "<leader>cm", "<cmd>CopilotChatModels<CR>", mode = { "n" } },
		},
		opts = {

			-- Shared config starts here (can be passed to functions at runtime and configured via setup function)

			model = "claude-3.7-sonnet", -- Default model to use, see ':CopilotChatModels' for available models (can be specified manually in prompt via $).
			agent = "copilot", -- Default agent to use, see ':CopilotChatAgents' for available agents (can be specified manually in prompt via @).
			-- default mappings
			-- see config/mappings.lua for implementation
			mappings = {
				complete = {
					insert = "<Tab>",
				},
				close = {
					normal = "q",
					insert = "<C-c>",
				},
				reset = {
					normal = "<C-,>",
					insert = "<C-,>",
				},
				submit_prompt = {
					normal = "<CR>",
					insert = "<C-s>",
				},
				toggle_sticky = {
					detail = "Makes line under cursor sticky or deletes sticky line.",
					normal = "gr",
				},
				accept_diff = {
					normal = "<C-a>",
					insert = "<C-a>",
				},
				jump_to_diff = {
					normal = "gj",
				},
				quickfix_answers = {
					normal = "gqa",
				},
				quickfix_diffs = {
					normal = "gqd",
				},
				yank_diff = {
					normal = "gy",
					register = '"', -- Default register to use for yanking
				},
				show_diff = {
					normal = "gd",
					full_diff = false, -- Show full diff instead of unified diff when showing diff window
				},
				show_info = {
					normal = "gi",
				},
				show_context = {
					normal = "gc",
				},
				show_help = {
					normal = "gh",
				},
			},
		},
	},
}
