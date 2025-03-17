vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.timeoutlen = 8000
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.o.updatetime = 1000
vim.opt.signcolumn = "yes:1"

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
vim.g.maplocalleader = "\\"

local signs = { Error = "●", Warn = "●", Hint = "●", Info = "●" }

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end


-- General mappings for the quickfix
local map = vim.keymap.set
map("n", "<leader>qo", ":copen<CR>", { silent = true, desc = "Open Quickfix" })
map("n", "<leader>qc", ":cclose<CR>", { silent = true, desc = "Close Quickfix" })
map("n", "]q", ":cnext<CR>", { silent = true, desc = "Next Quickfix Item" })
map("n", "[q", ":cprev<CR>", { silent = true, desc = "Previous Quickfix Item" })
map("n", "<leader>ql", ":clist<CR>", { silent = true, desc = "List Quickfix Items" })
