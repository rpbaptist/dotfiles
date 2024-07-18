return {
  "nanozuki/tabby.nvim",
  opts = {
    line = function(line)
      local theme = {
        head = { bg = "#1d2021" },
        fill = { bg = "#1d2021" },
        current_tab = { fg = "#ebdbb2", bg = "#504945" },
        tab = { fg = "#bdae93", bg = "#3c3836" },
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
          local tab_node = {
            line.sep("", hl, theme.fill),
            tab.number(),
            tab.name(),
            line.sep("", hl, theme.fill),
            hl = hl,
            margin = " ",
          }
          return tab_node
        end),
        line.spacer(),
        hl = theme.fill,
      }
    end,
  },
}
