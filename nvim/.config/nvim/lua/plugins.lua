-- Plugins

require('packer').startup(function(use)
   -- Packer can manage itself
   use 'wbthomason/packer.nvim'

   -- Git
   use 'tpope/vim-fugitive'

   -- Fuzzy finder
   use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

   -- navigating the file tree
   use "preservim/nerdtree"

   -- Undo history
   use 'mbbill/undotree'

   -- Syntax Tree
   use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}  -- We recommend updating the parsers on update

   -- Language Server
   use 'neovim/nvim-lspconfig'

   -- Debug
   use 'vim-vdebug/vdebug'
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
   use 'gruvbox-community/gruvbox'
   use 'ryanoasis/vim-devicons'
   use 'kyazdani42/nvim-web-devicons'
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


