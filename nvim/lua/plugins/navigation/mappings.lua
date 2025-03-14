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
    map("n", "<leader>n", ":Namu symbols<cr>", opts)
end

return M
