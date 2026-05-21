-- https://github.com/matthiasweiss/angular-quickswitch.nvim
-- I usually only use the shortcut to toggle between the class definition and
-- template of an Angular component.

-- https://github.com/simaxme/oil-angular-schematics.nvim
-- A simple plugin that allows the creation of angular schematics inside your oil window.
-- TODO: arreglar esto en el which-key
-- TODO: mover mis snippets para usar con esta configuracion
return {
  {
    "matthiasweiss/angular-quickswitch.nvim",
    opts = {},
    keys = {
      {
        "<Leader>lac",
        "<Cmd>NgQuickSwitchComponent<CR>",
        mode = { "n", "x" },
        desc = "Open Angular Component File",
        silent = true,
      },
      {
        "<Leader>lat",
        "<Cmd>NgQuickSwitchTemplate<CR>",
        mode = { "n", "x" },
        desc = "Open Angular Template File",
        silent = true,
      },
      {
        "<Leader>laT",
        "<Cmd>NgQuickSwitchTest<CR>",
        mode = { "n", "x" },
        desc = "Open Angular Test File",
        silent = true,
      },
    },
  },
  {
    "simaxme/oil-angular-schematics.nvim",
    version = "*", -- for stable releases
    keys = {
      -- Open always when you are navigating into oil file explorer
      {
        "<leader>las",
        function()
          require("oil-angular-schematics").create_angular_schematic()
        end,
        mode = "n",
        desc = "Open Angular Schematics",
      },
    },
  },
}
