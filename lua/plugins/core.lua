return {
  -- Configure LazyVim to load catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-frappe",
    },
  },

  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
        dockerls = {},
        terraformls = {},
        ansiblels = {
          filetypes = {
            "yaml.ansible",
            "ansible",
          },
        },
        yamlls = {},
      },
    },
  },

  {
    "nvimtools/none-ls.nvim",
    optional = true,
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = opts.sources or {}
      table.insert(opts.sources, nls.builtins.formatting.autoflake)
      table.insert(opts.sources, nls.builtins.formatting.isort)
      table.insert(opts.sources, nls.builtins.formatting.black)
      table.insert(opts.sources, nls.builtins.diagnostics.mypy)
      table.insert(opts.sources, nls.builtins.diagnostics.ruff)
    end,
  },

  -- the opts function can also be used to change the default opts:
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_c, { "filetype", icons_enabled = false })
    end,
  },

  -- add jsonls and schemastore packages, and setup treesitter for json, json5 and jsonc
  { import = "lazyvim.plugins.extras.lang.json" },

  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "autoflake",
        "isort",
        "black",
        "mypy",
        "ruff",
        "ansible-language-server",
        "ansible-lint",
        "yaml-language-server",
        "yamlfix",
        "yamlfmt",
      },
    },
  },

  {
    "pearofducks/ansible-vim",
    event = "BufReadPost",
  },

  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        python = { "autoflake", "isort", "black" },
        yaml = { "yamlfix", "yamlfmt" },
      },
    },
  },
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
  {
    "kdheepak/lazygit.nvim",
    event = "VeryLazy",
  },
  {
    "folke/zen-mode.nvim",
    dependencies = { "folke/twilight.nvim" },
    event = "VeryLazy",
    opts = {
      window = {
        backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
        -- height and width can be:
        -- * an absolute number of cells when > 1
        -- * a percentage of the width / height of the editor when <= 1
        -- * a function that returns the width or the height
        width = 120, -- width of the Zen window
        height = 1, -- height of the Zen window
        -- by default, no options are changed for the Zen window
        -- uncomment any of the options below, or add other vim.wo options you want to apply
        options = {
          signcolumn = "no", -- disable signcolumn
          number = false, -- disable number column
          relativenumber = false, -- disable relative numbers
          -- cursorline = false, -- disable cursorline
          -- cursorcolumn = false, -- disable cursor column
          -- foldcolumn = "0", -- disable fold column
          -- list = false, -- disable whitespace characters
        },
      },
      plugins = {
        -- disable some global vim options (vim.o...)
        -- comment the lines to not apply the options
        options = {
          enabled = true,
          ruler = false, -- disables the ruler text in the cmd line area
          showcmd = false, -- disables the command in the last line of the screen
          -- you may turn on/off statusline in zen mode by setting 'laststatus'
          -- statusline will be shown only if 'laststatus' == 3
          laststatus = 0, -- turn off the statusline in zen mode
        },
        twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
        gitsigns = { enabled = false }, -- disables git signs
        tmux = { enabled = true }, -- disables the tmux statusline
      },
    },
    keys = {
      -- toggle plugin
      { "<leader>nz", "<cmd>ZenMode<cr>", desc = "Toggle ZenMode" },
    },
  },
}
