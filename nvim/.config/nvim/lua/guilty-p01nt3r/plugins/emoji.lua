return {
  "allaman/emoji.nvim",
  ft = "markdown", -- adjust to your needs
  dependencies = {
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    enable_cmp_integration = true,
  },
  keys = {
    {"<leader>ie",  "<cmd>Telescope emoji<cr>", desc = "Find emoji",}
  },
}
