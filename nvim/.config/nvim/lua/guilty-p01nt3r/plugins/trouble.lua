return {
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle focus=false filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.severity = vim.diagnostic.severity.ERROR<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
        "<leader>xA",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
    },
  },
}
