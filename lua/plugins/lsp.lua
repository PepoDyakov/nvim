return {
  "neovim/nvim-lspconfig",
  ft = { "rust", "typescript", "typescriptreact", "javascript", "javascriptreact" },
  config = function()
    vim.lsp.config("rust_analyzer", {
      settings = {
        ["rust-analyzer"] = {
          check = {
            command = "clippy",
          },
        },
      },
    })
    vim.lsp.enable("rust_analyzer")

    vim.lsp.enable("ts_ls")
    vim.lsp.enable("eslint")

    -- Keymaps — only activate when an LSP attaches to a buffer
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local buf = args.buf
        local map = function(keys, func, desc)
          vim.keymap.set("n", keys, func, { buffer = buf, desc = desc })
        end

        map("gd", vim.lsp.buf.definition, "Go to definition")
        map("gr", vim.lsp.buf.references, "Show references")
        map("K", vim.lsp.buf.hover, "Hover documentation")
        map("<leader>rn", vim.lsp.buf.rename, "Rename symbol")
        map("<leader>ca", vim.lsp.buf.code_action, "Code action")
        map("<leader>d", vim.diagnostic.open_float, "Show diagnostic")
        map("[d", vim.diagnostic.goto_prev, "Previous diagnostic")
        map("]d", vim.diagnostic.goto_next, "Next diagnostic")
      end,
    })
  end,
}
