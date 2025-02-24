local M = {}
local map = vim.keymap.set

M.diffview = function()
    -- Diffview bindings
    map("n", "<leader>gd", ":DiffviewOpen<CR>", { desc = "Open Git diff view" })
    map("n", "<leader>gD", ":DiffviewClose<CR>", { desc = "Close Git diff view" })
end

M.conflict = function()
    -- Git conflict navigation
    map("n", "<leader>gj", "<Plug>(git-conflict-next-conflict)", { desc = "Next conflict" })
    map("n", "<leader>gk", "<Plug>(git-conflict-prev-conflict)", { desc = "Previous conflict" })
    map("n", "<leader>g1", "<Plug>(git-conflict-ours)", { desc = "Use ours" })
    map("n", "<leader>g2", "<Plug>(git-conflict-theirs)", { desc = "Use theirs" })
    map("n", "<leader>g3", "<Plug>(git-conflict-both)", { desc = "Use both" })
    map("n", "<leader>g0", "<Plug>(git-conflict-none)", { desc = "Use none" })
end

return M
