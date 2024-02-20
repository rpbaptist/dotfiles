return {
  "nvim-lua/plenary.nvim",
  {
    "jedrzejboczar/possession.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      autosave = {
        current = true,
        tmp = function()
          vim.fn.getcwd()
        end,
      },
    },
  },
}
