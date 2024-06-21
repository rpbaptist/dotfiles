return {
  { "nvim-pack/nvim-spectre", enabled = false },
  {
    "MagicDuck/grug-far.nvim",
    lazy = true,
    cmd = "GrugFar",
    opts = {
      windowCreationCommand = "split",
    },
    keys = {
      {
        "<leader>sr",
        function()
          require("grug-far").grug_far({ prefills = { flags = vim.fn.expand("%") } })
        end,
        desc = "Replace in current file",
      },
    },
  },
}
