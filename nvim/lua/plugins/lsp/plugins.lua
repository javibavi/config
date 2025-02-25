local settings = require("plugins.lsp.config")
local mappings = require("plugins.lsp.mappings")
return {
    {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = settings.lazydev,
    },
    {
        -- Plugin that allows for easy installation of LSPs
        "williamboman/mason.nvim",
        opts = {},
    },
    {
        -- Plugin that allows for certain lsps to be forcefully installed
        "williamboman/mason-lspconfig.nvim",
        opts = settings.mason_lsp_config,
    },
    {
        -- Plugin that allows Neovim to interact with our LSPs
        "neovim/nvim-lspconfig",
        config = function()
            settings.lsp_config()
            mappings.lsp_config()
        end,
    },
    {
        "mrcjkb/rustaceanvim",
        version = "^5", -- Recommended
        lazy = false, -- This plugin is already lazy
        init = function()
            settings.rustacean()
        end,
    },
    {
        "kosayoda/nvim-lightbulb",
        config = function()
            settings.lightbulb()
        end,
    },
}
