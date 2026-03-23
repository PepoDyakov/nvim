return {
  "stevearc/conform.nvim",
  event = "BufWritePre",
  keys = {
    {
      "<leader>cf",
      function() require("conform").format({ async = true }) end,
      desc = "Format file",
    },
  },
  opts = {
    formatters_by_ft = {
      javascript      = { "prettier" },
      javascriptreact = { "prettier" },
      typescript      = { "prettier" },
      typescriptreact = { "prettier" },
      json            = { "prettier" },
      css             = { "prettier" },
      html            = { "prettier" },
    },
    format_on_save = {
      timeout_ms = 2000,
      lsp_fallback = false,
    },
  },
}
