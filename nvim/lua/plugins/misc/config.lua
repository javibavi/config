local M = {}

M.presence = function()
	require("presence").setup({
		neovim_image_text = "testing to see if any of this works",
	})
end


return M
