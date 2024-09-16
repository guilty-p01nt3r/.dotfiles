local function setupPhp(config, mason_dap, lspconfig)
	local function isEmpty(s)
		return s == nil or s == ""
	end

	local default_local_root_path = ".git"
	local default_server_root = "/var/www/html/"

	local local_root_path = os.getenv("LOCAL_SOURCE_PATH")
	local server_root = os.getenv("SERVER_SOURCE_ROOT")

	local_root_path = ((not isEmpty(local_root_path)) and local_root_path) or default_local_root_path
	server_root = ((not isEmpty(server_root)) and server_root) or default_server_root

	local local_root = lspconfig.util.root_pattern(local_root_path)

	config.configurations = {
		{
			type = "php",
			request = "launch",
			name = "Listen for Xdebug (neovim DAP)",
			port = 9001,
			localSourceRoot = local_root(vim.fn.getcwd()),
			serverSourceRoot = server_root,
		},
	}
    mason_dap.default_setup(config)
end

return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"mfussenegger/nvim-dap",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"jay-babu/mason-nvim-dap.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")
		local mason_dap = require("mason-nvim-dap")
		local lspconfig = require("lspconfig")

		mason.setup({
			ui = {
				border = "rounded",
			},
		})
		mason_lspconfig.setup({
			ensure_installed = {
				"lua_ls",
			},
		})
		mason_tool_installer.setup({
			ensure_installed = {
				"stylua",
				"prettierd",
				"phpstan",
				"sql-formatter",
				"pylint",
				"eslint_d",
			},
		})

		mason_dap.setup({
			ensure_installed = {
				"node",
				"php",
				"lua",
				"sql",
				"go",
				"typescript",
				"rust",
				"python",
			},
			handlers = {
				function(config)
					mason_dap.default_setup(config)
				end,
				php = function(config)
					setupPhp(config, mason_dap, lspconfig)
				end,
			},
		})
	end,
}
