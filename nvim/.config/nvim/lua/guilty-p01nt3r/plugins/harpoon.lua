return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set("n", "<leader>m",
      function() harpoon:list():add() end)
    vim.keymap.set("n", "<leader>vm",
      function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    vim.keymap.set("n", "g1",
      function() harpoon:list():select(1) end)
    vim.keymap.set("n", "g2",
      function() harpoon:list():select(2) end)
    vim.keymap.set("n", "g3",
      function() harpoon:list():select(3) end)
    vim.keymap.set("n", "g4",
      function() harpoon:list():select(4) end)
    vim.keymap.set("n", "g5",
      function() harpoon:list():select(5) end)
    vim.keymap.set("n", "g6",
      function() harpoon:list():select(6) end)

    -- Toggle previous & next buffers stored within Harpoon list
    -- vim.keymap.set("n", "gp", function() harpoon:list():prev() end)
    -- vim.keymap.set("n", "gn", function() harpoon:list():next() end)
  end,
}
