return {
  "folke/which-key.nvim",
  opts = function(_, opts)
    table.insert(opts.spec, { "<leader>tj", group = "Jump to test file" })
  end,
}
