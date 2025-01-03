local M = {}
local map = vim.keymap.set
local hl = vim.api.nvim_maphl

M.multicursor = function()
	local mc = require("multicursor-nvim")

	-- Add or skip cursor above/below the main cursor.
	map({ "n", "v" }, "<up>", function()
		mc.lineAddCursor(-1)
	end)
	map({ "n", "v" }, "<down>", function()
		mc.lineAddCursor(1)
	end)
	map({ "n", "v" }, "<leader><up>", function()
		mc.lineSkipCursor(-1)
	end)
	map({ "n", "v" }, "<leader><down>", function()
		mc.lineSkipCursor(1)
	end)

	-- Add or skip adding a new cursor by matching word/selection
	map({ "n", "v" }, "<leader>ma", function()
		mc.matchAddCursor(1)
	end)
	map({ "n", "v" }, "<leader>ms", function()
		mc.matchSkipCursor(1)
	end)

	-- Add all matches in the document
	map({ "n", "v" }, "<leader>A", mc.matchAllAddCursors)

	-- You can also add cursors with any motion you prefer:
	-- map("n", "<right>", function()
	--     mc.addCursor("w")
	-- end)
	-- map("n", "<leader><right>", function()
	--     mc.skipCursor("w")
	-- end)

	-- Rotate the main cursor.
	map({ "n", "v" }, "<left>", mc.nextCursor)
	map({ "n", "v" }, "<right>", mc.prevCursor)

	-- Add and remove cursors with control + left click.
	map("n", "<c-leftmouse>", mc.handleMouse)

	-- Easy way to add and remove cursors using the main cursor.
	map({ "n", "v" }, "<c-q>", mc.toggleCursor)

	map("n", "<esc>", function()
		if not mc.cursorsEnabled() then
			mc.enableCursors()
		elseif mc.hasCursors() then
			mc.clearCursors()
		else
			-- Default <esc> handler.
		end
	end)

	-- bring back cursors if you accidentally clear them
	map("n", "<leader>mr", mc.restoreCursors)

	-- Align cursor columns.
	map("n", "<leader>a", mc.alignCursors)

end

return M
