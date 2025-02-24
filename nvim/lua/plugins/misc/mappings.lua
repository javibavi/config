local M = {}
local map = vim.keymap.set

M.substitute = function()
	map({"n", "x"}, "<leader>fs", function() require("rip-substitute").sub() end, {})
end

M.grug = function ()
    map("n", "<leader>r", "<cmd>GrugFar<CR>", {})
end

M.undo = function ()
    map('n', '<leader>u', vim.cmd.UndotreeToggle)
end

return M
