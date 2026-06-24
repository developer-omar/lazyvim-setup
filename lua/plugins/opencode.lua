-- https://github.com/sudo-tee/opencode.nvim
-- This plugin provides a bridge between neovim and the opencode AI agent

return {
  "sudo-tee/opencode.nvim",
  opts = {
    default_mode = "plan",
    ui = {
      ---@alias uiPosition "left" | "right"
      ---@type uiPosition
      position = "right",
      window_width = 0.50,
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        anti_conceal = { enabled = false },
        file_types = { "markdown", "opencode_output" },
      },
      ft = { "markdown", "Avante", "copilot-chat", "opencode_output" },
    },
    -- Optional, for file mentions and commands completion, pick only one
    "saghen/blink.cmp",
    -- 'hrsh7th/nvim-cmp',

    -- Optional, for file mentions picker, pick only one
    "folke/snacks.nvim",
    -- 'nvim-telescope/telescope.nvim',
    -- 'ibhagwan/fzf-lua',
    -- 'nvim_mini/mini.nvim',
  },
}
