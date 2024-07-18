return {
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
}
