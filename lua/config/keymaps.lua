-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<leader>sf",
  '<cmd>Telescope grep_string search="" only_sort_text=true<cr>',
  { desc = "Fuzzy search" }
)
