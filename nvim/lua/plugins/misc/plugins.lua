local settings = require("plugins.misc.config")
local mappings = require("plugins.misc.mappings")

return {
    {
        "andweeb/presence.nvim",
        config = function()
            settings.presence()
        end,
    },
    {
        "folke/trouble.nvim",
        cmd = "Trouble",
        config = function()
            mappings.trouble()
        end,
    },
    {
        "OXY2DEV/markview.nvim",
        lazy = false, -- Recommended

        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons",
        },
    },
}
