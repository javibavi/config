local settings = require("plugins.treesitter.config")
local mappings = require("plugins.treesitter.mappings")

return {
    {
        -- Package for better syntax highlighting
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        dependencies = {
            "OXY2DEV/markview.nvim"
        },
        config = function()
            settings.treesitter()
        end,
    },
    {
        "Wansmer/treesj",
        event = "InsertEnter",
        opts = settings.treesj,
        config = function ()
            mappings.treesj()
        end
    }
}
