return {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

  config = function()
    require("mason").setup({})
    require("mason-lspconfig").setup({
      opts = {
        ensure_installed = {
          "lua-language-server",
          "html-lsp",
          "prettier",
          "stylua",
          "intelephense",
        },
      },
    })
  end,
}
