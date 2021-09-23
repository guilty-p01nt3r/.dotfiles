-- Plugins

require('plug_config')
pluginsConfig.config()

return require('packer').startup(function()
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

   -- -- Successor of use 'hrsh7th/nvim-compe'
   use 'hrsh7th/cmp-nvim-lsp'
   use 'hrsh7th/cmp-buffer'
   use 'hrsh7th/nvim-cmp'

   -- for vsnip user.
   use 'hrsh7th/cmp-vsnip'
   use 'hrsh7th/vim-vsnip'

   -- Pandoc
   use 'vim-pandoc/vim-pandoc'
   use 'vim-pandoc/vim-pandoc-syntax'

   -- Themes
   use 'gruvbox-community/gruvbox'
   use 'ryanoasis/vim-devicons'
   use 'kyazdani42/nvim-web-devicons'

   use {
     'hoob3rt/lualine.nvim',
     requires = {'kyazdani42/nvim-web-devicons', opt = true}}
  end
)


