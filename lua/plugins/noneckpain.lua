return {
  {
    "shortcuts/no-neck-pain.nvim",
    event = "VeryLazy",
    opts = {
      width = 120,
      bufferOptionsColors = {
        blend = -0.5,
      },
    },
    keys = {
      -- toggle plugin
      { "<leader>nn", "<cmd>NoNeckPain<cr>", desc = "Toggle NoNeckPain" },
    },
  },
}
