local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.set_preferences({
    sign_icons = {
        error = '😡',
        warn = '😥',
        hint = '🧐',
        info = '🤔'
    }
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<Tab>'] = vim.NIL,
    ['<S-Tab>'] = vim.NIL,
    ['<CR>'] = vim.NIL,
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm(cmp_select),
    ['<C-Space'] = cmp.mapping.complete(),
})

local lspkind = require('lspkind')
--Chek if lspkind is installed
local formatting = {}
if not lspkind then
    formatting = {
        format = lspkind.cmp_format({
            mode = 'symbol_text',  -- show only symbol annotations
            maxwidth = 50,         -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
            ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
            -- The function below will be called before any actual modifications from lspkind
            -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
            before = function(entry, vim_item)
                return vim_item
            end
        })
    }
end
lsp.setup_nvim_cmp({
    mapping = cmp_mappings,
    formatting = formatting,
    preselect = 'none',
    completion = {
        completeopt = 'menu,menuone,noinsert,noselect'
    },
})

-- This doesn't work (yet)
lsp.configure('ltex', {
    ltex = {
        on_attach = function(client, bufnr)
        end,
        settings = {
            language = "it",
        }
    }
})

lsp.configure('intelephense', {
    on_attach = function(client, bufnr)
    end,
    settings = {
        intelephense = {
            init_options = {
                globalStoragePath = os.getenv('HOME') .. '/.local/share/intelephense'
            },
            stubs = {
                "apache", "bcmath", "bz2", "calendar", "com_dotnet", "Core", "ctype", "curl", "date",
                "dba", "dom", "enchant", "exif", "FFI", "fileinfo", "filter", "fpm", "ftp", "gd", "gettext",
                "gmp", "hash", "iconv", "imap", "intl", "json", "ldap", "libxml", "mbstring", "meta", "mysqli",
                "oci8", "odbc", "openssl", "pcntl", "pcre", "PDO", "pdo_ibm", "pdo_mysql", "pdo_pgsql", "pdo_sqlite",
                "pgsql",
                "Phar", "posix", "pspell", "readline", "Reflection", "session", "shmop", "SimpleXML", "snmp", "soap",
                "sockets", "sodium", "SPL", "sqlite3", "standard", "superglobals", "sysvmsg", "sysvsem", "sysvshm",
                "tidy",
                "tokenizer", "xml", "xmlreader", "xmlrpc", "xmlwriter", "xsl", "Zend OPcache", "zip", "zlib",
                -- "wordpress",
                "phpunit",
            },
            environment = {
                includePaths = {
                    "/vendor/phar_libs"
                }
            }
        },
    },
})


local on_lsp_attach = function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    local telescope = require('telescope.builtin')

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

    vim.keymap.set("n", "<leader>vrm", function() telescope.lsp_document_symbols({ symbols = "method" }) end, opts);
    vim.keymap.set("n", "<leader>vrf", function() telescope.lsp_document_symbols({ symbols = "function" }) end, opts);
    vim.keymap.set("n", "<leader>vrp", function() telescope.lsp_document_symbols({ symbols = "property" }) end, opts);
end

lsp.on_attach(on_lsp_attach)

require("mason").setup()
require("mason-lspconfig").setup({
    handlers = {
        lsp.setup,

        tsserver = function()
            require('lspconfig').tsserver.setup({
                settings = {
                    implicitProjectConfiguration = {
                        checkJs = true
                    },
                },
            })
        end,

        html = function()
            require('lspconfig').html.setup({
                on_attach = on_lsp_attach,
                cmd = { "vscode-html-language-server", "--stdio" },
                filetypes = { "html", "templ", "php", "tmpl", "template" },
                single_file_support = true,
            })
        end,

        gopls = function()
            require('lspconfig').gopls.setup({
                on_attach = on_lsp_attach,
                filetypes = { "go", "gomod", "gowork", "tmpl", "template" },
                single_file_support = true,
                settings = {
                    templateExtensions = { "tmpl", "template" },
                    gopls = {
                        analyses = {
                            unusedparams = true,
                            shadow = true,
                        },
                        staticcheck = true,
                    }
                },
            })
        end,

        intelephense = function()
            require('lspconfig').intelephense.setup({
                on_attach = on_lsp_attach,
                settings = {
                    intelephense = {
                        init_options = {
                            globalStoragePath = os.getenv('HOME') .. '/.local/share/intelephense'
                        },
                        stubs = {
                            "apache", "bcmath", "bz2", "calendar", "com_dotnet", "Core", "ctype", "curl", "date",
                            "dba", "dom", "enchant", "exif", "FFI", "fileinfo", "filter", "fpm", "ftp", "gd", "gettext",
                            "gmp", "hash", "iconv", "imap", "intl", "json", "ldap", "libxml", "mbstring", "meta", "mysqli",
                            "oci8", "odbc", "openssl", "pcntl", "pcre", "PDO", "pdo_ibm", "pdo_mysql", "pdo_pgsql", "pdo_sqlite",
                            "pgsql",
                            "Phar", "posix", "pspell", "readline", "Reflection", "session", "shmop", "SimpleXML", "snmp", "soap",
                            "sockets", "sodium", "SPL", "sqlite3", "standard", "superglobals", "sysvmsg", "sysvsem", "sysvshm",
                            "tidy",
                            "tokenizer", "xml", "xmlreader", "xmlrpc", "xmlwriter", "xsl", "Zend OPcache", "zip", "zlib",
                            -- "wordpress",
                            "phpunit",
                        },
                        environment = {
                            includePaths = {
                                "/vendor/phar_libs"
                            }
                        }
                    },
                },
            })
        end,
        htmx = function()
            require('lspconfig').htmx.setup({
                on_attach = on_lsp_attach,
                cmd = { "htmx-lsp" },
                filetypes = { "html", "templ", "php", "tmpl", "template" },
                single_file_support = true,
            })
        end,

        volar = function()
            require('lspconfig').volar.setup({
                filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
                init_options = {
                    vue = {
                        hybridMode = false,
                    },
                },
            })
        end,
    },
})
