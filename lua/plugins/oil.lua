return {
  {
    "stevearc/oil.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      default_file_explorer = true,
      keymaps = {
        ["q"] = { "actions.close", mode = "n" },
        ["<C-s>"] = { "actions.select", opts = { vertical = true } },
        ["<C-v>"] = { "actions.select", opts = { horizontal = true } },
      },
      view_options = {
        show_hidden = true,
      },
    },
    keys = {
      { "-", "<cmd>Oil --float<CR>", desc = "Oil in floating" },
    },
  },
}
