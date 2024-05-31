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
vim.keymap.del("n", "<C-l>")

-- Bind arrow keys to VIM nav
vim.keymap.set({ "n", "x", "v" }, "<Up>", "k", { remap = true })
vim.keymap.set({ "n", "x", "v" }, "<Down>", "j", { remap = true })
vim.keymap.set({ "n", "x", "v" }, "<Left>", "h", { remap = true })
vim.keymap.set({ "n", "x", "v" }, "<Right>", "l", { remap = true })

vim.keymap.set("n", "<C-Tab>", ":bn<CR>", { desc = "Next buffer", silent = true })
vim.keymap.set("n", "<C-S-Tab>", ":bp<CR>", { desc = "Prev buffer", silent = true })

vim.keymap.set("i", "<S-CR>", "<C-o><S-o>", { desc = "Open line above" })

-- vim.keymap.set({"n", "x", "v"}, "<Home>", function()
--   local column = col('.')
--   normal! ^
--   if column == col('.') then
--     normal! 0
--   end
-- end, { desc = "Move to beginning of line", remap = true })

-- Resize windows
vim.keymap.set("n", "<A-S-u>", "<cmd>resize +10<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<A-S-e>", "<cmd>resize -10<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<A-S-n>", "<cmd>vertical resize -10<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<A-S-i>", "<cmd>vertical resize +10<cr>", { desc = "Increase window width" })

-- vim.keymap.set("n", "<leader>p", ":Telescope possession list", { desc = "Session list", silent = true })

vim.keymap.set({ "n", "x", "v" }, "<leader>fP", function()
  local path = vim.fn.expand("%:p")
  local line = vim.fn.line(".")
  vim.fn.setreg("+", path .. ":" .. line)
  vim.notify("Copied " .. path .. ":" .. line .. " to clipboard")
end, { desc = "Copy absolute file path" })

vim.keymap.set({ "n", "x", "v" }, "<leader>fp", function()
  local path = vim.fn.expand("%:.")
  local line = vim.fn.line(".")
  vim.fn.setreg("+", path .. ":" .. line)
  vim.notify("Copied " .. path .. ":" .. line .. " to clipboard")
end, { desc = "Copy relative file path" })
