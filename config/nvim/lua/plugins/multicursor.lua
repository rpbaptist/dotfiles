return {
  "smoka7/multicursors.nvim",
  dependencies = { "smoka7/hydra.nvim" },
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
