return {
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  require("mason").setup({}),
  require("mason-lspconfig").setup({}),
}
