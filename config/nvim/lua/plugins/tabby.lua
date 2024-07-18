return {
  "nanozuki/tabby.nvim",
  opts = {
    line = function(line)
      local theme = {
        fill = "TabLineFill",
        current_tab = "TabLineSel",
        tab = "TabLine",
        win = "TabLineWin",
      }
      return {
        line.tabs().foreach(function(tab)
          if tab.is_current() then
            return {
              line.sep("", theme.current_tab, theme.fill),
              " ",
              tab.number(),
              line.sep("", theme.current_tab, theme.fill),
              hl = theme.current_tab,
              margin = " ",
            }
          else
            local tab_node = {
              line.sep("", theme.tab, theme.fill),
              " ",
              tab.number(),
              line.sep(" ", theme.tab, theme.win),
              hl = theme.tab,
              margin = " ",
            }
            local wins_node = {
              tab.name(),
              line.sep("", theme.win, theme.fill),
              hl = theme.win,
              margin = " ",
            }
            return { tab_node, wins_node }
          end
        end),
        line.spacer(),
        hl = theme.fill,
      }
    end,
  },
}
