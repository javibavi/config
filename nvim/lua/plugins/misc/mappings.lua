local M = {}
local map = vim.keymap.set

M.substitute = function()
	map({"n", "x"}, "<leader>fs", function() require("rip-substitute").sub() end, {})
end

return M
