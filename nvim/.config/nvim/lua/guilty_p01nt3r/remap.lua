-- Yanking
-- enaled osc52 in after
--vim.keymap.set('v', '<leader>p', '"_dP')
--vim.keymap.set('n', '<leader>y', '"+y')
--vim.keymap.set('v', '<leader>y', '"+y')

-- Formatting 
vim.keymap.set("n", "<leader>=", "<cmd>lua vim.lsp.buf.format()<CR>")

-- Hyperlink
vim.keymap.set('n', 'gx', ':execute "!xdg-open " . shellescape("<cWORD>")<CR>')

-- Moving
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
--vim.keymap.set("n", "n", "nzzzv")
--vim.keymap.set("n", "N", "Nzzzv")

-- Replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Fix
vim.keymap.set("n", "Q", "<nop>")
