return {
  { "folke/tokyonight.nvim", enabled = false },
  { "catppuccin/nvim", enabled = false },
  -- add gruvbox
  { "luisiacc/gruvbox-baby" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-baby",
    },
  },
  { "fladson/vim-kitty" },
  { "knubie/vim-kitty-navigator" },
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
    },
  },
  { "mg979/vim-visual-multi" },
  { "tpope/vim-projectionist" },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "bash",
          "diff",
          "eex",
          "elixir",
          "git_rebase",
          "gitattributes",
          "gitcommit",
          "gitignore",
          "heex",
          "html",
          "javascript",
          "json",
          "lua",
          "markdown",
          "markdown_inline",
          "python",
          "query",
          "regex",
          "sql",
          "tsx",
          "typescript",
          "vim",
        })
      end
    end,
  },
  -- { "mhanberg/elixir.nvim", requires = { "nvim-lua/plenary.nvim" } },
  {
    "mhanberg/output-panel.nvim",
    event = "VeryLazy",
    config = function()
      require("output_panel").setup()
    end,
  },

  {
    "akinsho/toggleterm.nvim",
    opts = {
      -- open_mapping = [[<c-/>]],

      direction = "float",
      shade_terminals = false,
      float_opts = {
        border = "single",
      },
    },
  },
}
