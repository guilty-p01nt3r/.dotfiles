-- Main init

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 0
vim.g.loaded_netrwPlugin = 0

require('plugins')
require('mappings')
require('options')
require('theme')
require('languageServer')
