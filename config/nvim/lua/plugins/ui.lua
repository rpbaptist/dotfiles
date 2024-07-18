return {
  { "akinsho/bufferline.nvim", enabled = false },
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
    "nanozuki/tabby.nvim",
    opts = {
      line = function(line)
        local theme = {
          head = { bg = "#1d2021" },
          fill = { bg = "#282828" },
          current_tab = { fg = "#282828", bg = "#d5c4a1", style = "bold" },
          tab = { fg = "#bdae93", bg = "#504945" },
          win = "TabLine",
          tail = { bg = "#1d2021" },
        }
        return {
          {
            theme.head,
            line.sep(" ", theme.head, theme.fill),
          },
          line.tabs().foreach(function(tab)
            local hl = tab.is_current() and theme.current_tab or theme.tab
            return {
              line.sep("", hl, theme.fill),
              tab.number(),
              tab.name(),
              line.sep("", hl, theme.fill),
              hl = hl,
              margin = " ",
            }
          end),
          line.spacer(),
          hl = theme.fill,
        }
      end,
    },
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
    "nvim-lualine/lualine.nvim",
    depencencies = {
      "SmiteshP/nvim-navic",
      "chrisgrieser/nvim-recorder",
    },
    opts = {
      options = {
        disabled_filetypes = {
          winbar = { "dashboard", "neo-tree" },
        },
      },
      sections = {
        lualine_c = {
          {
            "filename",
            path = 1,
          },
        },
        lualine_x = {
          { require("recorder").displaySlots },
          { require("recorder").recordingStatus },
          "searchcount",
          "selectioncount",
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      winbar = {
        lualine_c = {
          {
            "filetype",
            icon_only = true,
            separator = "",
            icon = { align = "left" },
            color = { bg = "#32302f" },
            padding = { left = 2, right = 1 },
          },
          {
            "filename",
            color = { fg = "#ebdbb2", bg = "#32302f" },
            separator = "",
            symbols = {
              modified = " ",
              readonly = "󰌾 ",
              newfile = " ",
            },
          },
          "navic",
        },
      },
      inactive_winbar = {
        lualine_c = {
          {
            "filetype",
            icon_only = true,
            separator = "",
            icon = { align = "left" },
            color = { bg = "#32302f" },
            padding = { left = 2, right = 1 },
          },
          {
            "filename",
            color = { fg = "#bdae93", bg = "#32302f" },
            separator = "",
            symbols = {
              modified = " ",
              readonly = "󰌾 ",
              newfile = " ",
            },
          },
        },
      },
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
