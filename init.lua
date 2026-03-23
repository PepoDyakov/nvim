vim.env.PATH = vim.env.HOME .. "/.nvm/versions/node/v20.16.0/bin:" .. vim.env.PATH

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2                             
vim.opt.shiftwidth = 2                          
vim.opt.expandtab = true      
vim.opt.splitright = true

vim.g.clipboard = "osc52"

  -- Bootstrap lazy.nvim
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable",
      lazypath,
    })
  end
  vim.opt.rtp:prepend(lazypath)

  -- Setup lazy.nvim, pointing it at our plugins directory
  require("lazy").setup("plugins")
  require("config.keymaps")
  require("config.autocmds")
