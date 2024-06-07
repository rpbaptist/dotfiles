return {
  {
    "nvimdev/dashboard-nvim",
    lazy = false,
    opts = {
      config = {
        center = {
          {
            action = LazyVim.telescope("files"),
            desc = " Find File",
            icon = " ",
            key = "f",
          },
          {
            action = "Telescope oldfiles",
            desc = " Recent Files",
            icon = " ",
            key = "r",
          },
          {
            action = "Telescope live_grep",
            desc = " Find Text",
            icon = " ",
            key = "g",
          },
          {
            action = "SessionLoadLast",
            desc = " Restore last session",
            icon = " ",
            key = "s",
          },
          {
            action = "Telescope persisted",
            desc = " Select session",
            icon = " ",
            key = "b",
          },
          {
            action = [[lua LazyVim.telescope.config_files()()]],
            desc = " Config",
            icon = " ",
            key = "c",
          },
          {
            action = "LazyExtras",
            desc = " Lazy Extras",
            icon = " ",
            key = "x",
          },
          {
            action = "Lazy",
            desc = " Lazy",
            icon = "󰒲 ",
            key = "l",
          },
          {
            action = function()
              vim.api.nvim_input("<cmd>qa<cr>")
            end,
            desc = " Quit",
            icon = " ",
            key = "q",
          },
        },
      },
    },
  },
}
