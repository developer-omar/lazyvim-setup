-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.number = true
vim.opt.relativenumber = true

-- Use spaces instead of tabs
vim.opt.expandtab = true
-- Number of spaces tabs count for
vim.opt.tabstop = 2
-- Size of an indent
vim.opt.shiftwidth = 2
-- Round indent
vim.opt.shiftround = true
-- Enable/Disable mouse mode
-- vim.opt.mouse = "a"
vim.opt.mouse = ""

-- Sync clipboard between OS and Neovim.
-- vim.schedule(function()
-- 	vim.opt.clipboard = "unnamedplus"
-- end)

-- Show which line your cursor is on
-- vim.opt.cursorline = true

-- Termguicolors is enabled
-- vim.opt.termguicolors = true
-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 20

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.opt.confirm = true
vim.wo.wrap = false
-- vim.opt.splitright = true
-- vim.opt.ignorecase = true
-- vim.opt.smartcase = true
-- set a vertical column for 80 characters
vim.opt.colorcolumn = "80"
