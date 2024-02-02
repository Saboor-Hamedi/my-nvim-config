return {
  -- lazy.nvim
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("noice").setup({
        routes = {
          view = "notify",
          filter = { event = "msg_showmode" },
        },
      })
    end,
  },
}
