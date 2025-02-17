local settings = require("plugins.editor.config")
local mappings = require("plugins.editor.mappings")

return {
	{
		"catgoose/nvim-colorizer.lua",
		opts = {},
	},
	{ "numToStr/Comment.nvim",
        config = function ()
            mappings.comment()
        end
    },
	{
		"ya2s/nvim-cursorline",
		config = function()
			settings.cursorline()
		end,
	},
	{
		"jake-stewart/multicursor.nvim",
		branch = "1.0",
		config = function()
			settings.multicursor()
			mappings.multicursor()
		end,
	},
	{
		"kylechui/nvim-surround",
		event = "VeryLazy",
		config = function()
			mappings.surround()
		end,
	},
	{
		"folke/todo-comments.nvim",
		config = function()
			settings.todo()
		end,
	},
	{
		"karb94/neoscroll.nvim",
		config = function()
			settings.neoscroll()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		event = "InsertEnter",
		config = function()
			settings.ibl()
		end,
	},
}
