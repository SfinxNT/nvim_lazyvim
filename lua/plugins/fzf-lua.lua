return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("fzf-lua").setup({ "telescope" })
    end,
    keys = {
      {
        "<leader>fF",
        function()
          require("fzf-lua").files({ cwd = vim.fn.expand("%:p:h") })
        end,
        desc = "Find Files (cwd)",
      },
      {
        "<leader>sG",
        function()
          require("fzf-lua").live_grep_native({ cwd = vim.fn.expand("%:p:h") })
        end,
        desc = "Grep (cwd)",
      },
    },
  },
}
