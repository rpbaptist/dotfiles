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
    { "<leader>tf", "<cmd>A<cr>", desc = "Jump to test file" },
  },
}
