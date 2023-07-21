return {
  -- add gruvbox
  -- { "ellisonleao/gruvbox.nvim", opts = {
  --   contrast = "hard",
  --   bold = false
  -- } },

  {"sainnhe/gruvbox-material" },

  {"knubie/vim-kitty-navigator"},

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },

  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
      })
    end,
  },

  {"mg979/vim-visual-multi"},
  {"tpope/vim-projectionist"},
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
      end
    },
    {
      "mhanberg/output-panel.nvim",
      event = "VeryLazy",
      config = function()
        require("output_panel").setup()
      end
    },
}
