return {
  {

    "sindrets/diffview.nvim",
    cmd = "DiffviewOpen",
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Git diffview open" },
    },
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration
      "nvim-telescope/telescope.nvim", --
    },
    cmd = "Neogit",
    opts = {
      kind = "split",
      commit_editor = {
        kind = "replace",
      },
    },
    keys = {
      { "<leader>gs", "<cmd>Neogit<cr>", desc = "(neo)Git status" },
      { "<leader>gc", "<cmd>Neogit commit<cr>", desc = "(neo)Git commit" },
      { "<leader>gl", "<cmd>Neogit log<cr>", desc = "(neo)Git log" },
    },
  },
}
