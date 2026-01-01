local M = {}

M.whichkey = function()
	local wk = require("which-key")

	wk.add({

		-- Telescope/find mappings
		{ "<leader>f", group = "Find", desc = "Find", icon = "🔍" },
		{ "<leader>ff", desc = "Files", mode = "n", icon = "📄" },
		{ "<leader>fg", desc = "Git Files", mode = "n", icon = "📦" },
		{ "<leader>fb", desc = "Buffers", mode = "n", icon = "📋" },
		{ "<leader>fn", desc = "Notifications", mode = "n", icon = "🔔" },
		{ "<leader>fs", desc = "Substitute", mode = { "n", "v" }, icon = "🔄" },
		{ "<leader>fa", desc = "Code Action", mode = "n", icon = "⚡" },
		{ '<leader>f"', desc = "Registers", mode = "n", icon = "📝" },
		{ "<leader>fw", desc = "Live Grep", mode = "n", icon = "🔎" },
		{ "<leader>fu", desc = "Undo History", mode = "n", icon = "⏮️" },
		{ "<leader>e", desc = "Toggle Filetree", mode = "n", icon = "🌳" },

		-- Dropbar
		{ "<leader>;", desc = "Pick Symbols In Winbar", mode = "n", icon = "📍" },
		{ "[;", desc = "Go to start of current context", mode = "n", icon = "⬆️" },
		{ "];", desc = "Select next context", mode = "n", icon = "⬇️" },

		-- LSP
		{ "g", group = "LSP", desc = "LSP", icon = "🎯" },
		{ "gd", desc = "Go To Definition", mode = "n", icon = "🔗" },
		{ "gf", desc = "Format File", mode = "n", icon = "✨" },
		{ "gD", desc = "Go To Declaration", mode = "n", icon = "📌" },
		{ "gi", desc = "Go To Implementation", mode = "n", icon = "⚙️" },
		{ "go", desc = "Go To Type Definition", mode = "n", icon = "📐" },
		{ "gr", desc = "Go To References", mode = "n", icon = "🔍" },
		{ "gs", desc = "Go To Signature Help", mode = "n", icon = "💬" },
		{ "gR", desc = "Rename Throughout Buffer", mode = "n", icon = "✏️" },

		-- Grug
		{ "<leader>r", desc = "Toggle Grug Far", mode = "n", icon = "🔀" },

		-- Treesj
		{ "<leader>s", desc = "Toggle Split/Join Of Node", mode = "n", icon = "🔀" },

		-- Namu
		{ "<leader>n", group = "Namu", desc = "Namu", icon = "🗂️" },
		{ "<leader>ns", desc = "Symbols", mode = "n", icon = "🏷️" },
		{ "<leader>nw", desc = "Workspace Symbols", mode = "n", icon = "🌐" },
		{ "<leader>nd", group = "Diagnostics", desc = "Diagnostics", icon = "⚠️" },
		{ "<leader>ndb", desc = "Buffer", mode = "n", icon = "📄" },
		{ "<leader>ndw", desc = "Workspace", mode = "n", icon = "🌐" },

		-- CopilotChat
		{ "<leader>c", group = "CopilotChat", mode = { "n", "v" }, desc = "CopilotChat", icon = "🤖" },
		{ "<leader>cc", desc = "Toggle CopilotChat", mode = "n", icon = "💬" },
		{ "<leader>cs", desc = "Stop CopilotChat Output", mode = "n", icon = "⏹️" },
		{ "<leader>cr", desc = "Reset CopilotChat", mode = "n", icon = "🔄" },
		{ "<leader>cp", desc = "CopilotChat Prompts", mode = "n", icon = "📋" },
		{ "<leader>cm", desc = "CopilotChat Models", mode = "n", icon = "🧠" },
		{ "<leader>ce", desc = "CopilotChat Explain", mode = { "n", "v" }, icon = "📖" },
		{ "<leader>cC", desc = "CopilotChat Commit", mode = { "n", "v" }, icon = "✅" },
		{ "<leader>cd", desc = "CopilotChat Docs", mode = { "n", "v" }, icon = "📚" },
		{ "<leader>cf", desc = "CopilotChat Fix", mode = { "n", "v" }, icon = "🔧" },
		{ "<leader>ct", desc = "CopilotChat Tests", mode = { "n", "v" }, icon = "✔️" },
		{ "<leader>co", desc = "CopilotChat Optimize", mode = { "n", "v" }, icon = "⚡" },
		{ "<leader>ci", desc = "CopilotChat Inject", mode = "v", icon = "💉" },

		-- Multicursor
		{ "<leader>m", group = "Multicursor", desc = "Multicursor", icon = "🎯" },
		{ "<leader>mn", desc = "New Cursor At Next Match", mode = "n", icon = "➡️" },
		{ "<leader>ms", desc = "Skip Cursor At Next Match", mode = "n", icon = "⏭️" },
		{ "<leader>mN", desc = "New Cursor At Prev Match", mode = "n", icon = "⬅️" },
		{ "<leader>mS", desc = "Skip Cursor At Prev Match", mode = "n", icon = "⏮️" },
		{ "<leader>mA", desc = "Add Cursors At All Matches", mode = "n", icon = "✦" },
		{ "<leader>mr", desc = "Restore Cursors", mode = "n", icon = "🔄" },
		{ "<leader>ma", desc = "Align Cursors", mode = "n", icon = "📏" },
		{ "<leader><up>", desc = "Skip Cursor Above", mode = "n", icon = "" },
		{ "<leader><down>", desc = "Skip Cursor Below", mode = "n", icon = "" },
		{ "<left>", desc = "Main Cursor Prev", mode = "n", icon = "⬅️" },
		{ "<right>", desc = "Main Cursor Next", mode = "n", icon = "➡️" },
		{ "<up>", desc = "New Cursor Above", mode = "n", icon = "⬆️" },
		{ "<down>", desc = "New Cursor Below", mode = "n", icon = "⬇️" },
		-- Quickfix
		{ "<leader>q", group = "Quickfix", desc = "Quickfix" },
	})
end

return M
