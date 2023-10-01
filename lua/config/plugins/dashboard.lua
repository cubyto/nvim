local db = require("dashboard")
vim.keymap.set('n', '<leader>nf', ':DashboardNewFile<CR>', {noremap = true})
db.setup({
  theme = "doom",
  config = {
    --preview_file_height = 20,
    --preview_file_width = 70,
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
      ' [ -- Wellcome Cubyto 🐧-- ] ',
      '',
    },
    center = {
      {
        icon = '📝  ',
        desc ='New File                          ',
        action =  'DashboardNewFile',
        key = 'Space n f'
      },
      {
        icon = '🔍🔠 ',
        desc = 'Find  word                              ',
        action = 'Telescope live_grep',
        key = 'Space f g'
      },
      {
        icon = '🔍📂 ',
        desc = 'Find  File                              ',
        action = 'Telescope find_files find_command=rg,--hidden,--files',
        key = 'Space f f'
      },
      {
        icon = '⌛ ',
        desc = 'Recently opened files                   ',
        action =  'Telescope oldfiles',
        key = 'Space f r'
      },
      {
        icon = '🔖  ',
        desc = 'Bookmarks                               ',
        action =  'BookmarkShowAll',
        key = 'b a'
      },
      {
        icon = '🕵  ',
        desc ='File Browser                             ',
        action =  'Telescope file_browser',
        key = 'Space f b'
      },
      {
        icon = '🌵   ',
        desc = 'NvimTree                              ',
        action = 'NvimTreeToggle',
        key = 'Ctrl n'
      },
      {
        icon = '📤   ',
        desc = 'Exit of Neovim                                    ',
        action = ':quit',
      }
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
