vim.o.background = "dark" -- or "light" for light mode
vim.g.gruvbox_contrast_dark = 'soft'
vim.g.gruvbox_transparent_bg=1
vim.cmd([[colorscheme gruvbox]])

-- Workaround for creating transparent bg
vim.cmd([[autocmd SourcePost * highlight Normal ctermbg=NONE guibg=NONE |    highlight LineNr     ctermbg=NONE guibg=NONE |    highlight SignColumn ctermbg=NONE guibg=NONE]])

require('lualine').setup(
{
  options = {
    theme = 'gruvbox'
  }
})

