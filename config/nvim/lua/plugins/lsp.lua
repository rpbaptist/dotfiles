return {

  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
      })
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    event = "BufReadPre",
    dependencies = { "mason.nvim" },
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          -- nls.builtins.diagnostics.credo,
          nls.builtins.formatting.prettierd,
          nls.builtins.formatting.stylua,
          -- nls.builtins.formatting.mix,
        },
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local configs = require("lspconfig.configs")

      if not configs.lexical then
        configs.lexical = {
          default_config = {
            filetypes = { "elixir", "eelixir", "heex", "surface" },
            cmd = { os.getenv("HOME") .. "/code/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
            root_dir = function(fname)
              return lspconfig.util.root_pattern("mix.exs", ".git")(fname) or vim.loop.os_homedir()
            end,
            -- optional settings
            settings = {},
          },
        }
      end

      lspconfig.lexical.setup({})
    end,
  },
}
