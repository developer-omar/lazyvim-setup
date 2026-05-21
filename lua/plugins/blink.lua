-- https://github.com/saghen/blink.cmp
-- https://cmp.saghen.dev/installation for documentation
-- blink.cmp is a completion plugin with support for LSPs, cmdline, signature help, and snippets.

return {
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
      },
      default = { "lazydev", "lsp", "path", "snippets", "buffer" },
    },
  },
}
