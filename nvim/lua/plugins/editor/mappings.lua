local M = {}
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

M.multicursor = function()
    local mc = require("multicursor-nvim")

    -- Add or skip cursor above/below the main cursor.
    map({ "n" }, "<up>", function()
        mc.lineAddCursor(-1)
    end)
    map({ "n" }, "<down>", function()
        mc.lineAddCursor(1)
    end)
    map({ "n" }, "<leader>m<up>", function()
        mc.lineSkipCursor(-1)
    end)
    map({ "n" }, "<leader>m<down>", function()
        mc.lineSkipCursor(1)
    end)

    -- Similar to the previous commands, but for matches
    map({ "n" }, "<leader>mn", function()
        mc.matchAddCursor(1)
    end)
    map({ "n" }, "<leader>ms", function()
        mc.matchSkipCursor(1)
    end)
    map({ "n" }, "<leader>mN", function()
        mc.matchAddCursor(-1)
    end)
    map({ "n" }, "<leader>mS", function()
        mc.matchSkipCursor(-1)
    end)

    -- Add all matches in the document
    map({ "n" }, "<leader>mA", mc.matchAllAddCursors)

    -- Rotate the main cursor.
    map({ "n" }, "<left>", mc.prevCursor)
    map({ "n" }, "<right>", mc.nextCursor)

    -- Add and remove cursors with control + left click.
    map("n", "<c-leftmouse>", mc.handleMouse)

    -- Easy way to add and remove cursors using the main cursor.
    map({ "n" }, "<c-q>", mc.toggleCursor)

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
    map("n", "<leader>ma", mc.alignCursors)
end

M.comment = {
    ---Add a space b/w comment and the line
    padding = true,
    ---Whether the cursor should stay at its position
    sticky = true,
    ---Lines to be ignored while (un)comment
    ignore = nil,
    ---LHS of toggle mappings in NORMAL mode
    toggler = {
        ---Line-comment toggle keymap
        line = "gcc",
        ---Block-comment toggle keymap
        block = "gbc",
    },
    ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
        ---Line-comment keymap
        line = "gc",
        ---Block-comment keymap
        block = "gb",
    },
    ---LHS of extra mappings
    extra = {
        ---Add comment on the line above
        above = "gcO",
        ---Add comment on the line below
        below = "gco",
        ---Add comment at the end of line
        eol = "gcA",
    },
    ---Enable keybindings
    ---NOTE: If given `false` then the plugin won't create any mappings
    mappings = {
        ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = true,
        ---Extra mapping; `gco`, `gcO`, `gcA`
        extra = true,
    },
    ---Function to call before (un)comment
    pre_hook = nil,
    ---Function to call after (un)comment
    post_hook = nil,
}

M.surround = {
    -- Configuration here, or leave empty to use defaults
    keymaps = {
        insert = "<C-g>s",
        insert_line = "<C-g>S",
        normal = "ys",
        normal_cur = "yss",
        normal_line = "yS",
        normal_cur_line = "ySS",
        visual = "S",
        visual_line = "gS",
        delete = "ds",
        change = "cs",
        change_line = "cS",
    },
}

return M
