return {
  {
    "rafamadriz/friendly-snippets",
    enabled = false,
  },
  {
    "L3MON4D3/LuaSnip",
    -- dependencies = {
    --   "rafamadriz/friendly-snippets",
    -- },
    opts = function(_, opts)
      opts.history = true
      opts.updateevents = "TextChanged,TextChangedI"

      -- SNIPPETS IN VSCODE FORMAT

      -- Load from friendly-snippets
      -- require("luasnip.loaders.from_vscode").lazy_load()

      -- Load custom snippets in vscode format
      -- require("luasnip.loaders.from_vscode").lazy_load({
      --   paths = { vim.fn.stdpath("config") .. "/snippets/vscode" },
      -- })

      -- SNIPPETS IN LUA FORMAT
      local ls = require("luasnip")

      ls.filetype_extend("typescript", { "common-js-ts", "todos", "react", "vue-ts", "vitest" })
      ls.filetype_extend("typescriptreact", { "common-js-ts", "todos", "react", "vitest" })
      ls.filetype_extend("vue", { "common-js-ts", "todos", "vue" })
      ls.filetype_extend("lua", { "lua", "todos" })
      ls.filetype_extend("html", { "angular-html" })
      ls.filetype_extend("php", { "php", "todos" })
      ls.filetype_extend("markdown", { "markdown" })

      -- Load custom snippets in luasnip format
      require("luasnip.loaders.from_lua").lazy_load({
        paths = { vim.fn.stdpath("config") .. "/snippets/lua-snippets/" },
      })
    end,
  },
}
