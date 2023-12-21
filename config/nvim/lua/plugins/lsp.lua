return {

  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "elixir-ls",
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
  --   config = function()
  --     local lspconfig = require("lspconfig")
  --     local configs = require("lspconfig.configs")

  --     if not configs.lexical then
  --       configs.lexical = {
  --         default_config = {
  --           filetypes = { "elixir", "eelixir", "heex", "surface" },
  --           mason = false
  --           cmd = { os.getenv("HOME") .. "/code/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
  --           root_dir = function(fname)
  --             return lspconfig.util.root_pattern("mix.exs", ".git")(fname) or vim.loop.os_homedir()
  --           end,
  --           -- optional settings
  --           settings = {},
  --         },
  --       }
  --     end

  --     lspconfig.lexical.setup({})
  --   end,
  -- },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "j-hui/fidget.nvim", config = true, tag = "legacy" },
    },
    config = function()
      local lspconfig = require("lspconfig")

      local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
      function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
        opts = opts or {}
        opts.border = opts.border or "rounded"
        return orig_util_open_floating_preview(contents, syntax, opts, ...)
      end

      local function on_attach(client, buffer)
        local bufopts = { noremap = true, silent = true, buffer = buffer }

        require("lsp_signature").on_attach({ bind = true, handler_opts = { border = "rounded" } }, buffer)

        -- Mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
        vim.keymap.set("n", "<C-w>gv", ":vs<CR><cmd>lua vim.lsp.buf.definition()<CR>", bufopts)
        vim.keymap.set("n", "<C-w>gs", ":sp<CR><cmd>lua vim.lsp.buf.definition()<CR>", bufopts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
        vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, bufopts)
        vim.keymap.set("i", "<C-q>", vim.lsp.buf.signature_help, bufopts)
        vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, bufopts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
        -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
        vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, bufopts)
        vim.keymap.set("n", "[e", vim.diagnostic.goto_prev, bufopts)
        vim.keymap.set("n", "]e", vim.diagnostic.goto_next, bufopts)

        -- Workspace stuff
        vim.keymap.set("n", "<leader>lwa", vim.lsp.buf.add_workspace_folder, bufopts)
        vim.keymap.set("n", "<leader>lwr", vim.lsp.buf.remove_workspace_folder, bufopts)
        vim.keymap.set("n", "<leader>lwl", function()
          print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, bufopts)
      end

      local function get_ls_cmd(ls)
        local language_servers_dir = vim.fn.stdpath("data") .. "/mason/bin/"
        return language_servers_dir .. ls
      end

      local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

      local function config(ls, ...)
        return { capabilities = capabilities, on_attach = on_attach, cmd = { get_ls_cmd(ls), ... } }
      end

      -- lspconfig.efm.setup({ filetypes = { "elixir" }, cmd = { get_ls_cmd("efm-langserver") } })
      lspconfig.clangd.setup(config("clangd"))

      lspconfig.lua_ls.setup({
        cmd = { get_ls_cmd("lua-language-server") },
        on_attach = on_attach,
        settings = {
          Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = { globals = { "vim" } },
            workspace = {
              library = {
                vim.api.nvim_get_runtime_file("", true),
                vim.api.nvim_get_runtime_file("/lua/vim/lsp", true),
              },
            },
            telemetry = { enable = false },
          },
        },
      })

      -- Setup lexical or elixirls

      local configs = require("lspconfig.configs")
      local lexical_config = {
        filetypes = { "elixir", "eelixir", "heex" },
        mason = false,
        cmd = { os.getenv("HOME") .. "/code/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
        settings = {},
      }

      configs.lexical = {
        default_config = {
          filetypes = lexical_config.filetypes,
          cmd = lexical_config.cmd,
          root_dir = function(fname)
            return lspconfig.util.root_pattern("mix.exs", ".git")(fname) or vim.loop.os_homedir()
          end,
          -- optional settings
          settings = lexical_config.settings,
        },
      }

      lspconfig.lexical.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        root_dir = function(fname)
          return lspconfig.util.root_pattern("mix.exs", ".git")(fname)
        end,
      })
    end,
  },
}
