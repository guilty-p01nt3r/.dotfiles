-- Mappings
vim.g.mapleader = " "

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- -- Telescope (fuzzy finder)
require('telescope').setup{
   pickers = {
    buffers = {
      mappings = {
       i = {
         ["<c-d>"] = "delete_buffer",
        }
      }
    }
  }
}
vim.api.nvim_set_keymap('n', '<leader>ff', ':lua require("telescope.builtin").find_files()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':lua require("telescope.builtin").live_grep()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fb', ':lua require("telescope.builtin").buffers()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fh', ':lua require("telescope.builtin").help_tags()<CR>', { noremap = true })

-- -- NERDTree
-- toggle NERDTree show/hide using <C-n> and <leader>n
vim.api.nvim_set_keymap("n", "<C-b>", ":NERDTreeToggle<CR>", {noremap = true})

-- reveal open buffer in NERDTree
vim.api.nvim_set_keymap("n", "<leader>nr", ":NERDTreeFind<CR>", {noremap = true})

-- Fix opening url with gx
map('n', 'gx', ':silent execute "!xdg-open " . shellescape("<cWORD>")<CR>')

-- LSP Navigation
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-n>", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-p>", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", {noremap = true, silent = true})

-- -- autocmd
 vim.api.nvim_command([[
   autocmd BufWritePre *.* lua vim.lsp.buf.formatting_sync(nil, 100)
]])

-- -- Custom Commands

-- Executing current file
vim.api.nvim_command([[command Exec set splitright | vnew | set filetype=sh | read !sh #]])
map('n', '<leader>r', ':!sh %<CR>')
map('n', '<leader><S-r>', ':Exec<CR>') -- look two line above

-- Clear highlights
map('n', '<C-l>', '<cmd>noh<CR>')

-- Insert a newline in normal mode
map('n', '<leader>o', 'm`o<Esc>``')  

-- Move between diagnostic
vim.api.nvim_set_keymap("n", "<C-N>", ":bnext<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-P>", ":bprev<CR>", {noremap = true})

-- Move between tabs
vim.api.nvim_set_keymap("n", "<S-h>", ":tabprev<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<S-l>", ":tabnext<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<leader><S-h>", ":tabmove -1<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader><S-l>", ":tabmove +1<CR>", {noremap = true})
