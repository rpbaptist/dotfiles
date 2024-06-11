return {
  "telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    "jedrzejboczar/possession.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
      require("telescope").load_extension("possession")
    end,
  },
  keys = {
    { "<leader>gs", false },
    { "<leader>gc", false },
    { "<leader>gf", "<cmd>Telescope git_status<cr>", desc = "Git files" },
    { "<leader>bl", "<cmd>Telescope buffers<cr>", desc = "List buffers" },
  },
}
