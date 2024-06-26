return {
  {
    "nvimdev/dashboard-nvim",
    opts = function()
      io.stdout:write("\x1b]1337;SetUserVar=in_editor=MQo\007")
    end,
  },
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    -- speed up scroll duration
    opts = function()
      local animate = require("mini.animate")
      local mouse_scrolled = false
      return {
        resize = {
          timing = animate.gen_timing.linear({ duration = 100, unit = "total" }),
        },
        scroll = {
          timing = animate.gen_timing.linear({ duration = 80, unit = "total" }),
          subscroll = animate.gen_subscroll.equal({
            predicate = function(total_scroll)
              if mouse_scrolled then
                mouse_scrolled = false
                return false
              end
              return total_scroll > 1
            end,
          }),
        },
      }
    end,
  },
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<leader>bl", false },
      { "<leader>b<Left>", "<cmd>BufferLineCloseLeft", desc = "Delete buffers to the left" },
      { "<leader>b<Right>", "<cmd>BufferLineCloseRight", desc = "Delete buffers to the right" },
    },
  },
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {},
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_c = { {
          "filename",
          path = 1,
        } },
        lualine_x = {
          "encoding",
          { "filetype", icon_only = true },
        },
        lualine_y = { "progress" },
        lualine_z = {
          "location",
          "selectioncount",
        },
      },
    },
  },
  {
    "rcarriga/nvim-notify",
    lazy = true,
    opts = {
      timeout = 8000,
      render = "wrapped-compact",
      top_down = false,
      max_height = function()
        return math.floor(vim.o.lines * 0.75)
      end,
      max_width = function()
        return math.floor(vim.o.columns * 0.75)
      end,
    },
  },
  {
    "Tummetott/reticle.nvim",
    event = "VeryLazy",
    opts = {
      always_highlight_number = true,
    },
  },
  {
    "tzachar/highlight-undo.nvim",
    event = "VeryLazy",
    opts = {},
  },
}
