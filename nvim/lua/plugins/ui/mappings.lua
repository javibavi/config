local M = {}
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

M.barbar = function()
    -- Move to previous/next
    map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
    map("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
    -- Re-order to previous/next
    map("n", "<leader>bl", "<Cmd>BufferMovePrevious<CR>", opts)
    map("n", "<leader>bn", "<Cmd>BufferMoveNext<CR>", opts)
    -- Goto buffer in position...
    map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
    map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
    map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
    map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
    map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
    map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
    map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
    map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
    map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
    map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
    -- Pin/unpin buffer
    map("n", "<leader>bp", "<Cmd>BufferPin<CR>", opts)
    -- Close buffer
    map("n", "<leader>bc", "<Cmd>BufferClose<CR>", opts)
    -- Wipeout buffer
    --                 :BufferWipeout
    -- Close commands
    --                 :BufferCloseAllButCurrent
    --                 :BufferCloseAllButPinned
    --                 :BufferCloseAllButCurrentOrPinned
    --                 :BufferCloseBuffersLeft
    --                 :BufferCloseBuffersRight
    --Sort automatically by...
    map("n", "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
    map("n", "<leader>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
    map("n", "<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)
end

M.dropbar = function()
    local dropbar_api = require("dropbar.api")
    map("n", "<leader>;", dropbar_api.pick, { desc = "Pick symbols in winbar" })
    map("n", "[;", dropbar_api.goto_context_start, { desc = "Go to start of current context" })
    map("n", "];", dropbar_api.select_next_context, { desc = "Select next context" })
end

M.dash = function()
    map("n", "<leader>h", "<cmd>Dashboard<CR>", {})
end

return M
