return {
  -- Full git UI: status, log, blame, diff
  {
    "tpope/vim-fugitive",
    cmd = "Git",
    keys = {
      { "<leader>gg", "<cmd>Git<cr>",                    desc = "Git status" },
      { "<leader>gB", "<cmd>Git blame<cr>",              desc = "Git blame (file)" },
      { "<leader>gl", "<cmd>Git log --oneline<cr>",      desc = "Git log" },
    },
  },

  -- PR browsing and review (requires: brew install gh && gh auth login)
  {
    "pwntester/octo.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    cmd = "Octo",
    keys = {
      { "<leader>gpl", "<cmd>Octo pr list<cr>",   desc = "List PRs" },
      { "<leader>gpo", "<cmd>Octo pr browser<cr>", desc = "Open PR in browser" },
    },
    opts = {},
  },
}
