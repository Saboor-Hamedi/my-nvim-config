return {
  {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    lazy = true,
    cmd = "ConformInfo",
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        javascript = { { "prettierd", "prettier" } },
        -- php = { { "prettierd", "prettier" } },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
      keys = {
        {
          "<leader>cf",
          function()
            require("conform").format({ formatters = { "injected" } })
          end,
          mode = { "n", "v" },
          desc = "Format Injected Langs",
        },
      },
    }),
  },
}
