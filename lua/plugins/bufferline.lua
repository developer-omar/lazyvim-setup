-- https://github.com/akinsho/bufferline.nvim
-- This plugin shamelessly attempts to emulate the aesthetics of GUI text editors/Doom Emacs

return {
  "akinsho/bufferline.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "[B", false },
    { "]B", false },
    { "<M-S-h>", "<cmd>BufferLineMovePrev<cr>", desc = "Move Buffer Prev" },
    { "<M-S-l>", "<cmd>BufferLineMoveNext<cr>", desc = "Move Buffer Next" },
  },
}
