return {
  "lewis6991/gitsigns.nvim",
  event = "BufReadPost",
  opts = {
    current_line_blame = false,
    current_line_blame_opts = {
      delay = 300,
      virt_text_pos = "eol",
    },
    on_attach = function(buf)
      local gs = require("gitsigns")
      local map = function(mode, keys, func, desc)
        vim.keymap.set(mode, keys, func, { buffer = buf, desc = desc })
      end

      -- Hunk navigation
      map("n", "]h", gs.next_hunk,   "Next hunk")
      map("n", "[h", gs.prev_hunk,   "Prev hunk")

      -- Hunk actions
      map("n", "<leader>gs", gs.stage_hunk,                    "Stage hunk")
      map("v", "<leader>gs", function() gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") }) end, "Stage hunk")
      map("n", "<leader>gr", gs.reset_hunk,                    "Reset hunk")
      map("n", "<leader>gS", gs.stage_buffer,                  "Stage buffer")
      map("n", "<leader>gu", gs.undo_stage_hunk,               "Undo stage hunk")
      map("n", "<leader>gp", gs.preview_hunk,                  "Preview hunk")
      map("n", "<leader>gd", gs.diffthis,                      "Diff this")

      -- Blame
      map("n", "<leader>gb", gs.toggle_current_line_blame,     "Toggle line blame")
    end,
  },
}
