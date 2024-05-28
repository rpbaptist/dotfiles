return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "Oil",
    opts = {},
    keys = {
      { "<leader>fo", "<cmd>Oil<cr>", desc = "Open parent directory" },
    },
  },
}
