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
    "jose-elias-alvarez/null-ls.nvim",
    event = "BufReadPre",
    dependencies = { "mason.nvim" },
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          nls.builtins.diagnostics.credo,
          nls.builtins.formatting.prettierd,
          nls.builtins.formatting.stylua,
          nls.builtins.formatting.mix,
        },
      }
    end,
  },
  -- {
  --   "neovim/nvim-lspconfig",
  --      elixirls = {},
  --   opts = {
  --     servers = {
  --       elixirls = {
  --         cmd = { "/Users/richard/.elixir-ls/language_server.sh" },
  --       },
  --     },
  --   },
  -- },
}
