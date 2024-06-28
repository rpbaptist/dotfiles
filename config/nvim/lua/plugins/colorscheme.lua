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
        DiffAdd = { fg = "#fbf1c7", bg = "#8ec07c" },
        DiffDelete = { fg = "#fbf1c7", bg = "#fb4934" },
        DiffChange = { fg = "#fabd2f" },
        DiffText = { fg = "#3c3836", bg = "#fbf1c7" },
        FlashLabel = { fg = "#1d2021", bg = "#83a598" },
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
