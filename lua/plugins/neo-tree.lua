return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    "dstein64/vim-startuptime",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    -- init is called during starup, configuration for vim plugins typically should be set in an init function
    cmd = "StartupTime",
    init = function()
      vim.g.startuptime_tries = 10
    end,
  },
}
