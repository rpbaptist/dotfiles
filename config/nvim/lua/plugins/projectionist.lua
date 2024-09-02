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
    { "<leader>tff", "<cmd>A<cr>", desc = "Jump to test file" },
    { "<leader>tfe", "<cmd>AS<cr>", desc = "Open test file in hsplit" },
    { "<leader>tfi", "<cmd>AV<cr>", desc = "Open test file in vsplit" },
    { "<leader>tf<Tab>", "<cmd>AT<cr>", desc = "Open test file in tab" },
  },
}
