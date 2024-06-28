return {
  {

  "telescope.nvim",
  enabled = false,
  -- dependencies = {
  --   "jedrzejboczar/possession.nvim",
  --   config = function()
  --     require("telescope").load_extension("possession")
  --   end,
  -- },
  -- opts = {
  --   defaults = {
  --     file_ignore_patterns = { "lib/eor/*", "test/eor/*" },
  --   },
  -- },
  -- keys = {
  --   { "<leader>gs", false },
  --   { "<leader>gc", false },
  --   { "<leader>sR", false },
  --   { "<leader>gf", "<cmd>Telescope git_status<cr>", desc = "Git files" },
  --   { "<leader>bl", "<cmd>Telescope buffers<cr>", desc = "List buffers" },
  -- },
},
  { "ibhagwan/fzf-lua",
    opts = {
    defaults = {
        file_ignore_patterns = { "lib/eor/*", "test/eor/*" },
        no_header = true
      },
    },
    keys = {

     { "<leader>gb", false },
     { "<leader>gc", false },
     { "<leader>gs", false },
     { "<leader>gb", "<cmd>FzfLua git_bcommits<cr>", desc = "Git blame"},
     { "<leader>gl", "<cmd>FzfLua git_commits<cr>", desc = "Git log"},
     { "<leader>go", "<cmd>FzfLua git_branches<cr>", desc = "Git checkout"},
     { "<leader>gf", "<cmd>FzfLua git_status<cr>", desc = "Git files" },
     { "<leader>bl", "<cmd>FzfLua buffers<cr>", desc = "List buffers" },
    }
  }
}
