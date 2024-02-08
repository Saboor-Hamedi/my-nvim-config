return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,
    opts = function()
      require("toggleterm").setup({
        size = 10,
        open_mapping = [[<C-j>]],
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = false,
        shading_factor = 1,
        start_in_insert = true,
        insert_mappings = true,
        persist_size = false,
        direction = "horizontal",
        close_on_exit = true,
        shell = vim.o.shell,
      })
    end,
  },
}
