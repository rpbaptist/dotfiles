return {

  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        -- "elixir-ls",
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
            mason = false,
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
      lspconfig.lexical.setup({
        -- optional config
        on_attach = function(client, bufnr)
          print("Lexical has started")

          if client.server_capabilities then
            client.server_capabilities.documentFormattingProvider = false
          end

          vim.keymap.set("n", "gd", function()
            vim.lsp.buf.definition()
          end, { desc = "Go to definition", silent = true, remap = false, buffer = bufnr })
          vim.keymap.set("n", "gD", function()
            vim.lsp.buf.declaration()
          end, { desc = "Go to declaration", silent = true, remap = false, buffer = bufnr })
          -- vim.keymap.set("n", "<C-w>gv", ":vs<CR><cmd>lua vim.lsp.buf.definition()<CR>")
          -- vim.keymap.set("n", "<C-w>gs", ":sp<CR><cmd>lua vim.lsp.buf.definition()<CR>")
          -- vim.keymap.set("n", "K", vim.lsp.buf.hover)
          -- vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help)
          -- vim.keymap.set("i", "<C-q>", vim.lsp.buf.signature_help)
          -- vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition)
          -- vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
          -- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
          -- vim.keymap.set('n', 'gr', vim.lsp.buf.references)
          -- vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
          -- vim.keymap.set("n", "[e", vim.diagnostic.goto_prev)
          -- vim.keymap.set("n", "]e", vim.diagnostic.goto_next)
        end,
      })
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
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = function(_, opts)
      if vim.fn.executable("credo") == 0 then
        return
      end
      opts.linters_by_ft = {
        elixir = { "credo" },
      }
    end,
  },
}
