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

      -- Add your new LSP Servers here
      local lspServers = {
        vimls = {
          filetypes = { "vim" },
        },
        html = {
          filetypes = { "html", "blade", "php", "vue" }, -- útil for Laravel
        },
        cssls = {
          filetypes = { "css", "scss", "less" },
        },
        emmet_language_server = {
          filetypes = { "html", "css", "blade", "javascriptreact", "typescriptreact", "vue" },
        },
        rnix = {
          filetypes = { "nix" },
        },
        laravel_ls = {
          filetypes = { "php", "blade" },
        },
      }

      -- Installing LSP Servers with mason-lspconfig
      local lspServerNames = vim.tbl_keys(lspServers)
      vim.list_extend(opts.ensure_installed, lspServerNames)

      -- Enabling LSP Servers
      for serverName, config in pairs(lspServers) do
        vim.lsp.config(serverName, config)
        vim.lsp.enable(serverName)
      end
    end,
  },
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        -- Formatters
        "prettier",
        "blade-formatter",
        "yamlfix",
        -- Linters
        "eslint_d",
        "statix",
        "yamllint",
        "markdownlint",
      })
    end,
  },
}
