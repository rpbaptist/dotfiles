return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    if type(opts.ensure_installed) == "table" then
      vim.list_extend(opts.ensure_installed, {
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "sql",
        "tsx",
      })
    end
  end,
}
