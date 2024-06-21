return {
  "telescope.nvim",
  dependencies = {
    "jedrzejboczar/possession.nvim",
    config = function()
      require("telescope").load_extension("possession")
    end,
  },
  opts = {
    defaults = {
      file_ignore_patterns = { "lib/eor/*", "test/eor/*" },
    },
  },
  keys = {
    { "<leader>gs", false },
    { "<leader>gc", false },
    { "<leader>sR", false },
    { "<leader>gf", "<cmd>Telescope git_status<cr>", desc = "Git files" },
    { "<leader>bl", "<cmd>Telescope buffers<cr>", desc = "List buffers" },
  },
}
