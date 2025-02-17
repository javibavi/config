local M = {}

M.treesitter = function()
	-- Gives us access to the functions to config treesitter
	local config = require("nvim-treesitter.configs")
	config.setup({
		-- Ensures we have syntax highlighting installed for any language we encounter
		auto_install = true,
		modules = {},
		ensure_installed = {},
		sync_install = false,
		ignore_install = {},

		-- Enables highlighting and indenting
		highlight = { enable = true },
		indent = { enable = true },
	})
end

M.treesj = function ()
    require("treesj").setup({
        use_default_keymaps = false
    })
end

return M
