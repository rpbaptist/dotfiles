return {
  { "akinsho/bufferline.nvim", enabled = false },
  {
    "3rd/image.nvim",
    event = "VeryLazy",
    opts = {},
    config = function()
      require("image").setup()
      package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua"
      package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua"
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
          enable = false,
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
    "SmiteshP/nvim-navic",
    opts = {
      depth_limit_indicator = "…",
      separator = "  ",
      highlight = true,
      depth_limit = 0,
    },
  },
  {
    "rcarriga/nvim-notify",
    lazy = true,
    opts = {
      timeout = 5000,
      render = "wrapped-compact",
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
