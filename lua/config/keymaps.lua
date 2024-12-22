-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.keymap.set("n", "<leader>fd", function()
--   require("fzf-lua").files({ cwd = vim.fn.expand("%:p:h") })
-- end, { desc = "Find Files (cwd)" })
vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Oil in floating" })
vim.keymap.set("n", "<leader>cio", "<cmd>Copilot disable<CR>", { desc = "Disable Copilot" })
vim.keymap.set("n", "<leader>cii", "<cmd>Copilot enable<CR>", { desc = "Enable Copilot" })
vim.keymap.set("n", "<leader>z", function()
  os.execute("tmux split-window -v -l 10 -c " .. vim.fn.expand("%:p:h"))
end, { desc = "Tmux split window" })
