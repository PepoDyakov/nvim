-- When Neo-tree is the only window, open an editor split to the right
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    if vim.bo.filetype ~= "neo-tree" then return end
    local wins = vim.tbl_filter(function(w)
      return vim.api.nvim_win_get_config(w).relative == "" -- exclude floating windows
    end, vim.api.nvim_list_wins())
    if #wins == 1 then
      vim.schedule(function()
        vim.cmd("rightbelow vnew")
        vim.cmd("wincmd h")
      end)
    end
  end,
})

-- Close the initial empty buffer when a real file is opened
vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local bufs = vim.fn.getbufinfo({ buflisted = 1 })
    if #bufs > 1 then
      for _, buf in ipairs(bufs) do
        if buf.name == "" and buf.linecount == 1 and buf.changed == 0 then
          local lines = vim.api.nvim_buf_get_lines(buf.bufnr, 0, -1, false)
          if lines[1] == "" then
            vim.api.nvim_buf_delete(buf.bufnr, {})
          end
        end
      end
    end
  end,
})
