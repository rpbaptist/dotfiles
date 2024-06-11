return {
  "tpope/vim-projectionist",
  event = "VeryLazy",
  cmd = {
    "A",
    "AS",
    "AT",
    "AV",
  },
  keys = {
    { "<leader>tf", "<cmd>AV<cr>", desc = "Jump to test file" },
  },
}
