return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    { "nvim-lua/plenary.nvim", branch = "master" },
  },
  mcp = {
    enabled = true,
    servers = {
      filesystem = {
        command = "npx",
        args = {
          "-y",
          "@modelcontextprotocol/server-filesystem",
          vim.fn.getcwd(),
        },
      },
    },
  },
  keys = {
    { "<leader>cc", "<cmd>CopilotChatToggle<cr>", desc = "Copilot Chat" },
    {
      "<leader>cs", function()
        local name = vim.fn.input("Save as: ")
        if name ~= "" then
          require("CopilotChat").save(name)
        end
      end, desc = "Copilot Chat Save" 
    },
    { "<leader>cl", function()
        local name = vim.fn.input("Load chat: ")
        if name ~= "" then
          require("CopilotChat").load(name)
        end
      end, desc = "Copilot Chat Load" 
    },
    { "<leader>co", "<cmd>CopilotChatOpen<cr>", desc = "Copilot Chat Open" },
  },
  build = "make tiktoken",
  opts = {
    model = "claude-opus-4.6",
    window = {
      layout = "vertical",
      width = 0.3,
      position = "right",
    },
    headers = {
      user = '👤 You',
      assistant = '🤖 Copilot',
      tool = '🔧 Tool',
    },
    code_autocomplete = false,
    show_help = false
  },
}
