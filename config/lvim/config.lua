-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Nyo

-- vim.cmd("let g:gruvbox_material_background = 'hard'")
-- vim.cmd("let g:gruvbox_material_foreground = 'mix'")
-- -- vim.cmd("let g:gruvbox_material_enable_bold = 1")
-- vim.cmd("let g:gruvbox_material_enable_italic = 1")
-- vim.cmd("let g:gruvbox_material_dim_inactive_windows = 1")
-- vim.cmd("let g:gruvbox_material_statusline_style = 'original'")
-- vim.cmd("let g:gruvbox_material_enable_italic = 1")
-- lvim.colorscheme = "gruvbox-material"

vim.cmd("let g:kitty_navigator_no_mappings = 1")

require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true,    -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})
vim.cmd("let g:gruvbox_contrast = 'hard'")
vim.cmd("let g:gruvbox_dim_inactive = 1")
lvim.colorscheme = "gruvbox"

lvim.format_on_save = true
lvim.lint_on_save = true

lvim.keys.normal_mode["<C-h>"] = false
lvim.keys.normal_mode["<C-j>"] = false
lvim.keys.normal_mode["<C-k>"] = false
lvim.keys.normal_mode["<C-l>"] = false
lvim.keys.normal_mode["<C-w>"] = false
lvim.keys.normal_mode["<C-Tab>"] = false
lvim.keys.normal_mode["<C-S-Tab>"] = false
lvim.keys.normal_mode["<M-k>"] = false
lvim.keys.normal_mode["<M-j>"] = false
lvim.keys.normal_mode["<Space-c>"] = false
lvim.keys.normal_mode["<M-Up>"] = false
lvim.keys.normal_mode["<M-Down>"] = false
lvim.keys.normal_mode["<M-Left>"] = false
lvim.keys.normal_mode["<M-Right>"] = false
lvim.keys.normal_mode["<C-Up>"] = false
lvim.keys.normal_mode["<C-Down>"] = false
lvim.keys.normal_mode["<C-Left>"] = false
lvim.keys.normal_mode["<C-Right>"] = false

lvim.keys.normal_mode["<space>|"] = ":vsplit<CR>"
lvim.keys.normal_mode["<space>-"] = ":split<CR>"

lvim.keys.normal_mode["<C-A-u>"] = ":KittyNavigateUp<cr>"
lvim.keys.normal_mode["<C-A-e>"] = ":KittyNavigateDown<cr>"
lvim.keys.normal_mode["<C-A-n>"] = ":KittyNavigateLeft<cr>"
lvim.keys.normal_mode["<C-A-i>"] = ":KittyNavigateRight<cr>"

lvim.keys.normal_mode["<C-S-Up>"] = ":m .-2<CR>=="
lvim.keys.normal_mode["<C-S-Down>"] = ":m .+1<CR>=="

lvim.keys.normal_mode["<C-s>"] = ":w<CR>"
lvim.keys.insert_mode["<C-s>"] = "<ESC>:w<CR>"

-- Buffers
lvim.keys.normal_mode["<C-A-Tab>"] = ":bn<CR>"
lvim.keys.normal_mode["<C-A-S-Tab>"] = ":bp<CR>"

-- Projectionist
vim.api.nvim_set_var('projectionist_heuristics', {
   ["mix.exs"] = {
    ["lib/**/views/*_view.ex"] = {
      type = "view",
      alternate = "test/{dirname}/views/{basename}_view_test.exs",
      template = {
        "defmodule {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}View do",
        "  use {dirname|camelcase|capitalize}, :view",
        "end",
      },
    },
    ["test/**/views/*_view_test.exs"] = {
      alternate = "lib/{dirname}/views/{basename}_view.ex",
      type = "test",
      template = {
        "defmodule {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}ViewTest do",
        "  use ExUnit.Case, async: true",
        "",
        "  alias {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}View",
        "end",
      },
    },
    ["lib/**/controllers/*_controller.ex"] = {
      type = "controller",
      alternate = "test/{dirname}/controllers/{basename}_controller_test.exs",
      template = {
        "defmodule {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}Controller do",
        "  use {dirname|camelcase|capitalize}, :controller",
        "end",
      },
    },
    ["test/**/controllers/*_controller_test.exs"] = {
      alternate = "lib/{dirname}/controllers/{basename}_controller.ex",
      type = "test",
      template = {
        "defmodule {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}ControllerTest do",
        "  use {dirname|camelcase|capitalize}.ConnCase, async: true",
        "end",
      },
    },
    ["lib/**/channels/*_channel.ex"] = {
      type = "channel",
      alternate = "test/{dirname}/channels/{basename}_channel_test.exs",
      template = {
        "defmodule {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}Channel do",
        "  use {dirname|camelcase|capitalize}, :channel",
        "end",
      },
    },
    ["test/**/channels/*_channel_test.exs"] = {
      alternate = "lib/{dirname}/channels/{basename}_channel.ex",
      type = "test",
      template = {
        "defmodule {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}ChannelTest do",
        "  use {dirname|camelcase|capitalize}.ChannelCase, async = true",
        "",
        "  alias {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}Channel",
        "end",
      },
    },
    ["test/**/features/*_test.exs"] = {
      type = "feature",
      template = {
        "defmodule {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}Test do",
        "  use {dirname|camelcase|capitalize}.FeatureCase, async = true",
        "end",
      },
    },
    ["lib/*.ex"] = {
      alternate = "test/{}_test.exs",
      type = "source",
      template = { "defmodule {camelcase|capitalize|dot} do", "end" },
    },
    ["test/*_test.exs"] = {
      alternate = "lib/{}.ex",
      type = "test",
      template = {
        "defmodule {camelcase|capitalize|dot}Test do",
        "  use ExUnit.Case, async: true",
        "",
        "  alias {camelcase|capitalize|dot}",
        "end",
      },
    },
  },
})

lvim.lsp.installer.setup.ensure_installed = {
  "lua_ls",
  "cssls",
  "tsserver",
  "tailwindcss",
  "elixirls"
}

lvim.plugins = {
  -- { "lunarvim/colorschemes" },
  { "sainnhe/gruvbox-material" },
  { "ellisonleao/gruvbox.nvim", priority = 1000 },
  { "tpope/vim-projectionist" },
      {
      "mhanberg/output-panel.nvim",
      event = "VeryLazy",
      config = function()
        require("output_panel").setup()
      end
    },

  {"knubie/vim-kitty-navigator"},

}

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "css",
  "elixir",
  "heex",
  "javascript",
  "json",
  "lua",
  "python",
  "yaml",
}
lvim.format_on_save = true
