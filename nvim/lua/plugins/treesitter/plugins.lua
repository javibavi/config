local settings = require("plugins.treesitter.config")
local mappings = require("plugins.treesitter.mappings")

return {
	{
		-- Package for better syntax highlighting
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
            settings.treesitter()
end,
	},
}
