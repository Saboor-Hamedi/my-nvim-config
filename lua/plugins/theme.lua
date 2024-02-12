return {

  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    require("tokyonight").setup({
      transparent = true,
    }),
  },
}
