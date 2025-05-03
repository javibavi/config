local M = {}
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

M.leap = function()
	map("n", "s", "<Plug>(leap)")
	map("n", "S", "<Plug>(leap-from-window)")
	map({ "x", "o" }, "s", "<Plug>(leap)")
end

M.aerial = function ()
    map("n", "<leader>a", "<cmd>AerialToggle<CR>", opts)
end

M.namu = function ()
    map("n", "<leader>ns", ":Namu symbols<cr>", opts)
    map("n", "<leader>nw", ":Namu watchtower<cr>", opts)
    map("n", "<leader>nd", ":Namu diagnostics<cr>", opts)
    map("n", "<leader>nh", ":Namu call both<cr>", opts)
end

return M
