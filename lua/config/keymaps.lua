-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`

-- vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("i", "jk", "<ESC>")
-- vim.keymap.set("n", "<leader>K", "<cmd>norm! K<cr>", { desc = "Keywordprg" })

-- Paste over currently selected text without yanking it
-- _ is related to black hole register
vim.keymap.set("v", "p", '"_dp')
vim.keymap.set("v", "P", '"_dP')

-- Select all
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })

-- Enahace the searches
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "*", "*zz")
vim.keymap.set("n", "#", "#zz")
vim.keymap.set("n", "g*", "g*zz", { desc = "Search Without Matching Whole Words" })
vim.keymap.set("n", "g#", "g#zz", { desc = "Backward Search Without Matching Whole Words" })

-- Remap for dealing with visual line wraps
-- util when you have vim.vo.wrap=true al
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

vim.keymap.set({ "i", "n", "v" }, "<c-c>", [[<c-\><c-n>]], { desc = "Escape From Other Modes" })

vim.keymap.set("v", "gS", ":s/\\%V\\<\\w/\\u&/g<cr>gv<esc>:noh<cr>", { desc = "Capitalize Selection" })

-- Duplicate
vim.keymap.set({ "n", "i" }, "<a-d>", "<cmd>t .<cr>", { desc = "Duplicate A Line", silent = true })
vim.keymap.set("v", "<a-d>", "y:'><cr>o<esc>p==gv", { desc = "Duplicate A Block Of Lines", silent = true })

-- Avoid pasting a content instead of writing p in select mode, this when you are working with snippet expansion
vim.keymap.set("s", "p", "<c-o>c" .. "p", { noremap = true })
vim.keymap.set("s", "P", "<c-o>c" .. "P", { noremap = true })
-- Avoid exiting selection mode when erasing selected text with the Backspace key during snippet expansion.
vim.keymap.set("s", "<bs>", "<c-o>c", { noremap = true })

-- Define the open command based on OS to open a file in the web browser
local open_command
if vim.fn.has("mac") == 1 then
  open_command = "open"
elseif vim.fn.has("win32") == 1 then
  open_command = "start"
else
  open_command = "xdg-open"
end
vim.keymap.set("n", "gB", function()
  vim.cmd("silent !" .. open_command .. " " .. vim.fn.expand("%"))
end, { desc = "Open File In The Web Browser" })
-- File type
vim.keymap.set("n", "<leader>bt", "<cmd>set filetype?<cr>", { desc = "File Type Of Current Buffer" })
