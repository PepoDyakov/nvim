  return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- completion source: LSP
      "hrsh7th/cmp-path",     -- completion source: file paths
      "hrsh7th/cmp-buffer",   -- completion source: words in current buffer
    },
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        sources = cmp.config.sources({
          { name = "nvim_lsp" }, -- LSP suggestions first
          { name = "path" },
          { name = "buffer" },
        }),
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),     -- manually trigger completion
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- accept selected item
          ["<C-e>"] = cmp.mapping.abort(),             -- dismiss menu
          ["<Tab>"] = cmp.mapping.select_next_item(),  -- next suggestion
          ["<S-Tab>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        }),
      })
    end,
}
