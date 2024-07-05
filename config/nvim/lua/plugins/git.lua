return {
  {

    "sindrets/diffview.nvim",
    lazy = true,
    cmd = "DiffviewOpen",
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Git diffview open" },
    },
  },
  {
    "SuperBo/fugit2.nvim",
    opts = {
      libgit2_path = "libgit2.so.1.7",
      external_diffview = true,
    },
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
    },
    cmd = { "Fugit2", "Fugit2Diff", "Fugit2Graph" },
    keys = {
      { "<leader>gs", "<cmd>Fugit2<cr>", desc = "Git status" },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "+" },
        change = { text = "▪" },
        -- delete = { text = "-" },
        -- topdelete = { text = "⨪" },
        -- changedelete = { text = "≂" },
        -- untracked = { text = "⌜" },
      },
    },
  },
}
