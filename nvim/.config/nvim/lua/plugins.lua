-- Plugins

require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Git
    use 'tpope/vim-fugitive'

    -- Fuzzy finder
    use 'junegunn/fzf.vim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    -- navigating the file tree
    use "preservim/nerdtree"

    -- Undo history
    -- use 'mbbill/undotree'

    -- Syntax Tree
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}  -- We recommend updating the parsers on update

    -- Language Server
    use 'neovim/nvim-lspconfig'

    -- Debug
    use 'mfussenegger/nvim-dap'
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

    -- Errors
    use 'folke/trouble.nvim'

    -- -- Successor of use 'hrsh7th/nvim-compe'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'

    -- for vsnip user.
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    -- Closing xhtml tags
    use 'alvan/vim-closetag'

    -- Autocommenter
    use 'tpope/vim-commentary'

    -- Themes
    -- Display Indentation
    use 'Yggdroot/indentLine'
    --use 'gruvbox-community/gruvbox'
    use 'sainnhe/gruvbox-material'
    use 'ryanoasis/vim-devicons'
    use 'kyazdani42/nvim-web-devicons'
    --use 'folke/tokyonight.nvim'
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}}


    -- Notifications
    use 'rcarriga/nvim-notify'

end
)

-- Plugin config
require('plug_config')
pluginsConfig.config()


