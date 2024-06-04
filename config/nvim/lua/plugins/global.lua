return {
  { "folke/tokyonight.nvim", enabled = false },
  { "catppuccin/nvim", enabled = false },
  { "nvim-pack/nvim-spectre", enabled = false },
  -- { "nvim-treesitter/playground", dependencies = { "nvim-treesitter/nvim-treesitter" } },
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      contrast = "hard",
      overrides = {
        Function = { fg = "#8ec07c", bold = false }, -- light aqua instead of yellow
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
  {
    "echasnovski/mini.move",
    opts = {

      mappings = {
        up = "<C-S-Up>",
        down = "<C-S-Down>",
        left = "<C-S-Left>",
        right = "<C-S-Right>",

        line_up = "<C-S-Up>",
        line_down = "<C-S-Down>",
        line_left = "<C-S-Left>",
        line_right = "<C-S-Right>",
      },
    },
  },
  {
    "jedrzejboczar/possession.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  },
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      "jedrzejboczar/possession.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
        require("telescope").load_extension("possession")
      end,
    },
    keys = {
      { "<leader>gs", false },
      { "<leader>gc", false },
      { "<leader>gf", "<cmd>Telescope git_status<cr>", desc = "Git files" },
      { "<leader>bl", "<cmd>Telescope buffers<cr>", desc = "List buffers" },
    },
  },
  { "mg979/vim-visual-multi" },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "git_rebase",
          "gitattributes",
          "gitcommit",
          "gitignore",
          "sql",
          "tsx",
        })
      end
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    opts = {
      direction = "float",
      shade_terminals = false,
      float_opts = {
        border = "single",
      },
    },
  },
}
