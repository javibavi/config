local settings = require("plugins.editor.config")
local mappings = require("plugins.editor.mappings")

return {
    { "catgoose/nvim-colorizer.lua" },
    { "numToStr/Comment.nvim" },
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
            settings.surround()
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
    {
        "kevinhwang91/nvim-ufo",
        dependencies = {
            "kevinhwang91/promise-async",
        },
        event = "InsertEnter",
        config = function ()
            settings.ufo()
        end
    },
}
