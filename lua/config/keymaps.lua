-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>z", function()
  os.execute("tmux split-window -v -l 10 -c " .. vim.fn.expand("%:p:h"))
end, { desc = "Tmux split window" })
