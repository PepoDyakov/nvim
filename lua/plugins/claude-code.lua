return {
  "greggh/claude-code.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", -- Required for git operations
  },
  config = function()
    require("claude-code").setup({
	window = {
	  split_ratio = 0.18,
	  position = "botright vertical",
	},
    	keymaps = {
	  window_navigation = true,
	  scrolling = true,
	}
    })
  end
}
