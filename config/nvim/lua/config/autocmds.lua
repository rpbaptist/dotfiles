-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd({ "VimEnter", "VimResume" }, {
  group = vim.api.nvim_create_augroup("KittySetVarVimEnter", { clear = true }),
  callback = function()
    io.stdout:write("\x1b]1337;SetUserVar=in_editor=MQo\007")
  end,
})

vim.api.nvim_create_autocmd({ "VimLeave", "VimSuspend" }, {
  group = vim.api.nvim_create_augroup("KittyUnsetVarVimLeave", { clear = true }),
  callback = function()
    io.stdout:write("\x1b]1337;SetUserVar=in_editor\007")
  end,
})
