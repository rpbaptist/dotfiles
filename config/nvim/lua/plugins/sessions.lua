return {
  { "folke/persistence.nvim", enabled = false },
  {
    "olimorris/persisted.nvim",
    lazy = false, -- make sure the plugin is always loaded at startup
    opts = {},
    cmd = {
      "SessionDelete",
      "SessionLoad",
      "SessionLoadLast",
      "SessionSave",
      "SessionStop",
    },
    keys = {
      { "<leader>qs", "<cmd>SessionLoad<cr>", desc = "Restore session" },
      { "<leader>ql", "<cmd>SessionLoadLast<cr>", desc = "Restore last session" },
      { "<leader>qd", "<cmd>SessionStop<cr>", desc = "Don't store session" },
      { "<leader>qt", "<cmd>Telescope persisted<cr>", desc = "List sessions" },
    },
  },
}
