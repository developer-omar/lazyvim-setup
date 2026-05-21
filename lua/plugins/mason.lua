-- https://github.com/mason-org/mason-lspconfig.nvim
-- allow you to (i) automatically install, and (ii) automatically enable
-- (vim.lsp.enable()) installed servers

-- https://github.com/mason-org/mason.nvim
-- Portable package manager for Neovim that runs everywhere Neovim runs.
-- Easily install and manage LSP servers, DAP servers, linters, and formatters.

return {
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}

      -- Lista tus nuevos servidores aquí
      vim.list_extend(opts.ensure_installed, {
        -- LSP SERVERS
        "vimls",
        "html",
        "cssls",
        "css_variables",
        "emmet_language_server",
        "rnix",
        "laravel_ls",
      })
    end,
  },
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      -- opts.ui.icons = opts.ui.icons or {}
      -- opts.ui.icons = {
      --   package_installed = "✓",
      --   package_pending = "➜",
      --   package_uninstalled = "✗",
      -- }

      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        -- FORMATTERS
        "prettier",
        "blade-formatter",
        "yamlfix",
        -- LINTERS
        "eslint_d",
        "statix",
        "yamllint",
        "markdownlint",
      })
    end,
  },
}
