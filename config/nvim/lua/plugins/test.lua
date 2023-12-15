return {
  -- {
  --   "nvim-neotest/neotest",
  --   optional = true,
  --   dependencies = {
  --     "jfpedroza/neotest-elixir",
  --   },
  --   opts = {
  --     adapters = {
  --       ["neotest-elixir"] = {},
  --     },
  --     quickfix = {
  --       open = function()
  --         if require("lazyvim.util").has("trouble.nvim") then
  --           vim.cmd("Trouble quickfix")
  --         else
  --           vim.cmd("copen")
  --         end
  --       end,
  --     },
  --   },
  -- },
  -- {
  --   "jfpedroza/neotest-elixir",
  -- }
  --
  "nvim-lua/plenary.nvim",

  {
    "nvim-neotest/neotest",
    dependencies = {
      -- "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
  {
    "folke/which-key.nvim",
    optional = true,
    opts = {
      defaults = {
        ["<leader>t"] = { name = "+test" },
      },
    },
  },

  {
    "jfpedroza/neotest-elixir",
    dependencies = { "nvim-neotest/neotest" },
  },

  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.2",
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },
}
