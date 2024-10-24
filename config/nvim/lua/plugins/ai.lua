return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = true },
    },
  },
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "hrsh7th/nvim-cmp", -- Optional: For using slash commands and variables in the chat buffer
      "stevearc/dressing.nvim", -- Optional: Improves `vim.ui.select`
    },
    opts = {
      strategies = {
        chat = { adapter = "copilot" },
        inline = { adapter = "copilot" },
        agent = { adapter = "copilot" },
        slash_commands = {
          ["buffer"] = {
            opts = {
              provider = "fzf_lua",
            },
          },
          ["file"] = {
            opts = {
              provider = "fzf_lua",
            },
          },
          ["symbols"] = {
            opts = {
              provider = "fzf_lua",
            },
          },
        },
      },
      display = {
        chat = {
          window = {
            width = 0.33,
          },
          start_in_insert_mode = true,
        },
      },
    },
    keys = {
      { "<leader>aa", "<cmd>CodeCompanionActions<CR>", desc = "CodeCompanion actions", mode = { "n", "v" } },
      { "<leader>ac", "<cmd>CodeCompanionChat<CR>", desc = "CodeCompanion chat", mode = { "n", "v" } },
      { "<leader>at", "<cmd>CodeCompanionChat Toggle<CR>", desc = "CodeCompanion chat toggle", mode = { "n", "v" } },
      { "<leader>ae", "<cmd>CodeCompanionChat Add<CR>", desc = "CodeCompanion chat add", mode = { "n", "v" } },
    },
    init = function()
      vim.cmd([[cab cc CodeCompanion]])
    end,
  },
}
