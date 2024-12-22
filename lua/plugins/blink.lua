return {
  {
    "saghen/blink.cmp",
    enabled = true,
    opts = {
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
