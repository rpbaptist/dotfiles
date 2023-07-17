-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- This file is automatically loaded by lazyvim.config.init

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<C-s>", ":w<CR>")
map("i", "<C-s>", "<ESC>:w<CR>")

-- Bind arrow keys to VIM nav
map({ "n", "x", "v" }, "<Up>", "k", { remap = true })
map({ "n", "x", "v" }, "<Down>", "j", { remap = true })
map({ "n", "x", "v" }, "<Left>", "h", { remap = true })
map({ "n", "x", "v" }, "<Right>", "l", { remap = true })

-- inoremap <expr> <TAB> pumvisible() ? "<C-y>" : "<TAB>"

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-Down>", "<C-w>j", { desc = "Go to lower window", remap = true})
map("n", "<C-Left>", "<C-w>h", { desc = "Go to left window", remap = true})
map("n", "<C-Right>", "<C-w>l", { desc = "Go to right window", remap = true})

-- Move Lines
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })
