-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- This file is automatically loaded by lazyvim.config.init

vim.keymap.del("n", "<C-Up>")
vim.keymap.del("n", "<C-Down>")
vim.keymap.del("n", "<C-Left>")
vim.keymap.del("n", "<C-Right>")

vim.keymap.del({ "n", "i", "v"}, "<A-j>")
vim.keymap.del({ "n", "i", "v"}, "<A-k>")

vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("i", "<C-s>", "<ESC>:w<CR>")

-- inoremap <expr> <TAB> pumvisible() ? "<C-y>" : "<TAB>"

-- Move Lines
vim.keymap.set("n", "<A-Down>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<A-Up>", "<cmd>m .-2<cr>==", { desc = "Move up" })

-- Bind arrow keys to VIM nav
vim.keymap.set({ "n", "x", "v" }, "<Up>", "k", { remap = true })
vim.keymap.set({ "n", "x", "v" }, "<Down>", "j", { remap = true })
vim.keymap.set({ "n", "x", "v" }, "<Left>", "h", { remap = true })
vim.keymap.set({ "n", "x", "v" }, "<Right>", "l", { remap = true })
