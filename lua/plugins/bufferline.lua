return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "BufReadPost",
  keys = {
    { "<A-Tab>",   "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
    { "<A-S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Previous buffer" },
    { "<leader>bd", "<cmd>bdelete<cr>",             desc = "Close buffer" },
  },
  opts = {
    options = {
      mode = "buffers",
      separator_style = "slant",
      show_buffer_close_icons = true,
      show_close_icon = false,
      color_icons = true,
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(_, _, diag)
        local icons = { error = " ", warning = " " }
        return (diag.error and icons.error .. diag.error or "")
          .. (diag.warning and icons.warning .. diag.warning or "")
      end,
      offsets = {
        {
          filetype = "neo-tree",
          text = "Explorer",
          highlight = "Directory",
          separator = true,
        },
      },
    },
  },
}
