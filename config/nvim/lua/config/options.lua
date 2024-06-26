-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- Prepend mise shims to PATH

vim.env.PATH = vim.env.HOME .. "/.local/share/mise/shims:" .. vim.env.PATH

vim.opt.relativenumber = false
vim.opt.clipboard = "unnamedplus"
vim.opt.textwidth = 120
vim.opt.inccommand = "nosplit"

vim.g.lazygit_config = false

vim.g.kitty_navigator_no_mappings = 1
vim.g.kitty_navigator_password = "nvimwindows"

vim.g.maplocalleader = ","

vim.o.background = "dark"
