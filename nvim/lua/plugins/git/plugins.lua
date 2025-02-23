local settings = require("plugins.git.config")
local mappings = require("plugins.git.mappings")

return {
	{
		"lewis6991/gitsigns.nvim",
		opts = settings.gitsigns,
	},
}
