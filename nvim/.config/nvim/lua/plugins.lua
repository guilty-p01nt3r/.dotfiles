-- Plugins

require('plug_config')
pluginsConfig.config()

return require('packer').startup(function(use)
   -- Packer can manage itself
   use 'wbthomason/packer.nvim'

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

   -- Emmet & closing xhtml tags
   use 'mattn/emmet-vim'
   use 'alvan/vim-closetag'

   -- Autocommenter
   use 'KarimElghamry/vim-auto-comment'

   -- Tabnine
   use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}

   -- Pandoc
   -- use 'vim-pandoc/vim-pandoc'
   -- use 'vim-pandoc/vim-pandoc-syntax'

   -- Themes
   use 'gruvbox-community/gruvbox'
   use 'ryanoasis/vim-devicons'
   use 'kyazdani42/nvim-web-devicons'

   use {
     'hoob3rt/lualine.nvim',
     requires = {'kyazdani42/nvim-web-devicons', opt = true}}
  end
)



