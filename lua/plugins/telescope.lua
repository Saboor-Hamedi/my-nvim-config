return {
  "nvim-telescope/telescope.nvim",
  lazy = false,
  tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    layout_config = {
      vertical = {

        width = 0.5,
        prompt_position = "buttom",
        mirror = true,
      },
      -- change some options
      opts = {
        defaults = {
          layout_strategy = "horizontal",
          layout_config = { prompt_position = "buttom" },
          sorting_strategy = "ascending",
          winblend = 0,
        },
      },
      pickers = {
        find_files = {
          theme = "dropdown",
        },
      },
    }
    local builtin = require("telescope.builtin")
    local map = vim.keymap.set
    map("n", "<c-p>", builtin.find_files, {})
    map("n", "<space>fp", builtin.colorscheme, {})
    map("n", "<leader>fg", builtin.live_grep, {})
    map("n", "<leader>fb", builtin.buffers, {})
    map("n", "<leader>fh", builtin.help_tags, {})
  end,
}
