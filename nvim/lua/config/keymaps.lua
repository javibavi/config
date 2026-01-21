local map = vim.keymap.set
local s = { silent = true }

-- Sets the leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", s)
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", s)
map("n", "<leader>fa", "<cmd>lua vim.lsp.buf.code_action()<CR>", s)
map("n", "gf", function()
  require("conform").format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  })
end, s)
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", s)
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", s)
map("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", s)
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", s)
map("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", s)
map("n", "gR", "<cmd>lua vim.lsp.buf.rename()<cr>", s)
map("n", "gF", "<cmd>edit <cfile><CR>", s)

-- Better window navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Clear search highlights
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Move lines up/down
map("n", "<A-b>j", ":m .+1<CR>==")
map("n", "<A-b>k", ":m .-2<CR>==")

-- Quickfix
map("n", "<leader>qo", ":copen<CR>", { silent = true, desc = "Open Quickfix" })
map("n", "<leader>qc", ":cclose<CR>", { silent = true, desc = "Close Quickfix" })
map("n", "]q", ":cnext<CR>", { silent = true, desc = "Next Quickfix Item" })
map("n", "[q", ":cprev<CR>", { silent = true, desc = "Previous Quickfix Item" })
map("n", "<leader>ql", ":clist<CR>", { silent = true, desc = "List Quickfix Items" })
