-- Mappings
vim.g.mapleader = " "

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- -- Vim Fugitive
vim.api.nvim_set_keymap('n', '<leader>gj', ':diffget //3<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gf', ':diffget //2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gs', ':G<CR>', { noremap = true })

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
vim.api.nvim_set_keymap("n", "<leader>vh", "<cmd>lua vim.lsp.buf.hover()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>vrn", "<cmd>lua vim.lsp.buf.rename()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>vsh", "<cmd>lua vim.lsp.buf.signature_help()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>vsd", "<cmd>lua vim.lsp.buf.show_line_diagnostics()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>vp", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>vn", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>vll", "<cmd>lua LspLocationList()<CR>", {noremap = true, silent = true})

-- Moving lines up and down
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", {noremap = true, silent = true})

-- -- autocmd
 vim.api.nvim_command([[
   autocmd BufWritePre *.* lua vim.lsp.buf.formatting_sync(nil, 100)
]])

-- Auto closing tag
-- map('i', '"', '""<left>', {noremap = true, silent = true})
-- map('i', "'", "''<left>", {noremap = true, silent = true})
-- map('i', '(', '()<left>', {noremap = true, silent = true})
-- map('i', '[', '[]<left>', {noremap = true, silent = true})
-- map('i', '{', '{}<left>', {noremap = true, silent = true})
-- map('i', '{<CR>', '{<CR>}<ESC>O', {noremap = true, silent = true})

-- trouble (error managment)
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>",
  {silent = true, noremap = true}
)

-- -- Custom Command

-- Executing current file
vim.api.nvim_command([[command Exec set splitright | vnew | set filetype=sh | read !bash #]])
map('n', '<leader>r', ':!bash %<CR>')
map('n', '<leader><S-r>', ':Exec<CR>') -- look two line above

-- Clear highlights
map('n', '<C-l>', '<cmd>noh<CR>')

-- Insert a newline in normal mode
map('n', '<leader>o', 'm`o<esc>``')
map('n', '<leader><S-o>', 'm`O<esc>``')

-- Move between diagnostic
vim.api.nvim_set_keymap("n", "<C-N>", ":bnext<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-P>", ":bprev<CR>", {noremap = true})

-- Move between tabs
vim.api.nvim_set_keymap("n", "<S-h>", ":tabprev<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<S-l>", ":tabnext<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<leader><S-h>", ":tabmove -1<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader><S-l>", ":tabmove +1<CR>", {noremap = true})


-- Replace double quotes with single quotes
vim.api.nvim_set_keymap("n", "<leader>r\"", ":%s/\\\"\\([^\"]*\\)\\\"/'\\1'/g<CR>", {noremap = true})
-- Replace single quotes with double quotes
vim.api.nvim_set_keymap("n", "<leader>r'", ":%s/\\'\\([^']*\\)\\'/\\\"\\1\\\"/g<CR>", {noremap = true})
