local M = {}

M.presence = function()
    require("presence").setup({
        neovim_image_text = "testing to see if any of this works",
    })
end

M.substitute = function ()
    require("rip-substitute").setup({})
end

return M
