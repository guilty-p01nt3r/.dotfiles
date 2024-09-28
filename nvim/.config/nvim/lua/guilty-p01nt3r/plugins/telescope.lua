return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
		},
		{ "nvim-tree/nvim-web-devicons" },
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
			-- pickers = {
			-- 	find_files = {
			-- 		-- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
			-- 		find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
			-- 	},
			-- },
		})

		telescope.load_extension("fzf")
		telescope.load_extension("emoji")
		telescope.load_extension("noice")

    vim.keymap.set("n", "<leader>fa", ":Telescope find_files no_ignore=true hidden=true glob=!**/.git/* <CR>", { desc = "Fuzzy find files in cwd" })
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy find files in cwd" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Fuzzy find string in cwd" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Fuzzy find among open buffers" })
		vim.keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Find string under cursor in cwd" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Fuzzy find files in cwd" })
		vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
	end,
}
