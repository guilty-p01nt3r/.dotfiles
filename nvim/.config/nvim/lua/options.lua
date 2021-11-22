-- -- Set Vim Options
vim.cmd("set path +=* ")
--
-- -- Nice menu when typing `:find *.py`
vim.cmd("set wildmode =longest,list,full")
vim.cmd("set wildmenu")
--
-- -- Ignore files
vim.cmd("set wildignore =" ..
     '*.pyc' ..
     '*_build/*' ..
     '**/coverage/*' ..
     '**/node_modules/*' ..
     '**/android/*' ..
     '**/ios/*' ..
     '**/.git/*')

vim.cmd("set stl+=%{expand('%:~:.')}")
vim.cmd("set mouse=a")
vim.cmd("set relativenumber")
vim.cmd("set number ")
vim.cmd("set hidden ")
-- vim.cmd("set showtabline=2")
vim.cmd("set noerrorbells")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab  ")
vim.cmd("set smartindent  ")
-- vim.cmd("set nowrap  ")
vim.cmd("set smartcase  ")
vim.cmd("set noswapfile ")
vim.cmd("set nobackup ")
vim.cmd("set undodir=~/.vim/undodir")
vim.cmd("set undofile ")
vim.cmd("set incsearch ")
vim.cmd("set termguicolors ")
vim.cmd("set scrolloff=8")
vim.cmd("set noshowmode ")
vim.cmd("set completeopt=menuone,noselect")
vim.cmd("set colorcolumn=80")
vim.cmd("set signcolumn=yes")
vim.cmd("set nohlsearch ")
vim.cmd("set encoding=UTF-8")
--
-- -- Give more space for displaying messages
vim.cmd("set cmdheight=2")
vim.cmd("set updatetime=50")


-- Plugins
-- Auto-Commenter
vim.g.inline_comment_dict = {
    ['//'] = {'js', 'ts', 'cpp', 'c', 'php'},
    ['#'] = {'py', 'sh'},
    ['"'] = {'vim'}
}

vim.g.block_comment_dict = {
    ['/*'] = {"php"},
    ['<!--'] = {"html"},
 	['/*'] = {"js", "ts", "cpp", "c", "dart"},
    ['"""'] = {'py'},
}
