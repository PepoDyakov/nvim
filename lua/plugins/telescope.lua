return {
  "nvim-telescope/telescope.nvim",
  branch = "master",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Grep in project" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Open buffers" },
    { "<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "All diagnostics" },
    { "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Symbols in file" },
  },
  opts = {
    defaults = {
      -- Always open files in a real editor window, never in neo-tree
      get_selection_window = function()
        for _, win in ipairs(vim.api.nvim_list_wins()) do
          local buf = vim.api.nvim_win_get_buf(win)
          if vim.bo[buf].buftype == "" and vim.bo[buf].filetype ~= "neo-tree" then
            return win
          end
        end
      end,
    },
  },
}
