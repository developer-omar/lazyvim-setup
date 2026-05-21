-- https://github.com/rafamadriz/friendly-snippets
-- Snippets collection for a set of different programming languages.

return {
  "rafamadriz/friendly-snippets",
  dependencies = {
    "L3MON4D3/LuaSnip",
  },
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()
    -- User snippets
    local configPath = vim.fn.stdpath("config")
    require("luasnip.loaders.from_vscode").lazy_load({ paths = { configPath .. "/snippets" } })
  end,
}
