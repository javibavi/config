local M = {}
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

M.barbar = function()
    -- Move to previous/next
    map("n", "<C-,>", "<Cmd>BufferPrevious<CR>", opts)
    map("n", "<C-.>", "<Cmd>BufferNext<CR>", opts)
    -- Re-order to previous/next
    map("n", "<leader>bl", "<Cmd>BufferMovePrevious<CR>", opts)
    map("n", "<leader>bn", "<Cmd>BufferMoveNext<CR>", opts)
    -- Goto buffer in position...
    map("n", "<C-1>", "<Cmd>BufferGoto 1<CR>", opts)
    map("n", "<C-2>", "<Cmd>BufferGoto 2<CR>", opts)
    map("n", "<C-3>", "<Cmd>BufferGoto 3<CR>", opts)
    map("n", "<C-4>", "<Cmd>BufferGoto 4<CR>", opts)
    map("n", "<C-5>", "<Cmd>BufferGoto 5<CR>", opts)
    map("n", "<C-6>", "<Cmd>BufferGoto 6<CR>", opts)
    map("n", "<C-7>", "<Cmd>BufferGoto 7<CR>", opts)
    map("n", "<C-8>", "<Cmd>BufferGoto 8<CR>", opts)
    map("n", "<C-9>", "<Cmd>BufferGoto 9<CR>", opts)
    map("n", "<C-0>", "<Cmd>BufferLast<CR>", opts)
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
    map("n", "<leader>h", "<cmd>Dashboard<CR>", opts)
end

return M
