return {
  {
    "MagicDuck/grug-far.nvim",
    lazy = true,
    cmd = "GrugFar",
    opts = {
      windowCreationCommand = "split",
    },
    keys = {
      { "<leader>sr", "<cmd>GrugFar<cr>", desc = "Replace" },
    },
  },
}
