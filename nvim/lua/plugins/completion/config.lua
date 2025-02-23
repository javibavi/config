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
                return 2
            end
            return 0
        end,
    },

    -- Set keymaps for cycling with tab and S-tab
    keymap = {
        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-e>"] = { "hide", "fallback" },
        ["<CR>"] = { "accept", "fallback" },

        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },

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

return M
