return {
  "hrsh7th/nvim-cmp",
  event = { "InsertEnter", "CmdlineEnter" },

  opts = function(_, opts)
    local cmp = require("cmp")

    opts.mapping = cmp.mapping.preset.insert({
      ["<Tab>"] = cmp.mapping.confirm({ select = true }),
    })
  end,

  keys = {
    {
      "<Down>",
      function()
        return vim.snippet.active({ direction = 1 }) and "<cmd>lua vim.snippet.jump(1)<cr>" or "<Down>"
      end,
      expr = true,
      silent = true,
      mode = { "i", "s" },
    },
    {
      "<Up>",
      function()
        return vim.snippet.active({ direction = -1 }) and "<cmd>lua vim.snippet.jump(-1)<cr>" or "<Up>"
      end,
      expr = true,
      silent = true,
      mode = { "i", "s" },
    },
  },
}
