 return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",       -- utility library used by many plugins
      "nvim-tree/nvim-web-devicons", -- file icons (needs Nerd Font)
      "MunifTanjim/nui.nvim",        -- UI component library neo-tree is built on
    },
    keys = {
      {
        "<leader>e",
        function()
          if vim.bo.filetype == "neo-tree" then
            vim.cmd("wincmd p")
          else
            vim.cmd("Neotree focus")
          end
        end,
        desc = "Toggle focus file explorer",
      },
      { "<leader>E", "<cmd>Neotree toggle<cr>", desc = "Toggle file explorer" },
    },
    opts = {
      window = {
        width = 60,
      },
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    },
}
