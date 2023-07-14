-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
-- if true then return {} end

-- every spec file under config.plugins will be loaded automatically by lazy.nvim
--
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
    "elixir-tools/elixir-tools.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local elixir = require("elixir")
      local elixirls = require("elixir.elixirls")

      elixir.setup {
        credo = {},
        elixirls = {
          enabled = true,
          settings = elixirls.settings {
            dialyzerEnabled = false,
            enableTestLenses = false,
          },
        }
      }
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    }
  },
  {
     "nvim-treesitter/nvim-treesitter",
     opts = {
       ensure_installed = {
         "bash",
         "html",
         "javascript",
         "json",
         "elixir",
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
    "folke/which-key.nvim",
    optional = true,
    opts = {
      defaults = {
        ["<leader>t"] = { name = "+test" },
      },
    },
  }
}
