return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	depedencies = {
		"hrsh7th/cmp-nvim-lsp",
		{
			{
				"folke/lazydev.nvim",
				ft = "lua", -- only load on lua files
				opts = {
					library = {
						-- See the configuration section for more details
						-- Load luvit types when the `vim.uv` word is found
						{ path = "luvit-meta/library", words = { "vim%.uv" } },
					},
				},
			},
			{ "Bilal2453/luvit-meta", lazy = true }, -- optional `vim.uv` typings
			{ -- optional completion source for require statements and module annotations
				"hrsh7th/nvim-cmp",
				opts = function(_, opts)
					opts.sources = opts.sources or {}
					table.insert(opts.sources, {
						name = "lazydev",
						group_index = 0, -- set group index to 0 to skip loading LuaLS completions
					})
				end,
			},
			-- { "folke/neodev.nvim", enabled = false }, -- make sure to uninstall or disable neodev.nvim
		},
	},

	config = function()
		local lspconfig = require("lspconfig")
		local mason_lspconfig = require("mason-lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local opts = { buffer = ev.buf, silent = true }
				-- local opts = { buffer = bufnr, remap = false }
				local telescope = require("telescope.builtin")

				vim.keymap.set("n", "gd", function()
					vim.lsp.buf.definition()
				end, opts)
				vim.keymap.set("n", "K", function()
					vim.lsp.buf.hover()
				end, opts)
				vim.keymap.set("n", "<leader>vws", function()
					vim.lsp.buf.workspace_symbol()
				end, opts)
				vim.keymap.set("n", "<leader>vd", function()
					vim.diagnostic.open_float({ scope = "line" })
				end, opts)

				vim.keymap.set("n", "[d", function()
					vim.diagnostic.goto_next()
				end, opts)
				vim.keymap.set("n", "]d", function()
					vim.diagnostic.goto_prev()
				end, opts)
				vim.keymap.set("n", "<leader>vca", function()
					vim.lsp.buf.code_action()
				end, opts)
				vim.keymap.set("n", "<leader>vrr", function()
					vim.lsp.buf.references()
				end, opts)
				vim.keymap.set("n", "<leader>vrn", function()
					vim.lsp.buf.rename()
				end, opts)
				vim.keymap.set("n", "<C-h>", function()
					vim.lsp.buf.signature_help()
				end, opts)

				vim.keymap.set("n", "<leader>vrm", function()
					telescope.lsp_document_symbols({ symbols = "method" })
				end, opts)
				vim.keymap.set("n", "<leader>vrf", function()
					telescope.lsp_document_symbols({ symbols = "function" })
				end, opts)
				vim.keymap.set("n", "<leader>vrp", function()
					telescope.lsp_document_symbols({ symbols = "property" })
				end, opts)
			end,
		})

		require("lspconfig.ui.windows").default_options.border = "rounded"

		local capabilities = cmp_nvim_lsp.default_capabilities()

		local signs = {
			Error = "😡",
			Warn = "😥",
			Hint = "🧐",
			Info = "🤔",
		}

		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

		mason_lspconfig.setup_handlers({
			function(server_name)
				lspconfig[server_name].setup({
					capabilities = capabilities,
				})
			end,
			["lua_ls"] = function()
				lspconfig["lua_ls"].setup({
					capabilities = capabilities,
					settings = {
						Lua = {
							diagnostics = {
								globals = { "vim" },
							},
							completion = {
								callSnippet = "Replace",
							},
						},
					},
				})
			end,
			["intelephense"] = function()
				lspconfig["intelephense"].setup({
					on_attach = on_lsp_attach,
					settings = {
						intelephense = {
							init_options = {
								globalStoragePath = os.getenv("HOME") .. "/.local/share/intelephense",
							},
							stubs = {
								"apache",
								"bcmath",
								"bz2",
								"calendar",
								"com_dotnet",
								"Core",
								"ctype",
								"curl",
								"date",
								"dba",
								"dom",
								"enchant",
								"exif",
								"FFI",
								"fileinfo",
								"filter",
								"fpm",
								"ftp",
								"gd",
								"gettext",
								"gmp",
								"hash",
								"iconv",
								"imap",
								"intl",
								"json",
								"ldap",
								"libxml",
								"mbstring",
								"meta",
								"mysqli",
								"oci8",
								"odbc",
								"openssl",
								"pcntl",
								"pcre",
								"PDO",
								"pdo_ibm",
								"pdo_mysql",
								"pdo_pgsql",
								"pdo_sqlite",
								"pgsql",
								"Phar",
								"posix",
								"pspell",
								"readline",
								"Reflection",
								"session",
								"shmop",
								"SimpleXML",
								"snmp",
								"soap",
								"sockets",
								"sodium",
								"SPL",
								"sqlite3",
								"standard",
								"superglobals",
								"sysvmsg",
								"sysvsem",
								"sysvshm",
								"tidy",
								"tokenizer",
								"xml",
								"xmlreader",
								"xmlrpc",
								"xmlwriter",
								"xsl",
								"Zend OPcache",
								"zip",
								"zlib",
								-- "wordpress",
								"phpunit",
								"random",
							},
							environment = {
								includePaths = {
									"/vendor/phar_libs",
								},
							},
						},
					},
				})
			end,
			["htmx"] = function()
				lspconfig["htmx"].setup({
					on_attach = on_lsp_attach,
					cmd = { "htmx-lsp" },
					filetypes = { "html", "templ", "php", "tmpl", "template" },
					single_file_support = true,
				})
			end,
			["volar"] = function()
				lspconfig["volar"].setup({
					filetypes = { "vue" },
					init_options = {
						vue = {
							hybridMode = false,
						},
					},
				})
			end,
			["omnisharp_mono"] = function()
				lspconfig["omnisharp"].setup({
					filetypes = { "vue" },
					init_options = {
						vue = {
							hybridMode = false,
						},
					},
				})
			end,
			["sqls"] = function()
				lspconfig["sqls"].setup({
          cmd = { "sqls", "-config", vim.fn.getcwd() .. "/.sqls.yml" },
				})
			end,
		})
	end,
}
