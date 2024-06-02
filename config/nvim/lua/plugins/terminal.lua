return {
  {
    "mrjones2014/smart-splits.nvim",
    lazy = false,
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
    keys = {
      {
        "<C-A-n>",
        function()
          require("smart-splits").move_cursor_left()
        end,
        desc = "Move left",
      },
      {
        "<C-A-i>",
        function()
          require("smart-splits").move_cursor_right()
        end,
        desc = "Move right",
      },
      {
        "<C-A-u>",
        function()
          require("smart-splits").move_cursor_up()
        end,
        desc = "Move up",
      },
      {
        "<C-A-e>",
        function()
          require("smart-splits").move_cursor_down()
        end,
        desc = "Move down",
      },

      {
        "<A-S-n>",
        function()
          require("smart-splits").resize_left()
        end,
        desc = "Resize left",
      },
      {
        "<A-S-i>",
        function()
          require("smart-splits").resize_right()
        end,
        desc = "Resize right",
      },
      {
        "<A-S-u>",
        function()
          require("smart-splits").resize_up()
        end,
        desc = "Resize up",
      },
      {
        "<A-S-e>",
        function()
          require("smart-splits").resize_down()
        end,
        desc = "Resize down",
      },

      {
        "<C-A-S-n>",
        function()
          require("smart-splits").swap_buf_left({ same_row = true })
        end,
        desc = "Swap left",
      },
      {
        "<C-A-S-i>",
        function()
          require("smart-splits").swap_buf_right({ same_row = true })
        end,
        desc = "Swap right",
      },
      {
        "<C-A-S-u>",
        function()
          require("smart-splits").swap_buf_up({ same_row = true })
        end,
        desc = "Swap up",
      },
      {
        "<C-A-S-e>",
        function()
          require("smart-splits").swap_buf_down({ same_row = true })
        end,
        desc = "Swap down",
      },

      {
        "<A-S-r>",
        function()
          require("smart-splits").start_resize_mode()
        end,
        desc = "Resize mode",
      },
    },
  },
  -- {
  --   "knubie/vim-kitty-navigator",
  --   keys = {
  --     { "<C-A-u>", "<cmd>KittyNavigateUp<cr>" },
  --     { "<C-A-e>", "<cmd>KittyNavigateDown<cr>" },
  --     { "<C-A-n>", "<cmd>KittyNavigateLeft<cr>" },
  --     { "<C-A-i>", "<cmd>KittyNavigateRight<cr>" },
  --   },
  -- },
}
