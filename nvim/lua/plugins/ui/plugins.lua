local settings = require("plugins.ui.config")
local mappings = require("plugins.ui.mappings")
return {
    {
        "romgrk/barbar.nvim",
        init = function()
            settings.barbar()
        end,
        config = function()
            mappings.barbar()
        end,
    },
    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
        },
        opts = {},
    },
    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        config = function()
            settings.dash()
            mappings.dash()
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            settings.lualine()
        end,
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
        config = function()
            settings.noice()
        end,
    },
    {
        -- This is the colorscheme plugin
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        priority = 1000,

        config = function()
            settings.rosepine()
        end,
    },
}
