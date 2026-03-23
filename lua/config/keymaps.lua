-- Custom keymaps (non-plugin)
local map = vim.keymap.set

-- Window navigation (move between splits)
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Buffer navigation
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map('n', '<C-Up>',    ':resize+2<CR>')                                  
map('n', '<C-Down>',  ':resize-2<CR>')                                  
map('n', '<C-Left>',  ':vertical resize-2<CR>')                             
map('n', '<C-Right>', ':vertical resize+2<CR>')                             
                         

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
map("n", "<leader>sv", "<cmd>vsplit<cr>", { desc = "Vertical split" })
map("n", "<leader>sh", "<cmd>split<cr>", { desc = "Horizontal split" })

-- Yank to system clipboard
map("v", "<leader>y", '"+y', { desc = "Yank to system clipboard" })

-- Claude Code
map('n', '<leader>cc', '<cmd>ClaudeCode<CR>', { desc = 'Toggle Claude Code' })
