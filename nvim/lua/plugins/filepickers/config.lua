local M = {}

M.nvimtree = function()
    require("nvim-tree").setup({
        sort = {
            sorter = "case_sensitive",
        },
        view = {
            width = 40,
            side = "right",
        },
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = false,
        },
        git = {
            enable = true,
            ignore = false,
        },
    })
end

M.telescope = function()
    require("telescope").setup({
        extensions = {
            ["ui-select"] = {
                require("telescope.themes").get_dropdown({
                    -- even more opts
                }),
            },
        },
        pickers = {
            find_files = {
                hidden = true, -- Include hidden files (dotfiles)
            },
        },
    })

    -- To get ui-select loaded and working with telescope, you need to call
    -- load_extension, somewhere after setup function:
    require("telescope").load_extension("ui-select")
end

return M
