return {
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
    },
    keys = {
      { "<leader>gs", "<cmd>Neogit<cr>", desc = "(neo)Git status" },
    },
  },
  -- { "tpope/vim-fugitive" },
}
