return {
  "nvim-telescope/telescope.nvim",
  lazy = false,
  tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    layout_config = {
      vertical = {
        prompt_position = "top",
        mirror = true,
      },
      -- change some options
      opts = {
        defaults = {
          layout_strategy = "horizontal",
          layout_config = { prompt_position = "top" },
          sorting_strategy = "ascending",
          winblend = 0,
        },
      },
    }

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<c-p>", builtin.find_files, {})
    vim.keymap.set("n", "<space>fp", builtin.colorscheme, {})
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
    vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
  end,
}
