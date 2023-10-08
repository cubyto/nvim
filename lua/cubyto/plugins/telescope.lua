return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope-file-browser.nvim",
    "aaronhallaert/advanced-git-search.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    
    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, --> move to prev result
            ["<C-j>"] = actions.move_selection_next, --> move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          }
        }
      },
      extensions = {
        file_browser = {
          theme = "ivy",
          -- disables netrw and use telescope-file-browser in its place
          hijack_netrw = true,
          mappings = {
            ["i"] = {
              ["<C-k>"] = actions.move_selection_previous, --> move to prev result
              ["<C-j>"] = actions.move_selection_next, --> move to next result
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
            ["n"] = {
              -- your custom normal mode mappings
            },
          },
        },
        advanced_git_search = {
          -- fugitive or diffview
          diff_plugin = "fugitive",
          -- customize git in previewer
          -- e.g. flags such as { "--no-pager" }, or { "-c", "delta.side-by-side=false" }
          git_flags = {},
          -- customize git diff in previewer
          -- e.g. flags such as { "--raw" }
          git_diff_flags = {},
          -- Show builtin git pickers when executing "show_custom_functions" or :AdvancedGitSearch
          show_builtin_git_pickers = false,
          entry_default_author_or_date = "author", -- one of "author" or "date"
    
          -- Telescope layout setup
          telescope_theme = {
              function_name_1 = {
                  -- Theme options
              },
              function_name_2 = "dropdown",
              -- e.g. realistic example
              show_custom_functions = {
                  layout_config = { width = 0.4, height = 0.4 },
              },
    
          }
        }
      }
    })
    require("telescope").load_extension "file_browser"
    require("telescope").load_extension "advanced_git_search" 
    require("telescope").load_extension "neoclip" 
    
    local builtin = require("telescope.builtin")
    
    --vim.keymap.set("n", "<leader>fb", builtin.file_browser, { desc = "Find a file" })
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy find files in cwd" })
    vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Fuzzy find recent files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Find string in cwd" })
    vim.keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Find string under cursor in cwd" })
    
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
    
    -- File - Browser
    vim.api.nvim_set_keymap("n", "<leader>fb", ":Telescope file_browser<CR>", { silent = true })

    -- GIT search
    vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "Show the git status" })
    vim.keymap.set("n", "<leader>gb", builtin.git_branches, { desc = "Show the git branches" })
    vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Show the git commits" })
    vim.keymap.set("n", "<leader>gB", builtin.git_bcommits, { desc = "Show the git Bcommits" })
    vim.keymap.set("n", "<leader>gf", builtin.git_files, { desc = "Show the git files" })

    -- NEOCLIP search
   vim.api.nvim_set_keymap("n", "<leader>cb", ":Telescope neoclip<CR>", { silent = true}) 
  end,
}
