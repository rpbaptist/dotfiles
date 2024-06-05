return {
  "hrsh7th/nvim-cmp",
  event = { "InsertEnter", "CmdlineEnter" },

  opts = function(_, opts)
    local cmp = require("cmp")

    opts.mapping = cmp.mapping.preset.insert({
      -- ["<Tab>"] = cmp.mapping.confirm({ select = true }),
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          local entry = cmp.get_selected_entry()
          if not entry then
            cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
          end
          cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace })
        else
          fallback()
        end
      end, { "i", "s", "c" }),
      -- ["<S-Tab>"] = cmp.confirm({ beahvior = cmp.ConfirmBehavior.Replace }),
      ["<Esc>"] = cmp.mapping.abort(),
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
