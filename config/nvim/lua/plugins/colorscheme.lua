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
