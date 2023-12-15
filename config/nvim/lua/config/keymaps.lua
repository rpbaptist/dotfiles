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
-- vim.keymap.del("n", "<C-w>")
-- vim.keymap.del("n", "[b")
-- vim.keymap.del("n", "]b")
vim.keymap.del("n", "<leader>`")

-- Bind arrow keys to VIM nav
vim.keymap.set({ "n", "x", "v" }, "<Up>", "k", { remap = true })
vim.keymap.set({ "n", "x", "v" }, "<Down>", "j", { remap = true })
vim.keymap.set({ "n", "x", "v" }, "<Left>", "h", { remap = true })
vim.keymap.set({ "n", "x", "v" }, "<Right>", "l", { remap = true })

vim.keymap.set("n", "<C-A-Tab>", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<C-A-S-Tab>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<C-w>", "<Space>bd", { desc = "Delete buffer" })

-- vim.keymap.set("n", "<leader>bn", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
-- vim.keymap.set("n", "<leader>bi", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<C-w>", "<cmd>bd<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<C-t><C-t>", ":OTest<cr>", { desc = "Open test file" })

-- Resize windows
vim.keymap.set("n", "<A-S-Up>", "<cmd>resize +10<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<A-S-Down>", "<cmd>resize -10<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<A-S-Left>", "<cmd>vertical resize -10<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<A-S-Right>", "<cmd>vertical resize +10<cr>", { desc = "Increase window width" })

-- Navigate windows
vim.keymap.set("n", "<C-A-u>", ":KittyNavigateUp<cr>", { desc = "Go to upper window", noremap = true, silent = true })
vim.keymap.set("n", "<C-A-e>", ":KittyNavigateDown<cr>", { desc = "Go to lower window", noremap = true, silent = true })
vim.keymap.set("n", "<C-A-n>", ":KittyNavigateLeft<cr>", { desc = "Go to left window", noremap = true, silent = true })
vim.keymap.set(
  "n",
  "<C-A-i>",
  ":KittyNavigateRight<cr>",
  { desc = "Go to right window", noremap = true, silent = true }
)

-- Move Lines
vim.keymap.set("n", "<C-S-Down>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<C-S-Up>", "<cmd>m .-2<cr>==", { desc = "Move up" })

-- Undo
vim.keymap.set({ "i", "s" }, "<C-z>", "<cmd>u<cr>", { desc = "Undo" })

-- LSP
vim.keymap.set("n", "<leader>li", "<cmd>LspInfo<cr>", opts)
-- vim.keymap.set("n", "<leader>va", function() vim.lsp.buf.definition() end, opts)
-- vim.keymap.set("n", "<leader>vo", function() vim.lsp.buf.references() end, opts)
-- vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
-- vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
-- vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)

-- vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
-- vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
-- vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
-- vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
-- vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
