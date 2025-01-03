local M = {}

M.mason = function()
	require("mason").setup()
end

M.mason_lsp_config = function()
	require("mason-lspconfig").setup({
		ensure_installed = {
			"lua_ls",
			"pyright",
			"clangd",
			"jsonls",
			"jdtls",
		},
	})
end

M.lsp_config = function()
	-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
	local capabilities = require("cmp_nvim_lsp").default_capabilities()
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

return M
