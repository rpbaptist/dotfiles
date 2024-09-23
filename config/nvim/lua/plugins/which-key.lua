return {
  "folke/which-key.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.spec, {
      { "<leader>tj", group = "Jump to test file" },
      { "<leader>a", group = "AI" },
    })
  end,
}
