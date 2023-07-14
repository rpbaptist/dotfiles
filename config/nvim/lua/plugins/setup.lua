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
  },
  {
    "otavioschwanck/telescope-alternate",
    event = { "BufReadPre", "BufNewFile" },
    -- setup = function()
    --   require("telescope").load_extension('telescope-alternate')

      -- local alternate = require("telescope-alternate")

      -- alternate.setup(
  --       mappings = {
  -- "lib/tiger_web/views/api/*_view.ex": {
  --   "type": "view",
  --   "related": [
  --     "lib/tiger_web/controllers/api/{}_controller.ex"
  --   ],
  --   "template": [
  --     "defmodule TigerWeb.API.{dirname|camelcase|capitalize|dot}.{basename|camelcase|capitalize}View do",
  --     "  @moduledoc false",
  --     "",
  --     "  use TigerWeb, :view",
  --     "end"
  --   ]
  -- },
  -- "lib/tiger_web/controllers/api/*_controller.ex": {
  --   "type": "controller",
  --   "alternate": "test/tiger_web/controllers/{basename}_controller_test.exs",
  --   "related": [
  --     "lib/tiger_web/views/api/{}_view.ex"
  --   ],
  --   "template": [
  --     "defmodule TigerWeb.API.{dirname|camelcase|capitalize|dot}.{basename|camelcase|capitalize}Controller do",
  --     "  @moduledoc false",
  --     "",
  --     "  use TigerWeb, :api_controller",
  --     "end"
  --   ]
  -- },
  -- "test/tiger_web/controllers/api/*_controller_test.exs": {
  --   "alternate": "lib/tiger_web/controllers/{basename}_controller.ex",
  --   "type": "test",
  --   "related": [
  --     "lib/tiger_web/views/api/{}_view.ex"
  --   ],
  --   "template": [
  --     "defmodule TigerWeb.API.{dirname|camelcase|capitalize|dot}.{basename|camelcase|capitalize}ControllerTest do",
  --     "  @moduledoc false",
  --     "",
  --     "  use TigerWeb.ConnCase, async: true",
  --     "end"
  --   ]
  -- },
  -- "lib/*.ex": {
  --   "alternate": "test/{}_test.exs",
  --   "type": "source",
  --   "template": [
  --     "defmodule {camelcase|capitalize|dot} do",
  --     "  @moduledoc \"\"\"",
  --     "",
  --     "  \"\"\"",
  --     "end"
  --   ]
  -- },
  -- "test/*_test.exs": {
  --   "alternate": "lib/{}.ex",
  --   "type": "test",
  --   "template": [
  --     "defmodule {camelcase|capitalize|dot}Test do",
  --     "  use Tiger.DataCase, async: true",
  --     "",
  --     "  alias {camelcase|capitalize|dot}",
  --     "end"
  --   ]
  -- }
-- }
    --   )
    -- end
  },
}
