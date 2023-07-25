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
  -- },
  {
    "folke/which-key.nvim",
    optional = true,
    opts = {
      defaults = {
        ["<leader>t"] = { name = "+test" },
      },
    },
  },
  
}
