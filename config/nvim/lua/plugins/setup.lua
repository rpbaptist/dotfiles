-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  {
     "nvim-treesitter/nvim-treesitter",
     opts = {
       ensure_installed = {
         "bash",
         "eex",
         "elixir",
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
         "tsx",
         "typescript",
         "vim",
       },
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
    "tpope/vim-projectionist",
}
