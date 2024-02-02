-- A blazing fast and easy to configure Neovim statusline written in Lua.
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = "horizon",
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
      },
      sections = { lualine_a = { "mode" } },
    })
  end,
}
