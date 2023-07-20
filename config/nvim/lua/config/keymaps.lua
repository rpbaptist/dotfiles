-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- This file is automatically loaded by lazyvim.config.init

vim.keymap.del("n", "<C-Up>")
vim.keymap.del("n", "<C-Down>")
vim.keymap.del("n", "<C-Left>")
vim.keymap.del("n", "<C-Right>")

vim.keymap.del({ "n", "i", "v" }, "<A-j>")
vim.keymap.del({ "n", "i", "v" }, "<A-k>")

vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")

vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")
-- vim.keymap.del("n", "[b")
-- vim.keymap.del("n", "]b")

vim.keymap.del("n", "<leader>`")

-- Bind arrow keys to VIM nav
vim.keymap.set({ "n", "x", "v" }, "<Up>", "k", { remap = true })
vim.keymap.set({ "n", "x", "v" }, "<Down>", "j", { remap = true })
vim.keymap.set({ "n", "x", "v" }, "<Left>", "h", { remap = true })
vim.keymap.set({ "n", "x", "v" }, "<Right>", "l", { remap = true })

-- -- buffers
-- if Util.has("bufferline.nvim") then
--   vim.keymap.set("n", "<S-Left>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
--   vim.keymap.set("n", "<S-Right>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
  -- map("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
  -- map("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
-- else
  vim.keymap.set("n", "<S-Left>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
  vim.keymap.set("n", "<S-Right>", "<cmd>bnext<cr>", { desc = "Next buffer" })

  vim.keymap.set("n", "<leader>bn", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
  vim.keymap.set("n", "<leader>bi", "<cmd>bnext<cr>", { desc = "Next buffer" })
  -- map("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
  -- map("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })
-- end

-- Resize windows
vim.keymap.set("n", "<C-A-Up>", "<cmd>resize +10<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-A-Down>", "<cmd>resize -10<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-A-Left>", "<cmd>vertical resize -10<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-A-Right>", "<cmd>vertical resize +10<cr>", { desc = "Increase window width" })

-- Navigate windows
-- vim.keymap.set("n", "<A-Left>", "<C-w>h", { desc = "Go to left window", remap = true })
-- vim.keymap.set("n", "<A-Down>", "<C-w>j", { desc = "Go to lower window", remap = true })
-- vim.keymap.set("n", "<A-Up>", "<C-w>k", { desc = "Go to upper window", remap = true })
-- vim.keymap.set("n", "<A-Right>", "<C-w>l", { desc = "Go to right window", remap = true })

vim.keymap.set("n", "<A-Up>", ":KittyNavigateUp<cr>", { desc = "Go to upper window", silent = true, remap = true })
vim.keymap.set("n", "<A-Down>", ":KittyNavigateDown<cr>", { desc = "Go to lower window", silent = true, remap = true })
vim.keymap.set("n", "<A-Left>", ":KittyNavigateLeft<cr>", { desc = "Go to left window", silent = true, remap = true })
vim.keymap.set("n", "<A-Right>", ":KittyNavigateRight<cr>", { desc = "Go to right window", silent = true, remap = true })

-- Move Lines
vim.keymap.set("n", "<C-S-Down>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<C-S-Up>", "<cmd>m .-2<cr>==", { desc = "Move up" })

-- Undo
vim.keymap.set({ "i", "s" }, "<C-z>", "<cmd>u<cr>", { desc = "Undo" })
