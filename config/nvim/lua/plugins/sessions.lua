return {
  { "folke/persistence.nvim", enabled = false },
  {
    "jedrzejboczar/possession.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    cmd = {
      "PossessionSave",
      "PossessionLoad",
      "PossessionSaveCwd",
      "PossessionLoadCwd",
      "PossessionRename",
      "PossessionClose",
      "PossessionDelete",
      "PossessionShow",
      "PossessionList",
      "PossessionMigrate",
    },
    opts = {
      autosave = {
        current = function()
          return vim.bo.filetype ~= "dashboard"
        end,
        cwd= function()
          return vim.bo.filetype ~= "dashboard"
        end,
      }
    },
    keys = {
        { "<leader>qs", "<cmd>PossessionLoadCwd<cr>", desc = "Restore session" },
        { "<leader>ql", "<cmd>PossessionLoad<cr>", desc = "Restore last session" },
        { "<leader>qd", "<cmd>PossesionClose<cr>", desc = "Don't store session" },
        { "<leader>qt", "<cmd>Telescope possession list<cr>", desc = "List sessions" },
      },
  }
}
