return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")

      vim.keymap.set("n", "<leader>a", function()
        harpoon:list():add()
      end, { desc = "Harpoon: Add file" })

      vim.keymap.set("n", "<C-e>", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = "Harpoon: Toggle quick menu" })

      vim.keymap.set("n", "<C-h>", function()
        harpoon:list():select(1)
      end, { desc = "Harpoon: Select file 1" })

      vim.keymap.set("n", "<C-j>", function()
        harpoon:list():select(2)
      end, { desc = "Harpoon: Select file 2" })

      vim.keymap.set("n", "<C-k>", function()
        harpoon:list():select(3)
      end, { desc = "Harpoon: Select file 3" })

      vim.keymap.set("n", "<C-l>", function()
        harpoon:list():select(4)
      end, { desc = "Harpoon: Select file 4" })

      vim.keymap.set("n", "<C-S-P>", function()
        harpoon:list():prev()
      end, { desc = "Harpoon: Previous item" })

      vim.keymap.set("n", "<C-S-N>", function()
        harpoon:list():next()
      end, { desc = "Harpoon: Next item" })
    end,
  },
}
