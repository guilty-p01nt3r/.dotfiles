-- Mappings
vim.g.mapleader = " "

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- -- Vim Fugitive
vim.api.nvim_set_keymap('n', '<leader>gj', ':diffget //3<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gf', ':diffget //2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>gs', ':G<CR>', { noremap = true })

-- -- Telescope (fuzzy finder)
require('telescope').setup {
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
vim.api.nvim_set_keymap("n", "<C-b>", ":NERDTreeToggle<CR>", { noremap = true })

-- reveal open buffer in NERDTree
vim.api.nvim_set_keymap("n", "<leader>nr", ":NERDTreeFind<CR>", { noremap = true })

-- Fix opening url with gx
map('n', 'gx', ':silent execute "!xdg-open " . shellescape("<cWORD>")<CR>')

-- LSP Navigation
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vh", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vrn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vsh", "<cmd>lua vim.lsp.buf.signature_help()<CR>",
    { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vsd", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>",
    { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vp", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>",
    { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vn", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>",
    { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vll", "<cmd>lua LspLocationList()<CR>", { noremap = true, silent = true })

-- Moving lines up and down
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

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
    { silent = true, noremap = true }
)
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>",
    { silent = true, noremap = true }
)
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>",
    { silent = true, noremap = true }
)
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>",
    { silent = true, noremap = true }
)
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>",
    { silent = true, noremap = true }
)
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>",
    { silent = true, noremap = true }
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
vim.api.nvim_set_keymap("n", "<C-N>", ":bnext<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-P>", ":bprev<CR>", { noremap = true })

-- Move between tabs
vim.api.nvim_set_keymap("n", "<S-h>", ":tabprev<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-l>", ":tabnext<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader><S-h>", ":tabmove -1<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader><S-l>", ":tabmove +1<CR>", { noremap = true })


-- Replace double quotes with single quotes
vim.api.nvim_set_keymap("n", "<leader>r\"", ":%s/\\\"\\([^\"]*\\)\\\"/'\\1'/g<CR>", { noremap = true })
-- Replace single quotes with double quotes
vim.api.nvim_set_keymap("n", "<leader>r'", ":%s/\\'\\([^']*\\)\\'/\\\"\\1\\\"/g<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<leader>dab", ":%bd|e#<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ca", ":only", { noremap = true })

-- DEBUGGER
vim.api.nvim_set_keymap("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dso", ":lua require'dap'.step_out()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dsi", ":lua require'dap'.step_into()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dn", ":lua require'dap'.step_over()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dc", ":lua require'dap'.continue()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>d$", ":lua require'dap'.run_last()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dr", ":lua require'dap'.repl.open({}, vsplit)<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>di", ":lua require'dap.ui.widgets'.hover()<CR>", { noremap = true })
vim.api.nvim_set_keymap("v", "<leader>di", ":lua require'dap.ui.variables'.visual_hover()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>d?",
    ":lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>de", ":lua require'dap'.set_exception_breakpoints()<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<F2>", ":lua require'dap'.step_over()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<F3>", ":lua require'dap'.step_into()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<F4>", ":lua require'dap'.step_out()<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<leader>da", ":lua require'debugHelper'.attach()<CR>", {noremap = true})

--
-- Copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-a>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- -- Go -- --
-- GoLang auto-order imports on save -- Using go.nvim
--  function OrgImports(wait_ms)
--     local params = vim.lsp.util.make_range_params()
--     params.context = {only = {"source.organizeImports"}}
--     local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
--     for _, res in pairs(result or {}) do
--       for _, r in pairs(res.result or {}) do
--         if r.edit then
--           vim.lsp.util.apply_workspace_edit(r.edit, "UTF-8")
--         else
--           vim.lsp.buf.execute_command(r.command)
--         end
--       end
--     end
--   end
-- vim.api.nvim_command([[
--     autocmd BufWritePre *.go lua OrgImports(1000)
-- ]])

vim.api.nvim_command([[
	autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()
]])
