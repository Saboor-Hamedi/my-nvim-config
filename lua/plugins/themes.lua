return {
  {
    -- "folke/tokyonight.nvim",
    -- lazy = true,
    -- opts = { style = "moon" },
    -- transparent_background = true, -- disables setting the background color.
    -- show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    -- term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    -- dim_inactive = {
    --   enabled = true, -- dims the background color of inactive window
    --   shade = "dark",
    --   percentage = 0.3, -- percentage of the shade to apply to the inactive window
    -- },
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    config = function()
      require("rose-pine").setup({
        variant = "auto", -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = true,
          transparency = false,
        },

        groups = {
          border = "muted",
          link = "iris",
          panel = "surface",

          error = "love",
          hint = "iris",
          info = "foam",
          note = "pine",
          todo = "rose",
          warn = "gold",

          git_add = "foam",
          git_change = "rose",
          git_delete = "love",
          git_dirty = "rose",
          git_ignore = "muted",
          git_merge = "iris",
          git_rename = "pine",
          git_stage = "iris",
          git_text = "rose",
          git_untracked = "subtle",

          h1 = "iris",
          h2 = "foam",
          h3 = "rose",
          h4 = "gold",
          h5 = "pine",
          h6 = "foam",
        },
      })
      vim.cmd("colorscheme rose-pine")
      vim.cmd("colorscheme rose-pine-main")
      vim.cmd("colorscheme rose-pine-moon")
      vim.cmd("colorscheme rose-pine-dawn")
    end,
  },
}
