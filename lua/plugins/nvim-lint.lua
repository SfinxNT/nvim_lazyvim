return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        dockerfile = { "hadolint", "trivy" },
        ["yaml.ansible"] = { "ansible_lint" },
      },
    },
  },
}
