local map = vim.keymap.set
local opts = { noremap = true, silent = true }
map("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- nvimtree
map("n", "<C-b>", ":Neotree toggle<CR>", opts)
