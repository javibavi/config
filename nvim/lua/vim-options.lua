vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.timeoutlen = 8000
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.smartindent = false
vim.opt.spell = true


vim.diagnostic.config({
  virtual_text = false,
})

-- Sets the leader key to space
vim.g.mapleader = " "

