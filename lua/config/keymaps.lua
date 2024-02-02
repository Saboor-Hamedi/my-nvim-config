local map = vim.keymap.set
local opts = { noremap = true, silent = true }
map("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- nvimtree
map("n", "<C-b>", ":Neotree toggle<CR>", opts)
--
--
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")
--
-- noice
map("n", "<leader>nl", function()
  require("noice").cmd("last")
end)
--
map("n", "<leader>nh", function()
  require("noice").cmd("history")
end)
