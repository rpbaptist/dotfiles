-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Nyo

vim.cmd("let g:gruvbox_material_background = 'hard'")
vim.cmd("let g:gruvbox_material_foreground = 'mix'")
-- vim.cmd("let g:gruvbox_material_enable_bold = 1")
vim.cmd("let g:gruvbox_material_enable_italic = 1")
vim.cmd("let g:gruvbox_material_dim_inactive_windows = 1")
vim.cmd("let g:gruvbox_material_statusline_style = 'original'")
vim.cmd("let g:gruvbox_material_enable_italic = 1")
lvim.colorscheme = "gruvbox-material"

-- require("gruvbox").setup({
--   undercurl = true,
--   underline = true,
--   bold = true,
--   italic = {
--     strings = true,
--     comments = true,
--     operators = false,
--     folds = true,
--   },
--   strikethrough = true,
--   invert_selection = false,
--   invert_signs = false,
--   invert_tabline = false,
--   invert_intend_guides = false,
--   inverse = true,    -- invert background for search, diffs, statuslines and errors
--   contrast = "hard", -- can be "hard", "soft" or empty string
--   palette_overrides = {},
--   overrides = {},
--   dim_inactive = false,
--   transparent_mode = false,
-- })
-- vim.cmd("let g:gruvbox_contrast = 'hard'")
-- vim.cmd("let g:gruvbox_dim_inactive = 1")
-- lvim.colorscheme = "gruvbox"

lvim.format_on_save = true
lvim.lint_on_save = true

lvim.keys.normal_mode["<C-h>"] = false
lvim.keys.normal_mode["<C-j>"] = false
lvim.keys.normal_mode["<C-k>"] = false
lvim.keys.normal_mode["<C-l>"] = false
lvim.keys.normal_mode["<C-Tab>"] = false
lvim.keys.normal_mode["<C-S-Tab>"] = false
lvim.keys.normal_mode["<M>-k"] = false
lvim.keys.normal_mode["<M>-j"] = false

lvim.keys.normal_mode["<C-S-Up>"] = ":m .-2<CR>=="
lvim.keys.normal_mode["<C-S-Down>"] = "<:m .+1<CR>=="

lvim.keys.normal_mode["<C-s>"] = ":w<CR>"
lvim.keys.insert_mode["<C-s>"] = "<ESC>:w<CR>"

-- Buffers
lvim.keys.normal_mode["<C-Tab>"] = ":bn<CR>"
lvim.keys.normal_mode["<C-S-Tab>"] = ":bp<CR>"

-- Projectionist
vim.api.nvim_set_var('projectionist_heuristics', {
  ['mix.exs|lib/*.ex'] = {
    ['lib/**/live/*_live.ex'] = {
      alternate = 'lib/{dirname}/live/{basename}_live.html.heex',
      type = 'source',
      template = {
        "defmodule {dirname|camelcase|capitalize}.{basename|camelcase|capitalize}Live do",
        "  use {dirname|camelcase|capitalize}, :live_view",
        "",
        "  def mount(_params, _session, socket) do",
        "    {open}:ok, socket{close}",
        "  end",
        "end"
      },
    },
    ['lib/**/live/*_live.html.heex'] = {
      alternate = 'lib/{dirname}/live/{basename}_live.ex',
      type = 'template',
    },
    ['lib/*.ex'] = {
      alternate = 'test/{}_test.exs',
      type = 'source',
      template = {
        "defmodule {camelcase|capitalize|dot} do",
        "end"
      },
    },
    ['test/*_test.exs'] = {
      alternate = 'lib/{}.ex',
      type = 'source',
      template = {
        "defmodule {camelcase|capitalize|dot}Test do",
        "  use ExUnit.Case, async: true",
        "",
        "  alias {camelcase|capitalize|dot}",
        "end"
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
}

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "elixir",
  "heex",
  "javascript",
  "json",
  "lua",
  "css",
}

lvim.format_on_save = true

lvim.builtin.treesitter.ensure_installed = {
  "javascript",
  "json",
  "lua",
  "typescript",
  "tsx",
  "css",
  "elixir",
  "heex",
}

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "tailwindcss" })
local opts = {
  root_dir = function(fname)
    local util = require "lspconfig/util"
    return util.root_pattern("assets/tailwind.config.js", "tailwind.config.js", "tailwind.config.cjs", "tailwind.js",
      "tailwind.cjs")(fname)
  end,
  init_options = {
    userLanguages = { heex = "html", elixir = "html" }
  },
}
require("lvim.lsp.manager").setup("tailwindcss", opts)
