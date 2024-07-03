return {
  { "telescope.nvim", enabled = false },
  {
    "ibhagwan/fzf-lua",
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
      { "<leader>gb", "<cmd>FzfLua git_bcommits<cr>", desc = "Git blame" },
      { "<leader>gl", "<cmd>FzfLua git_commits<cr>", desc = "Git log" },
      { "<leader>go", "<cmd>FzfLua git_branches<cr>", desc = "Git checkout" },
      { "<leader>gf", "<cmd>FzfLua git_status<cr>", desc = "Git files" },
      { "<leader>bl", "<cmd>FzfLua buffers<cr>", desc = "List buffers" },
      {
        "<leader>sG",
        function()
          require("fzf-lua").live_grep({ cwd = vim.fn.expand("%:h") })
        end,
        desc = "Grep current dir",
      },
    },
  },
}
