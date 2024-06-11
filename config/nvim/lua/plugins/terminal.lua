return {
  {
    "mrjones2014/smart-splits.nvim",
    commit = "",
    build = "./kitty/install-kittens.bash",
    opts = {
      at_edge = "stop",
      cursor_follows_swapped_bufs = true,
      kitty_password = "nvimwindows",
      multiplexer_integration = "kitty",
      resize_mode = {
        resize_keys = { "<Left>", "<Down>", "<Up", "<Right>" },
      },
    },
    keys = function()
      local splits = require("smart-splits")

      return {
        { "<C-A-n>", splits.move_cursor_left, desc = "Move left" },
        { "<C-A-i>", splits.move_cursor_right, desc = "Move right" },
        { "<C-A-u>", splits.move_cursor_up, desc = "Move up" },
        { "<C-A-e>", splits.move_cursor_down, desc = "Move down" },

        {
          "<A-S-n>",
          function()
            splits.resize_left(5)
          end,
          desc = "Resize left",
        },
        {
          "<A-S-i>",
          function()
            splits.resize_right(5)
          end,
          desc = "Resize right",
        },
        {
          "<A-S-u>",
          function()
            splits.resize_up(5)
          end,
          desc = "Resize up",
        },
        {
          "<A-S-e>",
          function()
            splits.resize_down(5)
          end,
          desc = "Resize down",
        },

        {
          "<C-A-S-n>",
          function()
            splits.swap_buf_left({ same_row = true })
          end,
          desc = "Swap left",
        },
        {
          "<C-A-S-i>",
          function()
            splits.swap_buf_right({ same_row = true })
          end,
          desc = "Swap right",
        },
        {
          "<C-A-S-u>",
          function()
            splits.swap_buf_up({ same_row = true })
          end,
          desc = "Swap up",
        },
        {
          "<C-A-S-e>",
          function()
            splits.swap_buf_down({ same_row = true })
          end,
          desc = "Swap down",
        },

        { "<A-S-r>", splits.start_resize_mode, desc = "Resize mode" },
      }
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    lazy = true,
    cmd = {
      "ToggleTerm",
      "TermExec",
    },
    opts = {
      direction = "float",
      shade_terminals = false,
      float_opts = {
        border = "single",
      },
    },
    keys = {
      { "<c-/>", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal float" },
      -- { "<c-/>t", "<cmd>ToggleTerm direction=tab<cr>", desc = "Toggle terminal tab" },
      -- { "<c-/>e", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Toggle terminal horizontal" },
    },
  },
}
