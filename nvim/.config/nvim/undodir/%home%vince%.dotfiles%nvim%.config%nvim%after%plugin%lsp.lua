Vim�UnDo� �=ݮ�drc@����#ջKL'j�P� d.���h�   e   lsp.configure('yamlls', {   M                          dK�    _�                            ����                                                                                                                                                                                                                                                                                                                                                             d6o�    �         ]          'sumneko_lua',5��                        u                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d6o�    �                
    'lua',5��                          p                      5�_�                    J        ����                                                                                                                                                                                                                                                                                                                                                             dK��     �   K   U   ^      lsp.�   L   M   ^    �   J   M   ]       �   J   L   \    5��    J                      �
                     �    J                      �
                     �    K                      �
                     �    K                    �
              �       5�_�                    L       ����                                                                                                                                                                                                                                                                                                                                                             dK��     �   K   M   f      lsp.configure('tsserver', {5��    K                    �
                    5�_�                    M        ����                                                                                                                                                                                                                                                                                                                            M          O          V       dK��     �   L   M          '    on_attach = function(client, bufnr)   @        client.resolved_capabilities.document_formatting = false       end,5��    L                      �
      r               5�_�                    O        ����                                                                                                                                                                                                                                                                                                                            N          O          V       dK��     �   M   O   b      #        documentFormatting = false,�   N   O   b    �   N   O          (        documentRangeFormatting = false,5��    N                            )               �    M                    �
                    5�_�                    N       ����                                                                                                                                                                                                                                                                                                                            N          O          V       dK��     �   M   O   b              yaml.keyOrdering5��    M                                          5�_�      	              N       ����                                                                                                                                                                                                                                                                                                                            N          O          V       dK��     �   M   O   b              yaml.keyOrdering 5��    M                     �
                     5�_�      
           	   N       ����                                                                                                                                                                                                                                                                                                                            N          O          V       dK��     �   M   O   b              "yaml.keyOrdering 5��    M                                          5�_�   	              
   N       ����                                                                                                                                                                                                                                                                                                                            N          O          V       dK��     �   M   O   b              "yaml.keyOrdering "5��    M                                          5�_�   
                 N       ����                                                                                                                                                                                                                                                                                                                            N          O          V       dK��    �   M   O   b              "yaml.keyOrdering"5��    M                                          5�_�                    N       ����                                                                                                                                                                                                                                                                                                                            N          O          V       dK��     �   M   O   b      "        "yaml.keyOrdering": false,5��    M                                          5�_�                    N       ����                                                                                                                                                                                                                                                                                                                            N          O          V       dK�     �   M   O   b      !        "yaml.keyOrdering: false,5��    M                     �
                     5�_�                    N       ����                                                                                                                                                                                                                                                                                                                            N          O          V       dK�     �   M   O   b               yaml.keyOrdering: false,5��    M                                        5�_�                    N       ����                                                                                                                                                                                                                                                                                                                            N          O          V       dK�     �   M   O   b               yaml.keyOrdering_ false,5��    M                                        5�_�                    N       ����                                                                                                                                                                                                                                                                                                                            N          O          V       dK�     �   M   O   b               yaml.keyOrdering= false,5��    M                                          �    M                                        5�_�                    N       ����                                                                                                                                                                                                                                                                                                                            N          O          V       dK�	    �   M   O   b      "        yaml.keyOrdering" = false,5��    M                     �
                     5�_�                    N        ����                                                                                                                                                                                                                                                                                                                            M          O          V       dK�e     �   L   R   `          settings = {�   M   N   `    �   M   N          #        "yaml.keyOrdering" = false,       },5��    M                      �
      +               �    L                     �
                     �    L                    �
              ?       5�_�                    Q       ����                                                                                                                                                                                                                                                                                                                            M          R          V       dK�g    �   e               �               d   local lsp = require('lsp-zero')   lsp.preset('recommended')       lsp.ensure_installed({       'tsserver',       'eslint',       'rust_analyzer',   })       lsp.set_preferences({       sign_icons = {           error = '😡',           warn = '😥',           hint = '🧐',           info = '🤔'       }   })       local cmp = require('cmp')   ;local cmp_select = { behavior = cmp.SelectBehavior.Select }   0local cmp_mappings = lsp.defaults.cmp_mappings({   =        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),   =        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),   4        ['<C-y>'] = cmp.mapping.confirm(cmp_select),   .        ['<C-Space'] = cmp.mapping.complete(),       })       "local lspkind = require('lspkind')   --Chek if lspkind is installed   local formatting = {}   if not lspkind then       formatting = {   %        format = lspkind.cmp_format({   A            mode = 'symbol_text', -- show only symbol annotations   �            maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)   �            ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)       ]            -- The function below will be called before any actual modifications from lspkind   �            -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))   .            before = function(entry, vim_item)                   return vim_item               end   
        })       }   end   lsp.setup_nvim_cmp({       mapping = cmp_mappings,       formatting = formatting,   })       &-- Should move this to a separate file   lsp.configure('intelephense', {   '    on_attach = function(client, bufnr)       end,       settings = {           intelephense = {               stubs = {   a            "apache", "bcmath", "bz2", "calendar", "com_dotnet", "Core", "ctype", "curl", "date",   h            "dba", "dom", "enchant", "exif", "FFI", "fileinfo", "filter", "fpm", "ftp", "gd", "gettext",   k            "gmp", "hash", "iconv", "imap", "intl", "json", "ldap", "libxml", "mbstring", "meta", "mysqli",   z            "oci8", "odbc", "openssl", "pcntl", "pcre", "PDO", "pdo_ibm", "pdo_mysql", "pdo_pgsql", "pdo_sqlite", "pgsql",   q            "Phar", "posix", "pspell", "readline", "Reflection", "session", "shmop", "SimpleXML", "snmp", "soap",   w            "sockets", "sodium", "SPL", "sqlite3", "standard", "superglobals", "sysvmsg", "sysvsem", "sysvshm", "tidy",   i            "tokenizer", "xml", "xmlreader", "xmlrpc", "xmlwriter", "xsl", "Zend OPcache", "zip", "zlib",   #            "wordpress", "phpunit",               },               environment = {                    includePaths = {   '                    "/vendor/phar_libs"                   }               }   
        },       },   })       lsp.configure('yamlls', {         settings = {       yaml = {         keyOrdering = false       }     }   })           %lsp.on_attach(function(client, bufnr)   2    local opts = { buffer = bufnr, remap = false }       L    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)   F    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)   [    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)   W    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)   N    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)   N    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)   V    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)   U    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)   Q    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)   S    vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)   end)       lsp.setup()5��            c      e               �            �    e                                           5�_�                     M        ����                                                                                                                                                                                                                                                                                                                            M           S                   dK�    �   L   N   e      --lsp.configure('yamlls', {�   M   T   e      --    settings = {   --        yaml = {   !--            keyOrdering = false   --        }   --    }   --})5��    L                                            �    M                                           �    N                      /                     �    O                      B                     �    P                      d                     �    Q                      p                     �    R                      x                     5��