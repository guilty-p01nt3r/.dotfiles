return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescriptreact = { "prettierd" },
				css = { "prettierd" },
				scss = { "prettierd" },
				html = { "prettierd" },
				json = { "prettierd" },
				yaml = { "prettierd" },
				markdown = { "prettierd" },
				php = { lsp_format = "fallback" },
				rust = { "rustfmt", lsp_format = "fallback" },
				go = { "gofmt"},
				sql = { "sleek" }, -- cargo install sleek
			},
		})
		vim.keymap.set("n", "<leader>=", function()
			conform.format({
				lsp_fallback = true,
				async = true,
				timeout = 5000,
			})
		end, { desc = "Format code file or range (in visual mode)" })
	end,
}
