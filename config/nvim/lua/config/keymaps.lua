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

vim.keymap.set("n", "<C-Tab>", ":bn<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<C-S-Tab>", ":bp<CR>", { desc = "Prev buffer" })
vim.keymap.set("n", "<C-w>", "<Space>bd", { desc = "Delete buffer" })

-- vim.keymap.set("n", "<C-t><C-t>", ":OTest<cr>", { desc = "Open test file" })

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
vim.keymap.set("n", "<C-S-Down>", ":m +1<cr>==", { desc = "Move down", silent = true })
vim.keymap.set("n", "<C-S-Up>", ":m -2<cr>==", { desc = "Move up", silent = true })

vim.keymap.set("n", "<C-/>", ":ToggleTerm<cr>", { desc = "Toggle terminal", silent = true })
vim.keymap.set("n", "<leader>p", ":Telescope possession list", { desc = "Session list", silent = true })

-- Git
vim.keymap.del("n", "<leader>gf")
vim.keymap.set("n", "<leader>gf", require("telescope.builtin").git_status, { desc = "Git files" })
vim.keymap.del("n", "<leader>gs")
vim.keymap.set("n", "<leader>gs", ":Neogit<CR>", { desc = "Neogit", silent = true })
vim.keymap.del("n", "<leader>gg")
vim.keymap.del("n", "<leader>gG")

-- LSP
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts, { desc = "Go to declaration" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts, { desc = "Go to definition" })
-- vim.keymap.set("n", "<C-w>gv", ":vs<CR><cmd>lua vim.lsp.buf.definition()<CR>", bufopts)
-- vim.keymap.set("n", "<C-w>gs", ":sp<CR><cmd>lua vim.lsp.buf.definition()<CR>", bufopts)
vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, bufopts)
vim.keymap.set("i", "<C-q>", vim.lsp.buf.signature_help, bufopts)
-- vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, bufopts)
-- vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
-- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
-- vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
-- vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, bufopts)
-- vim.keymap.set("n", "[e", vim.diagnostic.goto_prev, bufopts)
-- vim.keymap.set("n", "]e", vim.diagnostic.goto_next, bufopts)
