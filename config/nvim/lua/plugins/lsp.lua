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
  -- { "williamboman/mason-lspconfig.nvim" },
  -- {
  --   "nvimtools/none-ls.nvim",
  --   event = "BufReadPre",
  --   dependencies = { "mason.nvim" },
  --   opts = function()
  --     local nls = require("null-ls")
  --     return {
  --       sources = {
  --         -- nls.builtins.diagnostics.credo,
  --         nls.builtins.formatting.prettierd,
  --         nls.builtins.formatting.stylua,
  --         -- nls.builtins.diagnostics.markdownlint,
  --         -- nls.builtins.formatting.mix,
  --       },
  --     }
  --   end,
  -- },
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     local lspconfig = require("lspconfig")
  --     local configs = require("lspconfig.configs")
  --
  --     if not configs.lexical then
  --       configs.lexical = {
  --         default_config = {
  --           mason = false,
  --           filetypes = { "elixir", "eelixir", "heex", "surface" },
  --           cmd = { os.getenv("HOME") .. "/code/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
  --           root_dir = function(fname)
  --             return lspconfig.util.root_pattern("mix.exs", ".git")(fname) or vim.loop.os_homedir()
  --           end,
  --           -- optional settings
  --           settings = {},
  --         },
  --       }
  --     end
  --     lspconfig.lexical.setup({
  --       -- optional config
  --       on_attach = function(client, bufnr)
  --         print("Lexical has started")
  --
  --         if client.server_capabilities then
  --           client.server_capabilities.documentFormattingProvider = false
  --         end
  --
  --         vim.keymap.set("n", "gd", function()
  --           vim.lsp.buf.definition()
  --         end, { desc = "Goto Definition", silent = true, remap = false, buffer = bufnr, has = "defintion" })
  --
  --         vim.keymap.set("n", "gD", function()
  --           vim.lsp.buf.declaration()
  --         end, { desc = "Goto Declaration", silent = true, remap = false, buffer = bufnr })
  --
  --         vim.keymap.set("n", "gI", function()
  --           require("telescope.builtin").lsp_implementations({ reuse_win = true })
  --         end, { desc = "Goto Implementations", silent = true, remap = false, buffer = bufnr })
  --
  --         vim.keymap.set("n", "gy", function()
  --           require("telescope.builtin").lsp_type_definitions({ reuse_win = true })
  --         end, { desc = "Goto T[y]pe defintions", silent = true, remap = false, buffer = bufnr })
  --
  --         vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", { desc = "References" })
  --         vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
  --         vim.keymap.set("n", "<leader>cA", function()
  --           vim.lsp.buf.code_action({
  --             context = {
  --               only = { "source" },
  --               diagnostics = {},
  --             },
  --           })
  --         end, { desc = "Code Action" })
  --         -- vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
  --         -- vim.keymap.set("n", "[e", vim.diagnostic.goto_prev)
  --         -- vim.keymap.set("n", "]e", vim.diagnostic.goto_next)
  --       end,
  --     })
  --   end,
  -- },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["elixir"] = { "mix" },
      },
    },
  },
  -- {
  --   "mfussenegger/nvim-lint",
  --   optional = true,
  --   opts = function(_, opts)
  --     if vim.fn.executable("credo") == 0 then
  --       return
  --     end
  --     opts.linters_by_ft = {
  --       elixir = { "credo" },
  --     }
  --   end,
  -- },
}
