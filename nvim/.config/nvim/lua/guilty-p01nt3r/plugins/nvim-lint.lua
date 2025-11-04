return {
  "mfussenegger/nvim-lint",
  event = "BufReadPost",
  opts = {
    -- Event to trigger linters
    events = { "BufWritePost", "BufReadPost", "InsertLeave", "TextChanged" },
    linters_by_ft = {
      -- javascript = {
      --   "eslint_d"
      -- },
      -- typescript = {
      --   "eslint_d"
      -- },
      -- javascriptreact = {
      --   "eslint_d"
      -- },
      -- typescriptreact = {
      --   "eslint_d"
      -- },
      python = { "pylint" },
      php = {
        -- "duster",
        -- "phpcs",
        "tlint"
      },
    },
  },
  config = function(_, opts)
    local lint = require("lint")
    lint.linters_by_ft = vim.tbl_deep_extend("force", lint.linters_by_ft, opts.linters_by_ft)


    -- lint.linters.duster = {
    --   cmd = "duster",
    --   stdin = false,
    --   args = { "--format", "json" },
    --   stream = "stdout",
    --   ignore_exitcode = true,
    --   parser = require("lint.parser").from_errorformat([[%f:%l %m]], {
    --     source = "duster",
    --     severity = vim.diagnostic.severity.WARN,
    --   }),
    -- }

    vim.api.nvim_create_autocmd(opts.events, {
      callback = function()
        --require("lint").try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>l", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,

}
