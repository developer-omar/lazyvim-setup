-- https://github.com/nvim-lualine/lualine.nvim
-- A blazing fast and easy to configure Neovim statusline written in Lua.

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    sections = {
      lualine_z = { "encoding" },
    },
  },
}
