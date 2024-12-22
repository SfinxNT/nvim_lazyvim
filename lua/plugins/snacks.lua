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
