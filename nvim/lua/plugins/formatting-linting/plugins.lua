local settings = require("plugins.formatting-linting.config")
local mappings = require("plugins.formatting-linting.mappings")

return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			settings.none()
		end,
	},
}
