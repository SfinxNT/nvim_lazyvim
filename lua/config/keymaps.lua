-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.keymap.set("n", "<leader>sf", LazyVim.pick("grep_string", { search = "" }), { desc = "Fuzzy search" })
local mk = require("which-key")
mk.add({
  {
    "<leader>sf",
    LazyVim.pick("grep_string", { search = "" }),
    desc = "Fuzzy search",
    icon = { icon = " ", color = "blue" },
  },
})
