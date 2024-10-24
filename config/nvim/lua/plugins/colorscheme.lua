return {
  { "folke/tokyonight.nvim", enabled = false },
  { "catppuccin/nvim", enabled = false },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      contrast = "hard",
      overrides = {
        Function = { fg = "#8ec07c", bold = false }, -- light aqua instead of yellow
        Number = { fg = "#fe8019" }, -- light orange instead of purple
        Special = { fg = "#83a598" }, -- light blue instead of orange
        Structure = { fg = "#fabd2f" }, -- light yellow instead of light aqua
        GitSignsAdd = { fg = "#8ec07c" },
        GitSignsChange = { fg = "#d79921" },
        GitSignsDelete = { fg = "#fb4934" },
        DiffAdd = { fg = "#fbf1c7", bg = "#98971a" },
        DiffChange = { fg = "#fabd2f" },
        DiffText = { fg = "#32302f", bg = "#fbf1c7" },
        FlashLabel = { fg = "#1d2021", bg = "#83a598" },
        WinBar = { fg = "#ebdbb2", bg = "#32302f" },
        WinBarAqua = { fg = "#689d6a", bg = "#32302f" },
        WinBarBlue = { fg = "#458588", bg = "#32302f" },
        WinBarOrange = { fg = "#d65d0e", bg = "#32302f" },
        WinBarRed = { fg = "#cc241d", bg = "#32302f" },
        WinBarPurple = { fg = "#b16286", bg = "#32302f" },
        WinBarYellow = { fg = "#d79921", bg = "#32302f" },
        WinBarGreen = { fg = "#b8bb26", bg = "#32302f" },
        NavicIconsPackage = { link = "WinBarAqua" },
        NavicText = { default = true, fg = "#d5c4a1", bg = "#32302f" },
        NavicSeparator = { fg = "#38a598", bg = "#32302f" },
        NavicIconsKey = { link = "WinBarAqua" },
        NavicIconsProperty = { link = "WinBarAqua" },
        NavicIconsFile = { link = "WinBarBlue" },
        NavicIconsMethod = { link = "WinBarBlue" },
        NavicIconsFunction = { link = "WinBarBlue" },
        NavicIconsNamespace = { link = "WinBarBlue" },
        NavicIconsConstructor = { link = "WinBarBlue" },
        NavicIconsString = { link = "WinBarGreen" },
        NavicIconsInterface = { link = "WinBarGreen" },
        NavicIconsNull = { link = "WinBarOrange" },
        NavicIconsModule = { link = "WinBarOrange" },
        NavicIconsNumber = { link = "WinBarOrange" },
        NavicIconsArray = { link = "WinBarOrange" },
        NavicIconsObject = { link = "WinBarOrange" },
        NavicIconsBoolean = { link = "WinBarOrange" },
        NavicIconsConstant = { link = "WinBarOrange" },
        NavicIconsEnum = { link = "WinBarPurple" },
        NavicIconsField = { link = "WinBarPurple" },
        NavicIconsStruct = { link = "WinBarPurple" },
        NavicIconsVariable = { link = "WinBarPurple" },
        NavicIconsOperator = { link = "WinBarRed" },
        NavicIconsTypeParameter = { link = "WinBarRed" },
        NavicIconsEvent = { link = "WinBarYellow" },
        NavicIconsClass = { link = "WinBarYellow" },
        NavicIconsEnumMember = { link = "WinBarYellow" },
        TabLine = { fg = "#bdae93", bg = "#504945" },
        TabLineSel = { fg = "#fbf1c7", bg = "#504945" },
        TabLineFill = { bg = "#1d2021" },
        TabLineWin = { fg = "#a89984", bg = "#3c3836" },
        AvanteTitle = { fg = "#8ec07c" },
        AvanteSubtitle = { fg = "#83a598" },
        AvanteThirdTitle = { fg = "#458588", bg = "#504945" },
        AvanteReversedTitle = { fg = "#689d6a" },
        AvanteConflictCurrent = { link = "DiffText" },
        AvanteConflictAncestor = { fg = "#fbf1c7", bg = "#458588" },
        AvanteConflictIncoming = { link = "DiffAdd" },
        AvanteReversedSubTitle = { fg = "#d3869b" },
        AvanteReversedThirdTitle = { fg = "#458588", bg = "#1d2021" },
        AvanteConflictCurrentLabel = { fg = "#98971a", bg = "#fbf1c7" },
        AvanteConflictAncestorLabel = { fg = "#d5c4a1", bg = "#458588" },
        AvanteConflictIncomingLabel = { bg = "#fbf1c7", fg = "#8ec07c" },
        ["@markup.heading.1.markdown"] = { fg = "#fb4934", bg = "", bold = true },
        ["@markup.heading.2.markdown"] = { fg = "#fabd2f", bg = "", bold = true },
        ["@markup.heading.3.markdown"] = { fg = "#b8bb26", bg = "", bold = true },
        ["@markup.heading.4.markdown"] = { fg = "#8ec07c", bg = "", bold = true },
        ["@markup.heading.5.markdown"] = { fg = "#83a598", bg = "", bold = true },
        ["@markup.heading.6.markdown"] = { fg = "#d3869b", bg = "", bold = true },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
