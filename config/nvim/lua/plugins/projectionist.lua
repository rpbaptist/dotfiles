return {
  "tpope/vim-projectionist",
  lazy = false,
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
