-- This keybinding use JK as the scape key, to exit a mode
vim.api.nvim_set_keymap("i", "jk","<ESC>", {noremap = true})

-- This keymap clears search
vim.keymap.set("n", "<leader>h", ":nohlssearchzCR>")

