return {
	"mason-org/mason.nvim",
	"mason-org/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	depedencies = {
		"mason-org/mason.nvim",
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

		local capabilities = vim.lsp.protocol.make_client_capabilities()

		-- Optional: auto-install servers
		mason_lspconfig.setup({
			ensure_installed = { "lua_ls", "html", "cssls", "jsonls" },
		})

		-- Get list of installed servers
		local servers = mason_lspconfig.get_installed_servers()

		-- Loop over them and apply custom or default config
		for _, server in ipairs(servers) do
			local opts = {
				capabilities = capabilities,
			}

			if server == "lua_ls" then
				opts.settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
						completion = {
							callSnippet = "Replace",
						},
					},
				}
				lspconfig[server].setup(opts)
			end

			if server == "intelephense" then
				opts.settings = {
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
				}
				lspconfig[server].setup(opts)
			end

			if server == "htmx" then
				opts.settings = {
					cmd = { "htmx-lsp" },
					filetypes = { "html", "templ", "php", "tmpl", "template" },
					single_file_support = true,
				}
				lspconfig[server].setup(opts)
			end

			if server == "volar" then
				opts.settings = {
					filetypes = { "vue" },
					init_options = {
						vue = {
							hybridMode = false,
						},
						typescript = {
							tsdk = "/home/vince/.local/share/nvim/mason/packages/vue-language-server/node_modules/typescript/lib/",
						},
					},
				}
				lspconfig[server].setup(opts)
			end

			if server == "sqls" then
				opts.settings = {
					cmd = { "sqls", "-config", vim.fn.getcwd() .. "/.sqls.yml" },
				}
				lspconfig[server].setup(opts)
			end

			if server == "html" then
				opts.settings = {
					filetypes = { "html", "blade" },
					init_options = {
						configurationSection = { "html", "css", "javascript" },
						embeddedLanguages = {
							css = true,
							javascript = true,
						},
						provideFormatter = true,
					},
					settings = {
						format = {
							templating = true,
							wrapLineLength = 80,
							wrapAttributes = "force-aligned",
						},
						hover = {
							documentation = true,
							references = true,
						},
					},
				}
				lspconfig[server].setup(opts)
			end
		end


		require("lspconfig.ui.windows").default_options.border = "rounded"

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
	end,
}
