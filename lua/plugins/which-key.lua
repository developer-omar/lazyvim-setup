-- https:/github.com/folke/which-key.nvim
-- WhichKey helps you remember your Neovim keymaps, by showing available keybindings in a popup as you type.
-- Use ctrl+u for navigate up in minibuffer
-- Use ctrl+d for navigate down in minibuffer

return {
  "folke/which-key.nvim",
  opts = {
    -- modern, classsic, helix
    preset = "classic",
    spec = {
      {
        mode = { "n", "v" },
        { "<leader>l", group = "programming language tools", icon = { icon = "󰲌", color = "green" } },
        { "<leader>la", group = "angular", icon = { icon = "", color = "red" } },
        { "<leader>lf", group = "flutter", icon = { icon = "", color = "cyan" } },
        { "<leader>lt", group = "generate types", icon = { icon = "", color = "green" } },
        { "<leader>ll", group = "laravel", icon = { icon = "", color = "red" } },
        { "<leader>o", group = "opencode", icon = { icon = "󱚝", color = "cyan" } },
        -- { "<leader>a", group = "avante ai", icon = { icon = "󱚝", color = "cyan" } },
      },
    },
  },
}
