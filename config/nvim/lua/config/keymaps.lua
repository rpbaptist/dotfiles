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

vim.keymap.set({ "n", "x", "v" }, "<leader>d", '"_d', { desc = "Delete" })
vim.keymap.set({ "n", "x", "v" }, "c", '"_c', { desc = "Change without cut" })
vim.keymap.set({ "n", "x", "v" }, "C", '"_C', { desc = "Change without cut" })
vim.keymap.set({ "n", "x", "v" }, "x", '"_x', { desc = "Delete without cut" })
vim.keymap.set({ "n", "x", "v" }, "X", '"_X', { desc = "Delete without cut" })

vim.keymap.set("n", "<C-Tab>", ":bn<CR>", { desc = "Next buffer", silent = true })
vim.keymap.set("n", "<C-S-Tab>", ":bp<CR>", { desc = "Prev buffer", silent = true })

vim.keymap.set("i", "<C-CR>", "<C-o>o", { desc = "Open line below" })
vim.keymap.set("i", "<S-CR>", "<C-o><S-o>", { desc = "Open line above" })

vim.keymap.set("i", "<Tab>", "<C-i>", { desc = "Indent" })
vim.keymap.set("n", "i", function()
  if string.match(vim.api.nvim_get_current_line(), "%g") == nil then
    return "cc"
  else
    return "i"
  end
end, { expr = true })

vim.keymap.set({ "n", "x", "i", "v" }, "<Home>", function()
  local column = vim.fn.col(".")
  vim.cmd("normal! ^")
  if column == vim.fn.col(".") then
    vim.cmd("normal! 0")
  end
end, { desc = "Move to beginning of line", remap = true })

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
