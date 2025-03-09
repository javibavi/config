local M = {}

M.aerial = function()
	require("aerial").setup({
		-- optionally use on_attach to set keymaps when aerial has attached to a buffer
		on_attach = function(bufnr)
			-- Jump forwards/backwards with '{' and '}'
			vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
			vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
		end,
	})
end

M.namu = function()
	require("namu").setup({
		ui_select = {
			enable = true,
			options = {
				multiselect = {
					enabled = false,
				},
				movement = { -- Support multiple keys
					next = { "<C-n>", "<DOWN>", "<Tab>" },
					previous = { "<C-p>", "<UP>", "<S-Tab>" },
					close = { "<ESC>" }, -- "<C-c>" can be added as well
					select = { "<CR>" },
					delete_word = {}, -- it can assign "<C-w>"
					clear_line = {}, -- it can be "<C-u>"
				},
			},
		},
		namu_symbols = {
			options = {
				multiselect = {
					enabled = false,
				},
				movement = { -- Support multiple keys
					next = { "<C-n>", "<DOWN>", "<Tab>" },
					previous = { "<C-p>", "<UP>", "<S-Tab>" },
					close = { "<ESC>" }, -- "<C-c>" can be added as well
					select = { "<CR>" },
					delete_word = {}, -- it can assign "<C-w>"
					clear_line = {}, -- it can be "<C-u>"
				},
				custom_keymaps = {
					yank = {
						keys = { "<C-y>" }, -- yank symbol text
					},
					delete = {
						keys = { "<C-d>" }, -- delete symbol text
					},
					vertical_split = {
						keys = { "<C-v>" }, -- open in vertical split
					},
					horizontal_split = {
						keys = { "<C-h>" }, -- open in horizontal split
					},
				},
			},
		},
	})
end

return M
