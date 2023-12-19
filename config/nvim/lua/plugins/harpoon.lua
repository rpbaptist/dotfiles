return {
  "nvim-lua/plenary.nvim",
  {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = function()
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Add Harpoon mark" })
      vim.keymap.set("n", "<leader><C-a>", ui.toggle_quick_menu, { desc = "Harpoon toggle menu" })

      vim.keymap.set("n", "<leader><S-1>", function()
        ui.nav_file(1)
      end)
      vim.keymap.set("n", "<leader><S-2>", function()
        ui.nav_file(2)
      end)
      vim.keymap.set("n", "<leader><S-3>", function()
        ui.nav_file(3)
      end)
      vim.keymap.set("n", "<leader><S-4>", function()
        ui.nav_file(4)
      end)
    end,
  },
}
