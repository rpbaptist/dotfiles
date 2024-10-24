return {
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local remove_sources = { "credo" }
      opts.sources = vim.tbl_filter(function(source)
        return not vim.tbl_contains(remove_sources, source.name)
      end, opts.sources)
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      vim.tbl_deep_extend("error", opts.servers.elixirls, {
        settings = {
          elixirLS = {
            mixEenv = "dev",
            mixTarget = "dev",
          },
        },
      })
    end,
  },
}
