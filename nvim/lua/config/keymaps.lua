local map = vim.keymap.set
local s = { silent = true }

map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", s)
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", s)
map("n", "<leader>fa", "<cmd>lua vim.lsp.buf.code_action()<CR>", s)
map("n", "gf", "<cmd>lua vim.lsp.buf.format()<CR>", s)
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", s)
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", s)
map("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", s)
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", s)
map("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", s)
map("n", "gR", "<cmd>lua vim.lsp.buf.rename()<cr>", s)

-- Better window navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Clear search highlights
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Move lines up/down
map("n", "<A-j>", ":m .+1<CR>==")
map("n", "<A-k>", ":m .-2<CR>==")
