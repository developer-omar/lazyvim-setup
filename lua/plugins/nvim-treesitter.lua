-- https://github.com/nvim-treesitter/nvim-treesitter
-- functions for installing, updating, and removing tree-sitter parsers

return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    highlight = {
      enable = true,
    },
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
    local ts = require("nvim-treesitter")
    local languages = {
      "desktop",
      "htmldjango",
      "luadoc",
      "css",
      "nix",
      "scss",
      "tsx",
      "blade",
    }
    ts.install(languages)

    -- Treesitter features for installed languages must be enabled manually
    vim.api.nvim_create_autocmd("FileType", {
      pattern = languages,
      callback = function()
        -- Enable native Neovim treesitter highlighting
        vim.treesitter.start()

        -- Configure code folding
        vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        vim.wo.foldmethod = "expr"
        vim.wo.foldlevel = 99

        -- Enable treesitter-based indentation
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
