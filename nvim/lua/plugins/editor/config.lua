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

M.todo = function()
	require("todo-comments").setup()
end

M.neoscroll = function()
	require("neoscroll").setup({
		mappings = { -- Keys to be mapped to their corresponding default scrolling animation
			"<C-u>",
			"<C-d>",
			"<C-b>",
			"<C-f>",
			"<C-y>",
			"<C-e>",
			"zt",
			"zz",
			"zb",
		},
		hide_cursor = true, -- Hide cursor while scrolling
		stop_eof = true, -- Stop at <EOF> when scrolling downwards
		respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
		cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
		duration_multiplier = 0.75, -- Global duration multiplier
		easing = "linear", -- Default easing function
		pre_hook = nil, -- Function to run before the scrolling animation starts
		post_hook = nil, -- Function to run after the scrolling animation ends
		performance_mode = false, -- Disable "Performance Mode" on all buffers.
		ignored_events = { -- Events ignored while scrolling
			"WinScrolled",
			"CursorMoved",
		},
	})
end

M.ibl = function()
	require("ibl").setup()
end

M.ufo = function()
	vim.o.foldcolumn = "1" -- '0' is not bad
	vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
	vim.o.foldlevelstart = 99
	vim.o.foldenable = true

	require("ufo").setup({
		provider_selector = function(bufnr, filetype, buftype)
			return { "treesitter", "indent" }
		end,
	})
end

return M
