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

-- Ansible-vim
vim.g.ansible_extra_keywords_highlight = 1

-- LazyGit one config
vim.g.lazygit_floating_window_use_plenary = 0
vim.g.lazygit_floating_window_scaling_factor = 1
vim.g.lazygit_floating_window_winblend = 0
