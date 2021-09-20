vim.o.background = "dark" -- or "light" for light mode
vim.g.gruvbox_contrast_dark = 'soft'
vim.cmd([[colorscheme gruvbox]])

require('lualine').setup(
{
  options = {
    theme = 'gruvbox'
  }
})

