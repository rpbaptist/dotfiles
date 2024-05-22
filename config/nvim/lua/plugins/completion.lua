return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  keys = function()
    local cmp = require("cmp")
    return {
      {
        "<Tab>",
        cmp.mapping(function(fallback)
          if cmp.visible() then
            if luasnip.expandable() then
              luasnip.expand()
            else
              cmp.confirm({ select = true })
            end
          else
            fallback()
          end
        end),
      },
    }
    --
  end,
}
