return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "BufReadPost",
  main = "nvim-treesitter",
  opts = {
    ensure_installed = { "rust", "toml", "lua", "typescript", "tsx", "javascript" },
  },
}
