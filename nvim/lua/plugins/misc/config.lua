local M = {}

M.whichkey = function()
	local wk = require("which-key")

	wk.add({
		-- Telescope/find mappings
		{ "<leader>f", group = "Find", desc = "Find", icon = "" },
		{ "<leader>ff", desc = "Files", mode = "n", icon = "" },
		{ "<leader>fg", desc = "Live Grep", mode = "n", icon = "" },
		{ "<leader>fb", desc = "Buffers", mode = "n", icon = "" },
		{ "<leader>fh", desc = "Help Tags", mode = "n", icon = "" },
		{ "<leader>fn", desc = "Notifications", mode = "n", icon = "" },
		{ "<leader>fx", desc = "Trouble", mode = "n", icon = "" },
		{ "<leader>fs", desc = "Substitute", mode = "n", icon = "" },
		{ "<leader>fa", desc = "Code Action", mode = "n", icon = "" },
		{ "<leader>fq", desc = "Quickfix", mode = "n", icon = "" },
		{ "<leader>fl", desc = "Loclist", mode = "n", icon = "" },
		{ "<leader>ft", desc = "Todo", mode = "n", icon = "" },

		-- NvimTree
		{ "<leader>t", desc = "Toggle NvimTree", mode = "n", icon = "" },

		-- Aerial
		{ "<leader>a", desc = "Toggle Aerial", mode = "n", icon = "" },

		-- Buffers
		{ "<leader>b", group = "Buffers", desc = "Buffers", icon = "" },
		{ "<leader>bl", desc = "Move Buffer To Previous", mode = "n", icon = "" },
		{ "<leader>bn", desc = "Move Buffer To Next", mode = "n", icon = "" },
		{ "<leader>bp", desc = "Pin Current Buffer", mode = "n", icon = "" },
		{ "<leader>bc", desc = "Close Current Buffer", mode = "n", icon = "" },
		{ "<leader>bb", desc = "Order Buffers By Buffer Number", mode = "n", icon = "" },
		{ "<leader>bd", desc = "Order Buffers By Directory", mode = "n", icon = "" },
		{ "<leader>bw", desc = "Order Buffers By Window Number", mode = "n", icon = "" },

		-- Dropbar
		{ "<leader>;", desc = "Pick Symbols In Winbar", mode = "n", icon = "󰆾" },
		{ "[;", desc = "Go to start of current context", mode = "n", icon = "󰁔" },
		{ "];", desc = "Select next context", mode = "n", icon = "󰁚" },

		-- Dashboard
		{ "<leader>h", desc = "Dashboard", mode = "n", icon = "" },

		-- LSP
		{ "g", group = "LSP", desc = "LSP", icon = "" },
		{ "gd", desc = "Go To Definition", mode = "n", icon = "" },
		{ "gf", desc = "Format File", mode = "n", icon = "" },
		{ "gD", desc = "Go To Declaration", mode = "n", icon = "" },
		{ "gi", desc = "Go To Implementation", mode = "n", icon = "󰡱" },
		{ "go", desc = "Go To Type Definition", mode = "n", icon = "󰆧" },
		{ "gr", desc = "Go To References", mode = "n", icon = "" },
		{ "gs", desc = "Go To Signature Help", mode = "n", icon = "" },
		{ "gR", desc = "Rename Throughout Buffer", mode = "n", icon = "" },

		-- Git
		{ "<leader>g", group = "Git", desc = "Git", icon = "" },
		{ "<leader>gd", desc = "Open Git Diff View", mode = "n", icon = "" },
		{ "<leader>gD", desc = "Close Git Diff View", mode = "n", icon = "" },
		{ "<leader>gj", desc = "Move To Next Conflict", mode = "n", icon = "" },
		{ "<leader>gk", desc = "Move To Prev Conflict", mode = "n", icon = "" },
		{ "<leader>g1", desc = "Use Our Version", mode = "n", icon = "" },
		{ "<leader>g2", desc = "Use Their Version", mode = "n", icon = "" },
		{ "<leader>g3", desc = "Use Both Versions", mode = "n", icon = "" },
		{ "<leader>g0", desc = "Use None Of The Versions", mode = "n", icon = "" },

		-- Undo and Grug
		{ "<leader>r", desc = "Toggle Grug Far", mode = "n", icon = "" },
		{ "<leader>u", desc = "Toggle UndoTree", mode = "n", icon = "" },

		-- Namu
		{ "<leader>n", desc = "Open Namu (Fuzzy Tree Finder)", mode = "n", icon = "" },

		-- Treesj
		{ "<leader>s", desc = "Toggle Split/Join Of Node", mode = "n", icon = "" },

		-- Multicursor
		{ "<leader>m", group = "Multicursor", desc = "Multicursor", icon = "" },
		{ "<leader>mn", desc = "New Cursor At Next Match", mode = "n", icon = "" },
		{ "<leader>ms", desc = "Skip Cursor At Next Match", mode = "n", icon = "" },
		{ "<leader>mN", desc = "New Cursor At Prev Match", mode = "n", icon = "" },
		{ "<leader>mS", desc = "Skip Cursor At Prev Match", mode = "n", icon = "" },
		{ "<leader>mA", desc = "Add Cursors At All Matches", mode = "n", icon = "" },
		{ "<leader>mr", desc = "Restore Cursors", mode = "n", icon = "" },
		{ "<leader>ma", desc = "Align Cursors", mode = "n", icon = "" },
		{ "<left>", desc = "Main Cursor Prev", mode = "n", icon = "" },
		{ "<right>", desc = "Main Cursor Next", mode = "n", icon = "" },
		{ "<up>", desc = "New Cursor Above", mode = "n", icon = "" },
		{ "<down>", desc = "New Cursor Below", mode = "n", icon = "" },
		{ "<up>", desc = "Skip Cursor Above", mode = "n", icon = "" },
		{ "<down>", desc = "Skip Cursor Below", mode = "n", icon = "" },

		-- Quickfix
		{ "<leader>q", group = "Quickfix", desc = "Quickfix" },

		-- CopilotChat
		{ "<leader>c", group = "CopilotChat", desc = "CopilotChat", icon = "" },
		{ "<leader>cc", desc = "Toggle CopilotChat", mode = "n", icon = "󱚣" },
		{ "<leader>cs", desc = "Stop CopilotChat Output", mode = "n", icon = "󰙦" },
		{ "<leader>cr", desc = "Reset CopilotChat", mode = "n", icon = "󰜉" },
		{ "<leader>cp", desc = "CopilotChat Prompts", mode = "n", icon = "󰘿" },
		{ "<leader>cm", desc = "CopilotChat Models", mode = "n", icon = "󱙺" },
		{ "<leader>ce", desc = "CopilotChat Explain", mode = { "n", "v" }, icon = "󰑴" },
		{ "<leader>cC", desc = "CopilotChat Commit", mode = { "n", "v" }, icon = "󰜘" },
		{ "<leader>cd", desc = "CopilotChat Docs", mode = { "n", "v" }, icon = "󰈙" },
		{ "<leader>cf", desc = "CopilotChat Fix", mode = { "n", "v" }, icon = "󰦒" },
		{ "<leader>ct", desc = "CopilotChat Tests", mode = { "n", "v" }, icon = "󰙨" },
		{ "<leader>co", desc = "CopilotChat Optimize", mode = { "n", "v" }, icon = "󰁨" },
		{ "<leader>ci", desc = "CopilotChat Inject", mode = "v", icon = "󰋊" },
	})
end

M.glimmer = {
	default_animation = "pulse",
	overwrite = {
		search = {
			enabled = true,
		},
	},
}

M.grug = function()
	require("grug-far").setup({})
end

M.undo = function()
	vim.g.undotree_WindowLayout = 4
	vim.opt.undofile = true
	vim.opt.undodir = vim.fn.expand("~/.undodir")
end

return M
