return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "BufReadPost",
		keys = {
			{
				"<C-n>",
				function()
					local suggestion = require("copilot.suggestion")
					suggestion.next()
				end,
				mode = "i",
				desc = "Copilot: trigger or next",
			},
		},
		config = function()
			require("copilot").setup({
				panel = {
					enabled = false,
				},
				suggestion = {
					enabled = true,
					auto_trigger = false,
					hide_during_completion = true,
					debounce = 75,
					trigger_on_accept = false,
					keymap = {
						accept = "<C-a>",
						accept_word = false,
						accept_line = false,
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

			model = "gpt-4.1", -- Default model to use
			agent = "copilot", -- Default agent to use
			resources = "buffer",
			temperature = 0.1,
			window = {
				layout = "vertical",
                position = "right",
				width = 0.4,
				title = "🤖 AI Assistant",
			},

			headers = {
				user = "👤 You",
				assistant = "🤖 Copilot",
				tool = "🔧 Tool",
			},

			separator = "━━",
			auto_fold = true, -- Automatically folds non-assistant messages

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
