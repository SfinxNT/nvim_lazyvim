return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_c, { "filetype", icons_enabled = false })
      opts.options.component_separators = { left = "\u{E0B9}", right = "\u{E0BF}" }
      opts.options.section_separators = { left = "\u{E0B8}", right = "\u{E0BE}" }
    end,
  },
}
