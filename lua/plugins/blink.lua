return {
  {
    "saghen/blink.cmp",
    enabled = true,
    opts = {
      fuzzy = {
        prebuilt_binaries = {
          force_version = "v0.8.2",
        },
      },
      keymap = {
        preset = "default",
      },
      sources = {
        providers = {
          copilot = {
            name = "copilot",
            enabled = true,
            module = "blink-cmp-copilot",
            kind = "Copilot",
            score_offset = -100,
            async = true,
          },
        },
      },
    },
  },
}
