-- https://github.com/stevearc/oil.nvim
-- A vim-vinegar like file explorer that lets you edit your filesystem like a normal Neovim buffer.

return {
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      view_options = {
        show_hidden = true,
      },
    },
    -- Optional dependencies
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    keys = {
      { "-", "<cmd>Oil<cr>", mode = "n", desc = "Open A Parent Directory" },
    },
    lazy = false,
  },
}
