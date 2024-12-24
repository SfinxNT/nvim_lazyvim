return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    opts = {
      formatters_by_ft = {
        sh = { "shellharden", "shellcheck" },
        python = { "ruff_format" },
        ["yaml.ansible"] = { "yamlfmt" },
      },
    },
  },
}
