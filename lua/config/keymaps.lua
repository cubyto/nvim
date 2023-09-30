--Define the mapleader
vim.g.mapleader = " "

--General settings
vim.o.relativenumber = true
vim.o.number = true
vim.opt.mouse = 'a' 
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap =  true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- This keybinding use JK as the scape key, to exit a mode
vim.api.nvim_set_keymap("i", "jk","<ESC>", {noremap = true})

-- This keymap clears search
vim.keymap.set("n", "<leader>h", ":nohlssearchzCR>")