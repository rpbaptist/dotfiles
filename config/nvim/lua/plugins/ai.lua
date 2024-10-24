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
      { "stevearc/dressing.nvim", opts = {} }, -- Optional: Improves `vim.ui.select`
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
            width = 0.35,
          },
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
  -- {
  --   "yetone/avante.nvim",
  --   event = "VeryLazy",
  --   lazy = false,
  --   version = false, -- set this if you want to always pull the latest change
  --   opts = {
  --     provider = "copilot",
  --     -- auto_suggestions_provider = "copilot",
  --     behaviour = {
  --       -- auto_suggestions = true,
  --       support_paste_from_clipboard = true,
  --     },
  --     mappings = {
  --       suggestion = {
  --         -- accept = "<Tab>",
  --       },
  --     },
  --     hints = {
  --       enabled = false,
  --     },
  --     highlights = {
  --       diff = {
  --         current = "DiffChange",
  --         incoming = "DiffAdd",
  --       },
  --     },
  --   },
  --   keys = {},
  --   -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  --   build = "make",
  --   -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  --   dependencies = {
  --     "stevearc/dressing.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "MunifTanjim/nui.nvim",
  --     "echasnovski/mini.icons",
  --     "zbirenbaum/copilot.lua", -- for providers='copilot'
  --     {
  --       -- support for image pasting
  --       "HakonHarnes/img-clip.nvim",
  --       event = "VeryLazy",
  --       opts = {
  --         -- recommended settings
  --         default = {
  --           embed_image_as_base64 = false,
  --           prompt_for_file_name = false,
  --           drag_and_drop = {
  --             insert_mode = true,
  --           },
  --           -- required for Windows users
  --           use_absolute_path = true,
  --         },
  --       },
  --     },
  --     {
  --       -- Make sure to set this up properly if you have lazy=true
  --       "MeanderingProgrammer/render-markdown.nvim",
  --       opts = {
  --         file_types = { "markdown", "Avante" },
  --       },
  --       ft = { "markdown", "Avante" },
  --     },
  --   },
  -- },
}
