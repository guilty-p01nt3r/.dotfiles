return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "ravitemer/mcphub.nvim",
    "olimorris/codecompanion.nvim",
    "j-hui/fidget.nvim",
    --"Davidyz/VectorCode",
  },
  opts = {
    strategies = {
      chat = {
        name = "copilot",
      },
      inline = {
        adapter = "copilot",
      },
      cmd = {
        name = "copilot",
      },
    },
    display = {
      chat = {
        window = {
          position = "right",
        },
      }
    },
    extensions = {
      mcphub = {
        callback = "mcphub.extensions.codecompanion",
        opts = {
          make_vars = true,
          make_slash_commands = true,
          show_result_in_chat = true
        }
      },
    },
    adapters = {
      acp = {
        codex = function()
          return require("codecompanion.adapters").extend("codex", {
            defaults = {
              auth_method = "openai-api-key",   -- "openai-api-key"|"codex-api-key"|"chatgpt"
            },
            env = {
              OPENAI_API_KEY = "cmd:cat ${HOME}/personal/openai_cred",
            },
          })
        end,
      },
    },
  },
  config = function(_, opts)
    require("codecompanion").setup(opts)
    vim.keymap.set({ "n", "v" }, "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
    vim.keymap.set({ "n", "v" }, "<Leader>a", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
    vim.keymap.set("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })

    vim.cmd([[cab cc CodeCompanion]])

    require("guilty-p01nt3r.plugins.codecompanion.fidget-spinner"):init()
  end,
}
