local settings = require("plugins.editor.config")
local mappings = require("plugins.editor.mappings")

return {
    {
        "catgoose/nvim-colorizer.lua",
        opts = {},
    },
    {
        "numToStr/Comment.nvim",
        opts = mappings.comment,
    },
    {
        "ya2s/nvim-cursorline",
        opts = settings.cursorline,
    },
    {
        "jake-stewart/multicursor.nvim",
        branch = "1.0",
        opts = {},
        config = function()
            mappings.multicursor()
        end,
    },
    {
        "kylechui/nvim-surround",
        event = "VeryLazy",
        opts = mappings.surround,
    },
    {
        "folke/todo-comments.nvim",
        opts = {},
    },
    {
        "karb94/neoscroll.nvim",
        opts = settings.neoscroll,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        event = "InsertEnter",
        opts = {},
    },
}
