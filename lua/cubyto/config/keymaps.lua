-- We define the leader map
vim.g.mapleader = " "
---Define the mapleader
local keymap = vim.keymap -- for conciseness
-- This keybinding use JK as the scape key, to exit a mode
vim.api.nvim_set_keymap("i", "jk","<ESC>", {noremap = true})

-- This keymap clears search
keymap.set("n", "<leader>h", ":nohl<CR>")

keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) -- Make a file executable
keymap.set("n", "<leader>nf", ":ene<CR>", { silent = true}, { noremap = true})
-- Moves buffer
keymap.set("n", "<leader>k", ":bn<CR>", { silent = true }, { noremap = true }) -- Next buffers{ silent = true }
keymap.set("n", "<leader>j", ":bp<CR>", { silent = true }, { noremap = true }) -- previous buffer
keymap.set("n", "<leader>qa", ":bd!<CR>", { silent = true }, { noremap = true }) -- Delete all Buffer actual
keymap.set("n", "<leader>q", ":bd<CR>", { silent = true }, { noremap = true }) -- Delete buffer actual
keymap.set("n", "<leader>bl", ":buffers<CR>", { silent = true }, { noremap = true }) --List of buffers

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { noremap = true }, { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { noremap = true }, { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { noremap = true }, { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>so", "<C-w>s", { noremap = true }, { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { noremap = true }, { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sj", "<C-w>j", { noremap = true }, { desc = "Move cursor to down split"}) -- Move cursor to down split
keymap.set("n", "<leader>sk", "<C-w>k", { noremap = true }, { desc = "Move cursor to up split"}) -- Move cursor to up split
keymap.set("n", "<leader>sh", "<C-w>h", { noremap = true }, { desc = "Move cursor to right split"}) -- Move cursor to right split
keymap.set("n", "<leader>sl", "<C-w>l", { noremap = true }, { desc = "Move cursor to left split"}) -- Move cursor to left split
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { noremap = true }, { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { noremap = true }, { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { noremap = true }, { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabnext<CR>", { noremap = true }, { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabprevious<CR>", { noremap = true }, { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { noremap = true }, { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- SAVE config
keymap.set('n', '<C-s>', ':w<CR>', { silent = true }, { noremap = true }) -- Save buffer
keymap.set('n', '<leader>sa', ':wa<CR>', { silent = true }, { noremap = true }) -- save all buffers open
keymap.set('n', '<C-x>', ':x<CR>', { silent = true }, { noremap = true }) -- save and exit
keymap.set('n', '<C-q>', ':q!<CR>', { silent = true }, { noremap = true }) -- Exit without save Force!!!

keymap.set("n", "<C-a>", "ggVG", { noremap = true }) -- Select all
keymap.set('n', '<leader><leader>', '<S-$>%', {noremap = true, silent = false }) -- Te lleva al final o el principio de llave relacionada {}[]()
keymap.set('n', '<leader>z', '<S-$>zf%', {noremap = true, silent = false }) -- para plegar codigo de manera sencilla, debes colocarte en el principo de la, llave {}[]() y listo, con za en modo normal vuelves a desplegar el codigo

vim.api.nvim_set_keymap("n", "<C-t>", ":split<CR>:term<CR>:resize 15<CR>", { silent = true }) -- Open the terminal
vim.api.nvim_set_keymap("v", "<C-t>", ":split<CR>:term<CR>:resize 15<CR>", { silent = true }) -- Open the terminal
