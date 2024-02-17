-- telescope.lua
return {
  "nvim-telescope/telescope.nvim",
  keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<C-p>",
        function() require("telescope.builtin").find_files({}) end,
        desc = "Find Plugin File",
      },
  },
}
