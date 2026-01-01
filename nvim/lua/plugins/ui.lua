local whichkey = require("config.whichkey")
return {
	{ "nvim-tree/nvim-web-devicons", opts = {} },
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				theme = "auto",
			},
		},
	},
	{
		"romgrk/barbar.nvim",
		event = "VimEnter",
		keys = {
			{ "<A-,>", "<Cmd>BufferPrevious<CR>" },
			{ "<A-.>", "<Cmd>BufferNext<CR>" },
			{ "<A-l>", "<Cmd>BufferMovePrevious<CR>" },
			{ "<A-n>", "<Cmd>BufferMoveNext<CR>" },
			{ "<A-1>", "<Cmd>BufferGoto 1<CR>" },
			{ "<A-2>", "<Cmd>BufferGoto 2<CR>" },
			{ "<A-3>", "<Cmd>BufferGoto 3<CR>" },
			{ "<A-4>", "<Cmd>BufferGoto 4<CR>" },
			{ "<A-5>", "<Cmd>BufferGoto 5<CR>" },
			{ "<A-6>", "<Cmd>BufferGoto 6<CR>" },
			{ "<A-7>", "<Cmd>BufferGoto 7<CR>" },
			{ "<A-8>", "<Cmd>BufferGoto 8<CR>" },
			{ "<A-9>", "<Cmd>BufferGoto 9<CR>" },
			{ "<A-0>", "<Cmd>BufferLast<CR>" },
			{ "<A-p>", "<Cmd>BufferPin<CR>" },
			{ "<A-c>", "<Cmd>BufferClose<CR>" },
			{ "<A-b>", "<Cmd>BufferOrderByBufferNumber<CR>" },
			{ "<A-d>", "<Cmd>BufferOrderByDirectory<CR>" },
			{ "<A-w>", "<Cmd>BufferOrderByWindowNumber<CR>" },
		},
		init = function()
			vim.g.barbar_auto_setup = true
		end,
	},
	{
		"Bekaboo/dropbar.nvim",
		-- optional, but required for fuzzy finder support
		dependencies = {
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		event = "BufReadPre",
		keys = {
			{
				"<leader>;",
				function()
					require("dropbar.api").pick()
				end,
			},
			{
				"[;",
				function()
					require("dropbar.api").goto_context_start()
				end,
			},
			{
				"];",
				function()
					require("dropbar.api").select_next_context()
				end,
			},
		},
	},
	{
		"catgoose/nvim-colorizer.lua",
		event = "BufReadPre",
		opts = { -- set to setup table
		},
	},
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		keys = {
			{
				"<leader>ff",
				function()
					Snacks.picker.files()
				end,
				desc = "Files",
			},
			{
				"<leader>fb",
				function()
					Snacks.picker.buffers()
				end,
				desc = "Buffers",
			},
			{
				"<leader>e",
				function()
					Snacks.explorer()
				end,
				desc = "File Explorer",
			},
			{
				"<leader>fg",
				function()
					Snacks.picker.git_files()
				end,
				desc = "Find Git Files",
			},
			{
				"<leader>fw",
				function()
					Snacks.picker.grep()
				end,
				desc = "Grep",
			},
			{
				'<leader>f"',
				function()
					Snacks.picker.registers()
				end,
				desc = "Registers",
			},
			{
				"<leader>fu",
				function()
					Snacks.picker.undo()
				end,
				desc = "Undo History",
			},
			{
				"<leader>fn",
				function()
					Snacks.picker.notifications()
				end,
				desc = "Notification History",
			},
        },
		opts = {
			indent = { enabled = true },
			scroll = { enabled = true },
			quickfile = { enabled = true },
			dashboard = {
				enabled = true,
				sections = {
					{
						section = "terminal",
						cmd = "chafa ~/.config/kirby-rose.jpg --format symbols --symbols vhalf --size 60x20 --stretch; sleep .1",
						height = 17,
						padding = 1,
					},
					{
						pane = 2,
						{ section = "keys", gap = 1, padding = 1 },
						{ section = "startup" },
					},
				},
			},
			notifier = { enabled = true },
			picker = {
				enabled = true,
				sources = {
					explorer = { layout = { layout = { position = "right" } } },
				},
			},
		},
	},
	{
		"rachartier/tiny-glimmer.nvim",
		event = "VeryLazy",
		opts = {
			default_animation = "pulse",
			overwrite = {
				search = {
					enabled = true,
				},
			},
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			preset = "helix",
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = true })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
		init = function()
            whichkey.whichkey()
        end,
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
		},
	},
}
