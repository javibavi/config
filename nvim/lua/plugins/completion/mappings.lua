local M = {}
local map = vim.keymap.set

--Generate some mappings in a function for CopilotChat plugin in lua without vimscript.
--The plugin is called CopilotChat and I need mappings for the following:
--Toggle open/close the chat window
--Stop current output
--Send the current line to the chat
--Send the current selection to the chat
--Send the current buffer to the chat
--View and select prompt templates
--View and select models
--Use a specific prompt template
--Dont use <cmd> lua require for anything, just use <cmd>CopilotChatToggle<CR> for example

M.chat = function()
    -- General mappings for both normal and visual modes
    map({"n", "v"}, "<leader>ce", "<cmd>CopilotChatExplain<CR>", { noremap = true, silent = true })
    map({"n", "v"}, "<leader>cf", "<cmd>CopilotChatFix<CR>", { noremap = true, silent = true })
    map({"n", "v"}, "<leader>ct", "<cmd>CopilotChatTests<CR>", { noremap = true, silent = true })
    map({"n", "v"}, "<leader>co", "<cmd>CopilotChatOptimize<CR>", { noremap = true, silent = true })
    map({"n", "v"}, "<leader>cC", "<cmd>CopilotChatCommit<CR>", { noremap = true, silent = true })
    map({"n", "v"}, "<leader>cd", "<cmd>CopilotChatDocs<CR>", { noremap = true, silent = true })
    
    -- Normal mode only mappings
    map("n", "<leader>cc", "<cmd>CopilotChatToggle<CR>", { noremap = true, silent = true })
    map("n", "<leader>cs", "<cmd>CopilotChatStop<CR>", { noremap = true, silent = true })
    map("n", "<leader>cr", "<cmd>CopilotChatReset<CR>", { noremap = true, silent = true })
    map("n", "<leader>cp", "<cmd>CopilotChatPrompts<CR>", { noremap = true, silent = true })
    map("n", "<leader>cm", "<cmd>CopilotChatModels<CR>", { noremap = true, silent = true })
    
end

return M
