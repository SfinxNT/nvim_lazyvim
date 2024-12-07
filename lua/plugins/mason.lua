return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "mypy",
        "ruff",
        "ansible-language-server",
        "ansible-lint",
        "yaml-language-server",
        "yamlfix",
        "yamlfmt",
        "gopls",
      },
    },
  },
}
