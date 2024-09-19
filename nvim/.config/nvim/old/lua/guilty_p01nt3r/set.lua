vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- enable filetype plugin 
vim.opt.filetype = "on"

--vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.completeopt = "menuone,noselect"

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- set undodir 
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("config") .. "/undodir"

vim.g.mapleader = " "

-- additional filetypes
vim.filetype.add({
    extension = {
        templ = "templ",
    },
})

 vim.lsp.set_log_level("off")