return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    dependencies = "nvim-tree/nvim-web-devicons",
    init = function()
      local bufline = require("catppuccin.groups.integrations.bufferline")
      function bufline.get()
        return bufline.get_theme()
      end
    end,
    opts = {
      options = {
        show_buffer_close_icons = false,
        show_close_icon = false,
        separator_style = { "▕", "▕" },
        numbers = "none",
      },
    },
  },
}
