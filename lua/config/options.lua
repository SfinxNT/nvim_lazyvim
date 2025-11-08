-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Disable mouse
vim.o.mouse = ""
-- Enable linebreak = ""
vim.o.breakindent = true
vim.o.showbreak = "↪ "

-- Set linebreak width (optional)
vim.o.linebreak = true
vim.o.showbreak = "↪ "
vim.o.breakindentopt = "sbr"

-- Set wrap
vim.wo.wrap = true

-- TOME config
vim.g.tome_no_auto = 1

-- Disable cursorline
vim.o.cursorline = false

-- Disable animate
vim.g.snacks_animate = false

-- Set spell checker language
vim.opt.spelllang = { "ru", "en" }
