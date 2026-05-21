-- https://github.com/nvim-treesitter/nvim-treesitter
-- functions for installing, updating, and removing tree-sitter parsers

return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ["af"] = { query = "@function.outer", desc = "around a function" },
          ["if"] = { query = "@function.inner", desc = "inner part of a function" },
          ["ac"] = { query = "@class.outer", desc = "around a class" },
          ["ic"] = { query = "@class.inner", desc = "inner part of a class" },
          ["ai"] = { query = "@conditional.outer", desc = "around an if statement" },
          ["ii"] = { query = "@conditional.inner", desc = "inner part of an if statement" },
          ["al"] = { query = "@loop.outer", desc = "around a loop" },
          ["il"] = { query = "@loop.inner", desc = "inner part of a loop" },
          ["ap"] = { query = "@parameter.outer", desc = "around parameter" },
          ["ip"] = { query = "@parameter.inner", desc = "inside a parameter" },
        },
      },
    },
  },
  config = function()
    require("nvim-treesitter").install({
      "desktop",
      "htmldjango",
      "luadoc",
      "css",
      "nix",
      "scss",
      "tsx",
    })
  end,
}
