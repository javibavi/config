local M = {}

M.presence = function()
	require("presence").setup({
		neovim_image_text = "Alex is a bot at Fortnite",
	})
end

M.substitute = function()
	require("rip-substitute").setup({})
end

M.whichkey = function()
	local wk = require("which-key")

	wk.add({
		-- Telescope/find mappings
		{ "<leader>f", group = "Find", desc = "Find" },
		{ "<leader>ff", desc = "Files", mode = "n" },
		{ "<leader>fg", desc = "Live Grep", mode = "n" },
		{ "<leader>fb", desc = "Buffers", mode = "n" },
		{ "<leader>fh", desc = "Help Tags", mode = "n" },
		{ "<leader>fn", desc = "Notifications", mode = "n" },
		{ "<leader>fx", desc = "Trouble", mode = "n" },
		{ "<leader>fs", desc = "Substitute", mode = "n" },
		{ "<leader>fa", desc = "Code Action", mode = "n" },

		-- NvimTree
		{ "<leader>n", desc = "Toggle NvimTree", mode = "n" },

		-- Aerial
		{ "<leader>o", desc = "Toggle Aerial", mode = "n" },
	})
end

M.glimmer = function()
	require("tiny-glimmer").setup({
        default_animation = "rainbow",
		overwrite = {
			search = {
				enabled = true,
			},
		},
	})
end

M.grug = function ()
    require("grug-far").setup({})
end

return M
