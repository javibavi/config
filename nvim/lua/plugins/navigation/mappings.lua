local M = {}
local map = vim.keymap.set

M.leap = function()
	map("n", "s", "<Plug>(leap)")
	map("n", "S", "<Plug>(leap-from-window)")
	map({ "x", "o" }, "s", "<Plug>(leap-forward)")
	map({ "x", "o" }, "S", "<Plug>(leap-backward)")
end

return M
