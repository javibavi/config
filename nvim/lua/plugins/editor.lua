return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"numToStr/Comment.nvim",
		event = "BufReadPre",
		opts = {
			---Add a space b/w comment and the line
			padding = true,
			---Whether the cursor should stay at its position
			sticky = true,
			---Lines to be ignored while (un)comment
			ignore = nil,
			---LHS of toggle mappings in NORMAL mode
			toggler = {
				---Line-comment toggle keymap
				line = "gcc",
				---Block-comment toggle keymap
				block = "gbc",
			},
			---LHS of operator-pending mappings in NORMAL and VISUAL mode
			opleader = {
				---Line-comment keymap
				line = "gc",
				---Block-comment keymap
				block = "gb",
			},
			---LHS of extra mappings
			extra = {
				---Add comment on the line above
				above = "gcO",
				---Add comment on the line below
				below = "gco",
				---Add comment at the end of line
				eol = "gcA",
			},
			---Enable keybindings
			---NOTE: If given `false` then the plugin won't create any mappings
			mappings = {
				---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
				basic = true,
				---Extra mapping; `gco`, `gcO`, `gcA`
				extra = true,
			},
			---Function to call before (un)comment
			pre_hook = nil,
			---Function to call after (un)comment
			post_hook = nil,
		},
	},
	{
		"kylechui/nvim-surround",
		event = "VeryLazy",
		opts = {
			-- Configuration here, or leave empty to use defaults
			keymaps = {
				insert = "<C-g>s",
				insert_line = "<C-g>S",
				normal = "ys",
				normal_cur = "yss",
				normal_line = "yS",
				normal_cur_line = "ySS",
				visual = "S",
				visual_line = "gS",
				delete = "ds",
				change = "cs",
				change_line = "cS",
			},
		},
	},
	{
		"folke/todo-comments.nvim",
		event = "BufReadPre",
		opts = {},
	},
	{
		"jake-stewart/multicursor.nvim",
		branch = "1.0",
		keys = {
			{ "<up>", '<cmd>lua require("multicursor-nvim").lineAddCursor(-1)<CR>' },
			{ "<down>", '<cmd>lua require("multicursor-nvim").lineAddCursor(1)<CR>' },
			{ "<leader>m<up>", '<cmd>lua require("multicursor-nvim").lineSkipCursor(-1)<CR>' },
			{ "<leader>m<down>", '<cmd>lua require("multicursor-nvim").lineSkipCursor(1)<CR>' },
			{ "<leader>mn", '<cmd>lua require("multicursor-nvim").matchAddCursor(1)<CR>' },
			{ "<leader>mN", '<cmd>lua require("multicursor-nvim").matchAddCursor(-1)<CR>' },
			{ "<leader>ms", '<cmd>lua require("multicursor-nvim").matchSkipCursor(1)<CR>' },
			{ "<leader>mS", '<cmd>lua require("multicursor-nvim").matchSkipCursor(-1)<CR>' },

			{ "<leader>mA", '<cmd>lua require("multicursor-nvim").matchAllAddCursor()<CR>' },
			{ "<right>", '<cmd>lua require("multicursor-nvim").nextCursor()<CR>' },
			{ "<left>", '<cmd>lua require("multicursor-nvim").prevCursor()<CR>' },
			{ "<c-leftmouse>", '<cmd>lua require("multicursor-nvim").handleMouse()<CR>' },
			{ "<c-q>", '<cmd>lua require("multicursor-nvim").toggleCursor()<CR>' },
			{ "<leader>mr", '<cmd>lua require("multicursor-nvim").restoreCursors()<CR>' },
			{ "<leader>ma", '<cmd>lua require("multicursor-nvim").alignCursors()<CR>' },
			{
				"<esc>",
				function()
					local mc = require("multicursor-nvim")
					if not mc.cursorsEnabled() then
						mc.enableCursors()
					elseif mc.hasCursors() then
						mc.clearCursors()
					else
						-- Default <esc> handler
						vim.cmd("nohlsearch") -- or whatever your default behavior is
					end
				end,
				mode = "n",
				desc = "Multicursor escape handler",
			},
		},
		opts = {},
	},
	{
		"chrisgrieser/nvim-rip-substitute",
		cmd = "RipSubstitute",
		opts = {},
		keys = {
			{
				"<leader>fs",
				function()
					require("rip-substitute").sub()
				end,
				mode = { "n", "x" },
				desc = " rip substitute",
			},
		},
	},
	{
		"MagicDuck/grug-far.nvim",
		keys = {
			{ "<leader>r", "<cmd>GrugFar<CR>" },
		},
		opts = {
			startInInsertMode = false,
			windowCreationCommand = "botright vsplit",
		},
	},
	{
		"lambdalisue/vim-suda",
		event = "BufReadPre",
	},
	{
		"kevinhwang91/nvim-bqf",
		ft = "qf",
	},
}
