return {
    "nvim-lualine/lualine.nvim",
    depencencies = {
      "SmiteshP/nvim-navic",
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
  }
