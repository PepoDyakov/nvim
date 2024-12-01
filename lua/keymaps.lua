local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader
vim.g.mapleader = " "

-- Escape
map("i", "jk", "<ESC>", { desc = "Escape" })
map("i", "kj", "<ESC>", { desc = "Escape" })

-- Forward/Back
map("n", "<C-o>", "<C-i>", opts)
map("n", "<C-i>", "<C-o>", opts)

-- LSP
map({ "n", "v" }, "<leader>fg", "<cmd>LspInfo<CR>", { desc = "Info" })

-- Splits
map({ "n", "v" }, "<C-A-h>", "<C-w><", { desc = "Decrease Width" })
map({ "n", "v" }, "<C-A-l>", "<C-w>>", { desc = "Increase Width" })

-- General keybinds

-- Fix j and k for wrapped lines
map("n", "j", "gj", { noremap = true, silent = true, desc = "Move down (visual line)" })
map("n", "k", "gk", { noremap = true, silent = true, desc = "Move up (visual line)" })

-- Telescope
map({ "n", "v" }, "<leader>w", "<cmd>Telescope live_grep<CR>", { desc = "Live Grep" })
map({ "n", "v" }, "<leader>e", "<cmd>Telescope find_files<CR>", { desc = "Find Files" })
map({ "n", "v" }, "<leader>r", "<cmd>Telescope oldfiles<CR>", { desc = "Oldfiles" })

-- Barbar
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
