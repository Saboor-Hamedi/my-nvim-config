       
local keymap = vim.keymap
local opts = {noremap= true, silent=true}

-- Hello Wnnnn
return {
   'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
    local builtin = require("telescope.builtin")
    -- show file panel ctrl-your key
    vim.keymap.set('n', '<C-p>', builtin.find_files, {})
   -- show color panel ctrl-your key
    vim.keymap.set('n', '<leader>fp', builtin.colorscheme, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    keymap.set('n', '+', '<C-a>', opts)
    keymap.set('n','ss', ':split<Return>', opts)
    keymap.set('n','sv', ':vsplit<Return>', opts) -- move window 
    keymap.set('n', 'sh', '<C-w>h')
    keymap.set('n', 'sk', '<C-w>k')
    keymap.set('n', 'sj', '<C-w>j')
    keymap.set('n', 'sl', '<C-w>l') 
    -- Move the visually selected lines down using Ctrl + j
    keymap.set("x", "<C-j>", ":m '>+1<CR>gv=gv", opts)
    -- Move the visually selected lines up using Ctrl + k
    keymap.set("x", "<C-k>", ":m '<-2<CR>gv=gv", opts)
    -- Move the current line down using Ctrl + j in normal mode
    keymap.set("n", "<C-j>", ":m .+1<CR>==", opts)
    -- Move the current line up using Ctrl + k in normal mode
    keymap.set("n", "<C-k>", ":m .-2<CR>==", opts)
    -- escape 
    keymap.set("i", "jj", "<Esc>", opts)
    -- rename nn
    -- open terminal 
    -- vim.keymap.set('n', '<c-t>', ':ToggleTerm t<CR>')
    -- vim.keymap.set('n', '<c-t>', ':ToggleTerm t<CR>')
    end 
}

