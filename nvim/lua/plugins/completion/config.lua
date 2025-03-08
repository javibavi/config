local M = {}

-- Set up blink.cmp plugin
M.blink = {
    -- In case my theme depends on nvim_cmp
    appearance = {
        use_nvim_cmp_as_default = true,
    },
    --
    -- Enabling the signature highlights (might get rid of this for colofulmenu)
    signature = {
        enabled = true,
    },

    -- Added luasnip to the snippets table
    snippets = { preset = "luasnip" },

    -- Config for the various sources
    sources = {
        default = {
            "lsp",
            "path",
            "rustaceanvim",
            "snippets",
        },

        -- Setup rustaceanvim as a compatible source
        providers = {
            rustaceanvim = {
                name = "rustaceanvim",
                module = "blink.compat.source",
                score_offset = -3,
            },
        },

        -- Get rid of commandline completion when input is short
        min_keyword_length = function(ctx)
            -- only applies when typing a command, doesn't apply to arguments
            if ctx.mode == "cmdline" and string.find(ctx.line, " ") == nil then
                return 3
            end
            return 0
        end,
    },

    -- Set keymaps for cycling with tab and S-tab
    keymap = {
        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-e>"] = { "hide", "fallback" },
        ["<CR>"] = { "accept", "fallback" },

        ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
        ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },

        ["<Up>"] = { "snippet_backward", "fallback" },
        ["<Down>"] = { "snippet_forward", "fallback" },
        ["<C-p>"] = { "select_prev", "fallback" },
        ["<C-n>"] = { "select_next", "fallback" },

        ["<C-b>"] = { "scroll_documentation_up", "fallback" },
        ["<C-f>"] = { "scroll_documentation_down", "fallback" },

        ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
    },

    -- For colorfulmenu plugin
    completion = {
        menu = {
            draw = {
                -- We don't need label_description now because label and label_description are already
                -- combined together in label by colorful-menu.nvim.
                columns = { { "kind_icon" }, { "label", gap = 1 } },
                components = {
                    label = {
                        text = function(ctx)
                            return require("colorful-menu").blink_components_text(ctx)
                        end,
                        highlight = function(ctx)
                            return require("colorful-menu").blink_components_highlight(ctx)
                        end,
                    },
                },
            },
        },
    },
}

M.copilot = function()
    require("copilot").setup({
        panel = {
            enabled = true,
            auto_refresh = true,
            keymap = {
                jump_prev = "[[",
                jump_next = "]]",
                accept = "<CR>",
                refresh = "gr",
                open = "<M-CR>",
            },
            layout = {
                position = "bottom", -- | top | left | right | horizontal | vertical
                ratio = 0.4,
            },
        },
        suggestion = {
            enabled = true,
            auto_trigger = false,
            hide_during_completion = true,
            debounce = 75,
            keymap = {
                accept = "<C-a>",
                accept_word = false,
                accept_line = false,
                next = "<M-n>",
                prev = "<M-p>",
                dismiss = "<M-space>",
            },
        },
        filetypes = {
            yaml = false,
            markdown = false,
            help = false,
            gitcommit = false,
            gitrebase = false,
            hgcommit = false,
            svn = false,
            cvs = false,
            ["."] = false,
        },
        copilot_node_command = "node", -- Node.js version must be > 18.x
        server_opts_overrides = {},
    })
end

M.chat = function()
    require("CopilotChat").setup({

        -- Shared config starts here (can be passed to functions at runtime and configured via setup function)

        model = "claude-3.7-sonnet", -- Default model to use, see ':CopilotChatModels' for available models (can be specified manually in prompt via $).
        agent = "copilot",     -- Default agent to use, see ':CopilotChatAgents' for available agents (can be specified manually in prompt via @).
        -- default mappings
        -- see config/mappings.lua for implementation
        mappings = {
            complete = {
                insert = "<Tab>",
            },
            close = {
                normal = "q",
                insert = "<C-c>",
            },
            reset = {
                normal = "<C-,>",
                insert = "<C-,>",
            },
            submit_prompt = {
                normal = "<CR>",
                insert = "<C-s>",
            },
            toggle_sticky = {
                detail = "Makes line under cursor sticky or deletes sticky line.",
                normal = "gr",
            },
            accept_diff = {
                normal = "<C-y>",
                insert = "<C-y>",
            },
            jump_to_diff = {
                normal = "gj",
            },
            quickfix_answers = {
                normal = "gqa",
            },
            quickfix_diffs = {
                normal = "gqd",
            },
            yank_diff = {
                normal = "gy",
                register = '"', -- Default register to use for yanking
            },
            show_diff = {
                normal = "gd",
                full_diff = false, -- Show full diff instead of unified diff when showing diff window
            },
            show_info = {
                normal = "gi",
            },
            show_context = {
                normal = "gc",
            },
            show_help = {
                normal = "gh",
            },
        },
    })
end

return M
