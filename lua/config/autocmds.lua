-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Save view for Markdown files
vim.cmd([[
augroup remember_folds
  autocmd!
  au BufWinLeave *.md mkview
  au BufWinEnter *.md silent! loadview
augroup END
]])
