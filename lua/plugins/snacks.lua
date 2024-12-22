return {
  {
    "folke/snacks.nvim",
    keys = {

      {
        "<leader>z",
        function()
          require("snacks").terminal(nil, { cwd = vim.fn.expand("%:p:h") })
        end,
        desc = "Terminal Current File",
      },
    },
    ---@style snacks.Config
    opts = {
      ---@type table<string, snacks.win.Config>
      styles = {
        terminal_big = {
          height = 0.8,
          bo = {
            filetype = "snacks_terminal",
          },
          wo = {},
          keys = {
            q = "hide",
            gf = function(self)
              local f = vim.fn.findfile(vim.fn.expand("<cfile>"), "**")
              if f == "" then
                Snacks.notify.warn("No file under cursor")
              else
                self:hide()
                vim.schedule(function()
                  vim.cmd("e " .. f)
                end)
              end
            end,
            term_normal = {
              "<esc>",
              function(self)
                self.esc_timer = self.esc_timer or (vim.uv or vim.loop).new_timer()
                if self.esc_timer:is_active() then
                  self.esc_timer:stop()
                  vim.cmd("stopinsert")
                else
                  self.esc_timer:start(200, 0, function() end)
                  return "<esc>"
                end
              end,
              mode = "t",
              expr = true,
              desc = "Double escape to normal mode",
            },
          },
        },
      },
      terminal = {
        win = { style = "terminal_big" },
      },
      lazygit = { configure = false },
      zen = {
        toggles = {
          dim = true,
          git_signs = false,
          mini_diff_signs = false,
          line_number = false,
          diagnostics = false,
          inlay_hints = false,
          indent = false,
        },
      },
      dashboard = {
        preset = {
          header = [[

                             ▒▒▒                        
                     '     ▒▒▓▓▓▒▒   ∙         ,        
   ,   ▒▒   '           ▒▒▒▒▓▓▓▓▓▒▒                     
      ▒▓▓▒▒▒       ▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒∙       ,    
 ∙   ▓▓▓▓▓▓▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▌░░░▒▐▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒        
∙   ▓▓▓▌▒▐▓▓▓▓▓▓▓▓▓▌░░▒▐▓▓▓▌░░░▒▐▌░▒▐▓▓▌░▒▐▓▌▒▐▓▓▒ ∙    
   ▒▓▓▌░░▒▐▓▓▓▓▓▓▓▌░░░▒▐▓▓▓▓▌░░▒▐▓▓▓▓▓▓▌░░▒▐▌░▐▓▓▒▒     
 , ▒▓▓▓▌░░▒▐▓▓▓▌░▒▐▓▌░░▒▐▓▓▓▌░▒▐▓▌░░▐▓▌░░▐░░░░▒▐▓▓      
   ▒▓▓▓▓▌░░░▒▐▓▓▌░▒▐█▌░░▒▐▓▌░░▒▐▌░░▐▓▌░░▐█▌░▐▌░▒▐▓▒ '   
    ▒▓▓█▌░░▒▌░▒▐▌░▒▐██▌░▒▐▌░░▒▐▌░░▒▐▌░░░▐████▌░░▒▐▒     
     ▒███▌░▒▐▌░░░▒▐████▌░░░▒▒▌░░░▒▐█▌░░░▒▐█▌░░▒▐█▀      
     ∙ ▀██▌▒▐█▌░▒▐██████▌░▒▐█▌░▒▒▐█▌░░░▒▒▐██████▌∙     ∙
   ,   ,▐██▌▐██▌▐████████▌▐██████████████████▀ ∙   , ℳ ₧]],
        },
      },
    },
  },
}
