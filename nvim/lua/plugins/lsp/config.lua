local M = {}

M.lazydev = {
    library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
    },
}

M.mason_lsp_config = {
    ensure_installed = {
        "lua_ls",
        "pyright",
        "clangd",
        "jsonls",
        "jdtls",
    },
}

M.lsp_config = function()
    -- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
    local capabilities = require("blink.cmp").get_lsp_capabilities()
    local lspconfig = require("lspconfig")
    -- Call the setup function for every LSP you have installed
    lspconfig.lua_ls.setup({ capabilities = capabilities })
    lspconfig.pyright.setup({ capabilities = capabilities })
    lspconfig.clangd.setup({
        capabilities = capabilities,
        cmd = {
            "clangd",
            "--fallback-style=webkit",
        },
    })
    lspconfig.jsonls.setup({ capabilities = capabilities })
    lspconfig.jdtls.setup({ capabilities = capabilities })
end

M.rustacean = function()
    vim.g.rustaceanvim = {
        -- Plugin configuration
        tools = {},
        -- LSP configuration
        server = {
            on_attach = function(client, bufnr)
                -- you can also put keymaps in here
                local capabilities = require("cmp_nvim_lsp").default_capabilities()
                client.server_capabilities = vim.tbl_deep_extend("force", client.server_capabilities, capabilities)
            end,
            default_settings = {
                -- rust-analyzer language server configuration
                ["rust-analyzer"] = {},
            },
        },
        -- DAP configuration
        dap = {},
    }
end

M.lightbulb = function()
    require("nvim-lightbulb").setup({
        autocmd = { enabled = true },
    })
end

return M
