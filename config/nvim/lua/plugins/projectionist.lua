return {
  {
    "tpope/vim-projectionist",
    lazy = true,
    cmd = {
      "A",
      "AS",
      "AT",
      "AV",
    },
    keys = {
      { "<leader>tf", "<cmd>A<cr>", desc = "Jump to test file" },
    },
  },
}
