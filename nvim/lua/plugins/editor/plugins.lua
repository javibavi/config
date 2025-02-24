local settings = require("plugins.editor.config")
local mappings = require("plugins.editor.mappings")

return {
    {
        "catgoose/nvim-colorizer.lua",
        opts = {},
        event = "BufReadPre"
    },
    {
        "numToStr/Comment.nvim",
        opts = mappings.comment,
        event = "BufReadPre"
    },
    {
        "ya2s/nvim-cursorline",
        opts = settings.cursorline,
    },
    {
        "jake-stewart/multicursor.nvim",
        branch = "1.0",
        config = function()
            settings.multicursor()
            mappings.multicursor()
        end,
        event = "BufReadPre"
    },
    {
        "kylechui/nvim-surround",
        event = "VeryLazy",
        opts = mappings.surround,
    },
    {
        "folke/todo-comments.nvim",
        opts = {},
        event = "BufReadPre"
    },
    {
        "karb94/neoscroll.nvim",
        opts = settings.neoscroll,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        event = "BufReadPre",
        opts = {},
    },
}
