local map = vim.keymap.set
local opts = { noremap = true, silent = true }
map("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- nvimtree
map("n", "<C-b>", ":Neotree toggle<CR>", opts)
--
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")
-- select all
map("n", "<C-a>", "gg<S-v>G")
-- Split window horizontally
map("n", "ss", ":sp<CR>", opts)
-- Split window vertically
map("n", "vs", ":vsp<CR>", opts)

-- Move to the next buffer in the current split
map("n", "<leader>bn", ":bnext<CR>", opts)

-- Move to the previous buffer in the current split
map("n", "<leader>bp", ":bprev<CR>", opts)
-- Move wind
map("n", "sh", "<C-w>h")
map("n", "sk", "<C-w>k")
map("n", "sj", "<C-w>j")
map("n", "sl", "<C-w>l")
-- Resize window
map("n", "<C-w><left>", "<C-w><")
map("n", "<C-w><right>", "<C-w>>")
map("n", "<C-w><up>", "<C-w>+")
map("n", "<C-w><down>", "<C-w>-")
-- delete line
map("n", "dd", "dd", opts)
-- Caps Lock as Escape in Insert mode
vim.api.nvim_set_keymap("i", "<leader>ck", "<Esc>", { noremap = true })
