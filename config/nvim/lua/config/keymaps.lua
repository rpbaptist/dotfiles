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
-- vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")

vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")
vim.keymap.del("n", "<C-/>")
-- vim.keymap.del("n", "<C-w>")
-- vim.keymap.del("n", "[b")
-- vim.keymap.del("n", "]b")
vim.keymap.del("n", "<leader>`")

-- Bind arrow keys to VIM nav
vim.keymap.set({ "n", "x", "v" }, "<Up>", "k", { remap = true })
vim.keymap.set({ "n", "x", "v" }, "<Down>", "j", { remap = true })
vim.keymap.set({ "n", "x", "v" }, "<Left>", "h", { remap = true })
vim.keymap.set({ "n", "x", "v" }, "<Right>", "l", { remap = true })

vim.keymap.set("n", "<C-Tab>", ":bn<CR>", { desc = "Next buffer", silent = true })
vim.keymap.set("n", "<C-S-Tab>", ":bp<CR>", { desc = "Prev buffer", silent = true })
vim.keymap.set("n", "<C-w>", "<Space>bd", { desc = "Delete buffer" })

-- vim.keymap.set({"n", "x", "v"}, "<Home>", function()
--   local column = col('.')
--   normal! ^
--   if column == col('.') then
--     normal! 0
--   end
-- end, { desc = "Move to beginning of line", remap = true })

-- Resize windows
vim.keymap.set("n", "<A-S-Up>", "<cmd>resize +10<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<A-S-Down>", "<cmd>resize -10<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<A-S-Left>", "<cmd>vertical resize -10<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<A-S-Right>", "<cmd>vertical resize +10<cr>", { desc = "Increase window width" })

-- Navigate windows
vim.keymap.set("n", "<C-A-u>", ":KittyNavigateUp<cr>", { desc = "Go to upper window", noremap = true, silent = true })
vim.keymap.set("n", "<C-A-e>", ":KittyNavigateDown<cr>", { desc = "Go to lower window", noremap = true, silent = true })
vim.keymap.set(
  "n",
  "<C-A-n>",
  ":KittyNavigateLeft<cr>",
  { desc = "Go to leonindowindow", noremap = true, silent = true }
)
vim.keymap.set(
  "n",
  "<C-A-i>",
  ":KittyNavigateRight<cr>",
  { desc = "Go to right window", noremap = true, silent = true }
)

-- Move Lines

vim.keymap.set("n", "<C-/>", ":ToggleTerm<cr>", { desc = "Toggle terminal", silent = true })
-- vim.keymap.set("n", "<leader>p", ":Telescope possession list", { desc = "Session list", silent = true })

-- Git
vim.keymap.del("n", "<leader>gf")
vim.keymap.set("n", "<leader>gf", require("telescope.builtin").git_status, { desc = "Git files" })
vim.keymap.del("n", "<leader>gs")
vim.keymap.set("n", "<leader>gs", ":Git<CR>", { desc = "Git status", silent = true })
vim.keymap.del("n", "<leader>gg")
vim.keymap.del("n", "<leader>gG")
vim.keymap.set("n", "<leader>gd", ":Git diff<CR>", { desc = "Git diff", silent = true })

vim.keymap.set({ "n", "x", "v" }, "<leader>fP", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify("Copied " .. path .. " to clipboard")
end, { desc = "Copy absolute file path" })

vim.keymap.set({ "n", "x", "v" }, "<leader>fp", function()
  local path = vim.fn.expand("%:.")
  vim.fn.setreg("+", path)
  vim.notify("Copied " .. path .. " to clipboard")
end, { desc = "Copy relative file path" })
