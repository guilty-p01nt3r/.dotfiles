return require('packer').startup(function(use)
        -- Packer can manage itself
        use('wbthomason/packer.nvim')


        -- Core
        use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
        use('nvim-treesitter/nvim-treesitter-textobjects')
        use('nvim-treesitter/nvim-treesitter-context')
        use('nvim-treesitter/playground')

        use {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v1.x',
            requires = {
                -- LSP Support
                { 'neovim/nvim-lspconfig' }, -- Required
                { 'williamboman/mason.nvim' }, -- Optional
                { 'williamboman/mason-lspconfig.nvim' }, -- Optional

                -- Autocompletion
                { 'hrsh7th/nvim-cmp' }, -- Required
                { 'hrsh7th/cmp-nvim-lsp' }, -- Required
                { 'hrsh7th/cmp-buffer' }, -- Optional
                { 'hrsh7th/cmp-path' }, -- Optional
                { 'saadparwaiz1/cmp_luasnip' }, -- Optional
                { 'hrsh7th/cmp-nvim-lua' }, -- Optional

                -- Snippets
                { 'L3MON4D3/LuaSnip' }, -- Required
                { 'rafamadriz/friendly-snippets' }, -- Optional
            }
        }

        use { 'github/copilot.vim',
            config = function()
                vim.g.copilot_filetypes = {
                    ['dap-repl'] = false,
                    ['dapui_watches'] = false,
                    ['dapui_console'] = false,
                }
            end,
        }

        -- FileSystem
        use({
            'nvim-telescope/telescope.nvim',
            tag = '0.1.1',
            requires = { { 'nvim-lua/plenary.nvim' } }
        })
        use('theprimeagen/harpoon')
        use('nvim-tree/nvim-tree.lua')

        -- Versioning
        use('tpope/vim-fugitive')
        use('mbbill/undotree')

        -- Theme
        use('nvim-tree/nvim-web-devicons')
        use('ellisonleao/gruvbox.nvim')
        use('Yggdroot/indentLine')
    end)
