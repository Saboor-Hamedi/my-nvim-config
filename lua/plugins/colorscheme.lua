return {
  {
    -- "embark-theme/vim",
    -- as = "embark",
    -- config = function()
    --   vim.cmd("colorscheme embark")
    -- end,
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").load()
      require("nordic").setup({
        ts_context = {
          -- Enables dark background for treesitter-context window
          dark_background = true,
        },
      })
    end,
  },
}
