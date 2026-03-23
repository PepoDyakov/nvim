return {
  "MeanderingProgrammer/render-markdown.nvim",
  ft = { "markdown", "copilot-chat" },
  opts = {
    file_types = { "markdown", "copilot-chat" },
    code = {
      sign = false,
      width = "block",
      right_pad = 1,
      language_pad = 1,
      border = "thin",
    },
    heading = {
      sign = false,
    },
  },
}
