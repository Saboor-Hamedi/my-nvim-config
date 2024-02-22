local map = vim.keymap.set --for conciseness
local opts = { noremap = true }
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- map("i", "<leader>o", "<ESC><CR>") -- escape insert mode
map("n", "<leader>nh", ":nohl<CR>") -- deselect text
map("n", "x", '"_x') -- delete single letter but not copy it
map("n", "<C-A>+", "<C-a>") --increase number
map("n", "<C-X>-", "<C-x>") -- descrease number
map("n", "<leader>w", ":so %<CR>") -- reload window
map("n", "<C-s>", ":wa<CR>") -- save all files
map("n", "<leader>q", ":q<CR>") -- quit the window
map("n", "<leader>ss", "<C-w>s") --split window vertically
map("n", "<leader>vs", "<C-w>v") --split window horizontally
map("n", "<leader>se", "<C-w>=") -- make window equal
map("n", "<leader>sx", ":close<CR>") -- close current window
map("n", "sh", "<C-w>h") -- move the right
map("n", "sk", "<C-w>k") -- move to the top
map("n", "sj", "<C-w>j") -- move to the bottom
map("n", "sl", "<C-w>l") -- move the left
map("n", "<C-a>", "ggVG") -- select all
