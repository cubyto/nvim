local db = require("dashboard")
vim.keymap.set('n', '<leader>nf', ':DashboardNewFile<CR>', {noremap = true})
db.setup({
  theme = "doom",
  config = {
    preview_file_height = 20,
    preview_file_width = 70,
    header = {
      '',
      '',
      ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
      ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
      ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
      ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
      ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
      ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
      '',
      ' [ -- Wellcome Cubyto -- ] ',
      '',
    },
    center = {
      {
      icon = '✉  ',
      desc ='New File                          ',
      action =  'DashboardNewFile',
      shortcut = 'Space n f'
      },
      {
      icon = '🔍 ',
      desc = 'Find  word                              ',
      action = 'Telescope live_grep',
      shortcut = 'Space f g'
      },
      {
      icon = '🔍 ',
      desc = 'Find  File                              ',
      action = 'Telescope find_files find_command=rg,--hidden,--files',
      shortcut = 'Space f f'
      },
      {
      icon = '⌚ ',
      desc = 'Recently opened files                   ',
      action =  'Telescope oldfiles',
      shortcut = 'Space f r'
      },
      {
      icon = '🔖  ',
      desc = 'Bookmarks                               ',
      action =  'BookmarkShowAll',
      shortcut = 'b a'
      },
      {
      icon = '  ',
      desc ='File Browser                             ',
      action =  'Telescope file_browser',
      shortcut = 'Space f b'
      },
      {
      icon = '🗃   ',
      desc ='NvimTree                              ',
      action =  'NvimTreeToggle',
      shortcut = 'Ctrl n'
      },
      {
      icon = '⚙  ',
      desc = 'Config in Linux                                    ',
      action =  'edit ~/.config/nvim/lua/config/init.lua',
      shortcut = ''
      },
      {
      icon = '⚙  ',
      desc = 'Config in Windows                                     ',
      action = 'edit ~/Users/emili/AppData/Local/nvim/lua/config/init.lua',
      shortcut = ''
      },
    },
    footer = {
      '',
      '',
      'Cubyto Have a fun time on Neovim',
      '',
      '',
    }
  }
})
