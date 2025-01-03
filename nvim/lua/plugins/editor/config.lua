local M = {}

M.cursorline = function()
	require("nvim-cursorline").setup({
		cursorline = {
			enable = true,
			timeout = 0,
			number = true,
		},
		cursorword = {
			enable = true,
			min_length = 3,
			hl = { underline = true },
		},
	})
end

M.lsplines = function()
	require("lsp_lines").setup()
end

M.multicursor = function()
	require("multicursor-nvim").setup()
end

M.surround = function()
	require("nvim-surround").setup({
		-- Configuration here, or leave empty to use defaults
		keymaps = {
			insert = "<C-g>s",
			insert_line = "<C-g>S",
			normal = "<leader>s",
			normal_cur = "<leader>ss", -- Use this
			normal_line = "<leader>S",
			normal_cur_line = "<leader>SS", -- Probably use this if you need to
			visual = "<leader>s", -- Most def use this
			visual_line = "<leader>S", -- Maybe this too
			delete = "ds", -- Use this
			change = "cs", -- Use this
			change_line = "cS",
		},
	})
end

return M
