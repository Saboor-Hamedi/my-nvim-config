return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
    transparent_background = true, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
      enabled = true, -- dims the background color of inactive window
      shade = "dark",
      percentage = 0.3, -- percentage of the shade to apply to the inactive window
    },
  },
}
