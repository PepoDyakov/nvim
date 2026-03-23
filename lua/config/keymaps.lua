-- Custom keymaps (non-plugin)
local map = vim.keymap.set

-- Window navigation (move between splits)
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- New tab
map("n", "<A-t>", "<cmd>tabnew<cr>", { desc = "New tab" })
map("n", "<A-w>", function()
  local bufnr = vim.api.nvim_get_current_buf()
  local bufs = vim.fn.getbufinfo({ buflisted = 1 })
  if #bufs > 1 then
    vim.cmd("BufferLineCyclePrev")
  end
  vim.api.nvim_buf_delete(bufnr, { force = false })
end, { desc = "Close buffer" })

-- Buffer navigation
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous buffer" })
map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
map('n', '<C-Up>',    ':resize+2<CR>')                                  
map('n', '<C-Down>',  ':resize-2<CR>')                                  
map('n', '<C-Left>',  ':vertical resize-2<CR>')                             
map('n', '<C-Right>', ':vertical resize+2<CR>')                             
map('n', 'ZZ', '<Nop>');
                         

-- Move lines in visual mode
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move line(s) down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move line(s) up" })

-- Stay in visual mode after indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Clear search highlight
map("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })

-- Save file
map("n", "<C-s>", "<cmd>w<cr>", { desc = "Save file" })
map("i", "<C-s>", "<Esc><cmd>w<cr>", { desc = "Save file" })

-- Window splits
map("n", "<leader>sv", "<cmd>vsplit<cr><cmd>wincmd =<cr>", { desc = "Vertical split" })
map("n", "<leader>sh", "<cmd>split<cr><cmd>wincmd =<cr>",  { desc = "Horizontal split" })

-- Yank to system clipboard
map("v", "<leader>y", '"+y', { desc = "Yank to system clipboard" })


