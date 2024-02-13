local map = vim.keymap.set --for conciseness
local opts = { noremap = true }

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('i', '<leader>o', '<ESC>',opts) -- escape insert mode
map('n', '<leader>nh', ':nohl<CR>', opts) -- deselect text 
map('n', 'x', '"_x',opts) -- delete single letter but not copy it
map('n' ,'<C-A>+', '<C-a>',opts) --increase number 
map('n', '<C-X>-', '<C-x>',opts) -- descrease number
map('n', '<leader>w', ':source %<CR>',opts) -- reload window
map('n', '<C-s>', ':wa<CR>', opts) -- save all files
map('n', '<leader>q', ':q<CR>', opts) -- quit the window
map('n', '<leader>ss','<C-w>s',opts) --split window vertically 
map('n', '<leader>vs', '<C-w>v',opts) --split window horizontally 
map('n', '<leader>se', '<C-w>=',opts) -- make window equal
map('n', '<leader>sx', ':close<CR>',opts) -- close current window 
map("n", "sh", "<C-w>h",opts) -- move the right
map("n", "sk", "<C-w>k",opts) -- move to the top
map("n", "sj", "<C-w>j",opts) -- move to the bottom
map("n", "sl", "<C-w>l",opts) -- move the left
map('n', '<C-a>', 'ggVG',opts) -- select all
-- Resiz window splits with arrow keys
map('n', '<C-Up>', ':resize +2<CR>', { noremap = true })
map('n', '<C-Down>', ':resize -2<CR>', { noremap = true })
map('n', '<C-Right>', ':vertical resize +2<CR>', { noremap = true })
map('n', '<C-Left>', ':vertical resize -2<CR>', { noremap = true })
-- Tab 
map('n', '<C-t>', ':tabnew<CR>', {noremap = true, silent = true}) --open new tab
map('n', '<C-w>', ':tabclose<CR>', {noremap = true, silent = true}) -- close tab
map('n', 'L', ':tabn<CR>', {noremap = true, silent = true}) -- go to the next tab
map('n', 'H', ':tabp<CR>', {noremap = true, silent = true}) -- go to the previous tab
map('n', '<C-b>', ':NvimTreeToggle<CR>', opts) -- sidebar nvim-tree
