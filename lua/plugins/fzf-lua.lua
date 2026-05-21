-- https://github.com/ibhagwan/fzf-lua
-- Fzf-lua aims to be as plug and play as possible with sane defaults
-- Use F1 to show keymaps when you are using fzf in nvim

return {
  "ibhagwan/fzf-lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    winopts = {
      fullscreen = false, -- Use the picker in fullscreen
      preview = {
        wrap = true,
        layout = "vertical", -- flex|horizontal|vertical default flex
        vertical = "down:55%",
      },
    },
    files = {
      -- executed command priority is 'cmd' (if exists)
      -- otherwise auto-detect prioritizes `fd`:`rg`:`find`
      -- default options are controlled by 'fd|rg|find|_opts'
      fd_opts = [[--color=never --hidden --type f --type l --exclude .git --exclude node_modules --exclude vendor --exclude .angular]],
    },
  },
  keys = {
    { "<leader><space>", "<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>", desc = "Find Buffer" },
    { "<leader>sz", "<cmd>FzfLua zoxide<cr>", desc = "Change CWD With Zoxide" },
  },
}
