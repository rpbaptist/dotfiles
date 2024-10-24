return {
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  {
    "echasnovski/mini.files",
    priority = 1,
    lazy = false,
    event = "VimEnter",
    opts = {
      windows = {
        width_focus = 60,
        width_preview = 60,
      },
      mappings = {
        go_in = "<Right>",
        go_in_plus = "<CR>",
        go_out = "<Left>",
        go_out_plus = "<Esc>",
      },
    },
    keys = {
      { "<leader>fm", false },
      { "<leader>fM", false },
      {
        "<leader>fe",
        function()
          require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
        end,
        desc = "mini.files (current file path)",
      },
      {
        "<leader>fE",
        function()
          require("mini.files").open(vim.uv.cwd(), true)
        end,
        desc = "mini.files (cwd)",
      },
    },
  },
}
