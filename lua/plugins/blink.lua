-- https://github.com/saghen/blink.cmp
-- https://cmp.saghen.dev/installation for documentation
-- blink.cmp is a completion plugin with support for LSPs, cmdline, signature help, and snippets.

return {
  {
    "saghen/blink.compat",
    -- use v2.* for blink.cmp v1.*
    version = "2.*",
    -- lazy.nvim will automatically load the plugin when it's required by blink.cmp
    lazy = true,
    -- make sure to set opts so that lazy.nvim calls blink.compat's setup
    opts = {},
  },
  {
    "saghen/blink.cmp",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    opts = {
      keymap = {
        -- <c-e>: Hide menu
        -- <c-k>: Toggle signature help
        --
        -- See :h blink-cmp-config-keymap for defining your own keymap
        preset = "enter",
        ["<c-k>"] = { "select_prev", "fallback" },
        ["<c-j>"] = { "select_next", "fallback" },
        -- Works when luasnip is selected as preset in snippets
        ["<Tab>"] = { "snippet_forward", "fallback" },
        ["<S-Tab>"] = { "snippet_backward", "fallback" },

        -- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:
        --    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps
      },
      sources = {
        providers = {
          snippets = {
            opts = {
              friendly_snippets = true,
              -- Adding framework snippets to a filetype
              extended_filetypes = {
                typescript = { "angular" },
                html = { "angular" },
              },
            },
          },
          laravel = {
            name = "laravel",
            module = "blink.compat.source",
            score_offset = 95, -- show at a higher priority than lsp
          },
        },
        default = { "lazydev", "lsp", "path", "snippets", "buffer" },
      },
      snippets = {
        -- Use neovim engine for snippets, posible values default, luasnip
        preset = "luasnip",
      },
    },
  },
}
