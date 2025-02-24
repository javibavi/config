local M = {}

M.whichkey = function()
    local wk = require("which-key")

    wk.add({
        -- Telescope/find mappings
        { "<leader>f",  group = "Find",           desc = "Find" },
        { "<leader>ff", desc = "Files",           mode = "n" },
        { "<leader>fg", desc = "Live Grep",       mode = "n" },
        { "<leader>fb", desc = "Buffers",         mode = "n" },
        { "<leader>fh", desc = "Help Tags",       mode = "n" },
        { "<leader>fn", desc = "Notifications",   mode = "n" },
        { "<leader>fx", desc = "Trouble",         mode = "n" },
        { "<leader>fs", desc = "Substitute",      mode = "n" },
        { "<leader>fa", desc = "Code Action",     mode = "n" },

        -- NvimTree
        { "<leader>n",  desc = "Toggle NvimTree", mode = "n" },

        -- Aerial
        { "<leader>o",  desc = "Toggle Aerial",   mode = "n" },
    })
end

M.glimmer = {
    default_animation = "pulse",
    overwrite = {
        search = {
            enabled = true,
        },
    },
}

M.grug = function()
    require("grug-far").setup({})
end

M.undo = function()
    vim.g.undotree_WindowLayout = 4
    vim.opt.undofile = true
    vim.opt.undodir = vim.fn.expand("~/.undodir")
end

return M
