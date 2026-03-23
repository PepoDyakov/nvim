return {
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    lazy = true,
    opts = {
      enable_autocmd = false,
    },
  },
  {
    "numToStr/Comment.nvim",
    event = "BufReadPost",
    dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
    config = function()
      require("ts_context_commentstring").setup({ enable_autocmd = false })
      require("Comment").setup({
        mappings = { basic = false, extra = false },
        pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
      })

      local api = require("Comment.api")

      vim.keymap.set("n", "<leader>/", api.toggle.linewise.current, { desc = "Comment line" })
      vim.keymap.set("v", "<leader>/", function()
        local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
        vim.api.nvim_feedkeys(esc, "nx", false)
        api.toggle.linewise(vim.fn.visualmode())
      end, { desc = "Comment selection" })
    end,
  },
}
