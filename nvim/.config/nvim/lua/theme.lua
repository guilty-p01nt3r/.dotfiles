vim.cmd("set termguicolors")

-- Workaround for creating transparent bg
-- vim.cmd([[autocmd SourcePost * highlight Normal ctermbg=NONE guibg=NONE |    highlight LineNr     ctermbg=NONE guibg=NONE |    highlight SignColumn ctermbg=NONE guibg=NONE]])

-- -- Gruvbox
--vim.o.background = "dark" -- or "light" for light mode
--vim.g.gruvbox_contrast_dark = 'hard'
--vim.g.gruvbox_transparent_bg = 1
--vim.cmd([[colorscheme gruvbox]])

-- -- Gruvbox Materials
vim.o.background = "dark" -- or "light" for light mode
vim.g.gruvbox_material_background = "hard" -- contrast
vim.g.gruvbox_material_transparent_background = 1
vim.g.gruvbox_material_better_performance = 1
vim.g.gruvbox_material_diagnostic_line_highligh = 1
vim.cmd([[colorscheme gruvbox-material]])

require('lualine').setup({
  options = {
    --theme = 'gruvbox',
    --theme = 'gruvbox-material',
    component_separators = { left = '|', right = '|' },
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_x = { "aerial" },
  },
})

-- Aerial colors
vim.api.nvim_command [[ hi link AerialClass Type ]]
vim.api.nvim_command [[ hi link AerialClassIcon Special ]]
vim.api.nvim_command [[ hi link AerialFunction Special ]]
vim.api.nvim_command [[ hi AerialFunctionIcon guifg=#cb4b16 guibg=NONE guisp=NONE gui=NONE cterm=NONE ]]
vim.api.nvim_command [[ hi link AerialLine QuickFixLine ]]
vim.api.nvim_command [[ hi AerialLineNC guibg=Gray ]]
vim.api.nvim_command [[ hi link AerialGuide Comment ]]
vim.api.nvim_command [[ hi AerialGuide1 guifg=Red ]]
vim.api.nvim_command [[ hi AerialGuide2 guifg=Blue ]]
