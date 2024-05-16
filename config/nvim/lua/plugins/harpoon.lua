return {
  "nvim-lua/plenary.nvim",
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = function()
      local harpoon = require("harpoon")

      harpoon.setup()

      local conf = require("telescope.config").values
      local function toggle_telescope(harpoon_files)
        local file_paths = {}
        for _, item in ipairs(harpoon_files.items) do
          table.insert(file_paths, item.value)
        end

        require("telescope.pickers")
          .new({}, {
            prompt_title = "Harpoon",
            finder = require("telescope.finders").new_table({
              results = file_paths,
            }),
            previewer = conf.file_previewer({}),
            sorter = conf.generic_sorter({}),
          })
          :find()
      end

      vim.keymap.set("n", "<leader>a", function()
        harpoon:list():add()
      end, { desc = "Add Harpoon mark" })
      vim.keymap.set("n", "<leader><C-a>", function()
        toggle_telescope(harpoon:list())
      end, { desc = "Harpoon toggle menu" })

      vim.keymap.set("n", "<leader><S-1>", function()
        harpoon:list():select(1)
      end)
      vim.keymap.set("n", "<leader><S-2>", function()
        harpoon:list():select(2)
      end)
      vim.keymap.set("n", "<leader><S-3>", function()
        harpoon:list():select(3)
      end)
      vim.keymap.set("n", "<leader><S-4>", function()
        harpoon:list():select(4)
      end)
    end,
  },
}
