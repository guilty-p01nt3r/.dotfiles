return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"windwp/nvim-ts-autotag",
		},
		config = function()
			local ts = require("nvim-treesitter.configs")

			ts.setup({
				ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "php", "go" },
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
				autotag = {
					enable = true,
				},
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<leader>v",
						node_incremental = "<leader>v",
						scope_incremental = false,
						node_decremental = "<bs>",
					},
				},
			})
		end,
	},
	"nvim-treesitter/nvim-treesitter-context",
}
