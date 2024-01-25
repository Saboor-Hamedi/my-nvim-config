return {
  "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
  config = function()
    vim.keymap.set('n', '<C-b>', ':Neotree filesystem reveal left toggle<CR>', {})
    local configs = require("nvim-treesitter.configs")
    configs.setup({
        highlight = {enable = true}, 
        indent = {enable = true},
        ensure_installed = {
        "bash",
        "java",
        "diff",
        "html",
        "javascript",
        "jsdoc",
        "json",
        "jsonc",
        "lua",
        "luadoc",
        "luap",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "toml",
        "php",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",},
    }) 
  end
}
