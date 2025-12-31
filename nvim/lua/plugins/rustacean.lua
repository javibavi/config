return {
	"mrcjkb/rustaceanvim",
	lazy = false,
	init = function()
		vim.g.rustaceanvim = {
			-- LSP configuration
			server = {
				on_attach = function(client, _)
					-- you can also put keymaps in here
					-- Get capabilities directly from blink.cmp instead of cmp_nvim_lsp
					local capabilities = require("blink.cmp").get_lsp_capabilities()
					client.server_capabilities = vim.tbl_deep_extend("force", client.server_capabilities, capabilities)

					-- Optional: Set updatetime to control diagnostic update frequency
					vim.opt.updatetime = 300
				end,
				default_settings = {
					-- rust-analyzer language server configuration
					["rust-analyzer"] = {
						diagnostics = {
							enable = true,
							experimental = {
								enable = true,
							},
						},
					},
				},
			},
		}
	end,
}
