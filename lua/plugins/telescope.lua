-- telescope.lua
return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<C-p>",
      function()
        require("telescope.builtin").find_files({})
      end,
      desc = "Find Plugin File",
    },
  },
  opts = {
    defaults = {
      width = { 0.5 },
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
}
