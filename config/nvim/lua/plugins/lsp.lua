return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = vim.tbl_filter(
        function(name)
          return not vim.tbl_contains({ "elixir-ls" }, name)
        end,

        vim.list_extend(opts.ensure_installed, {
          "stylua",
          "lexical",
          -- "elixir-ls",
        })
      )
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["elixir"] = { "mix" },
      },
    },
  },
}
