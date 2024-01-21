local keymap = vim.keymap
local opts = {noremap= true, silent=true}


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
    keymap.set('n','sv', ':vsplit<Return>', opts) 
    -- move window 
    keymap.set('n', 'sh', '<C-w>h')
    keymap.set('n', 'sk', '<C-w>k')
    keymap.set('n', 'sj', '<C-w>j')
    keymap.set('n', 'sl', '<C-w>l')
    end  

}


