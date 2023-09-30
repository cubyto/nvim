vim.cmd.colorscheme("night-owl")
vim.cmd[[ set background=dark ]]
-- This Lualine config should be somewhere in your config files
require('night-owl').setup {
    options = {
      -- ... other configs
      theme = 'night-owl'
      -- ... other configs
    }
  }
