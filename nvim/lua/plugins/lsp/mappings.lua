local M = {}
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

M.lsp_config = function()
    map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
    map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
    map("n", "<leader>fa", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
    map("n", "gf", "<cmd>lua vim.lsp.buf.format()<CR>", opts)
    map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
    map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
    map("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
    map("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
    map("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
    map("n", "gR", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
end

return M
