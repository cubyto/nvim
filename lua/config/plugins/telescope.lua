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
	}
})

local builtin = require("telescope.builtin")

--vim.keymap.set("n", "<leader>fb", builtin.file_browser, { desc = "Find a file" })
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy find files in cwd" })
vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Fuzzy find recent files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Find string in cwd" })
vim.keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Find string under cursor in cwd" })

vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})