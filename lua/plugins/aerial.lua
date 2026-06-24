-- https://github.com/stevearc/aerial.nvim
-- A code outline window for skimming and quick navigation

return {
  "stevearc/aerial.nvim",
  -- Optional dependencies
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  opts = function(_, opts)
    -- opts.layout = opts.layout or {}
    opts.layout.width = 280
    -- Keymap to open the sidebar
    vim.keymap.set("n", "<leader>cs", "<cmd>AerialToggle<cr>")
    -- A list of all symbols to display. Set to false to display all symbols.
    -- This can be a filetype map (see :help aerial-filetype-map)
    -- To see all available values, see :help SymbolKind
    opts.filter_kind = {
      "Class",
      "Property",
      "Constructor",
      "Enum",
      "Function",
      "Variable",
      "Interface",
      "Constant",
      "Module",
      "Method",
      "Struct",
    }
    return opts
  end,
}
