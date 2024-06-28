return {
  "smoka7/multicursors.nvim",
  dependencies = { "nvimtools/hydra.nvim" },
  lazy = true,
  opts = {},
  cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
  keys = {
    {
      mode = { "v", "n" },
      "<C-n>",
      "<cmd>MCstart<cr>",
      desc = "Start multicursor",
    },
  },
}
