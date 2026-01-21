vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.timeoutlen = 8000
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.o.updatetime = 1000
vim.opt.signcolumn = "yes:1"

vim.opt.termguicolors = true

vim.opt.smartindent = false
vim.opt.spell = true
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.undodir")
vim.o.splitright = true

vim.diagnostic.config({
	virtual_text = false,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "●",
			[vim.diagnostic.severity.WARN] = "●",
			[vim.diagnostic.severity.HINT] = "●",
			[vim.diagnostic.severity.INFO] = "●",
		},
	},
})
