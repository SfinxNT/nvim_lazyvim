return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-frappe",
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        sh = { "shellharden", "shellcheck" },
      },
    },
  },
  { "MeanderingProgrammer/render-markdown.nvim", opts = {
    code = {
      style = "language",
    },
  } },
}
