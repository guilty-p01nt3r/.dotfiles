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
-- vim.api.nvim_set_keymap("n", "<C-e>", ":NERDTreeToggle<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<leader>nr", ":NERDTreeFind<CR>", { noremap = true })
--
-- -- NvimTree
vim.api.nvim_set_keymap("n", "<C-e>", ":NvimTreeToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>nr", "::NvimTreeFindFileToggle<CR>", { noremap = true })

--
-- -- Netrw
-- vim.api.nvim_set_keymap("n", "<C-e>", ":20Lexplore<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<leader><C-e>", ":20Lexplore expand('%:h')<CR>", { noremap = true })


-- Fix opening url with gx
--vim.g.netrw_browsex_viewer = "setsid xdg-open"
vim.api.nvim_set_keymap('n', 'gx', ':execute "!xdg-open " . shellescape("<cWORD>")<CR>',
    { noremap = true, silent = true })

-- Yanking
-- Delete the selection when yanking without losing the paste register
vim.api.nvim_set_keymap('v', '<leader>p', '"_dP', { noremap = true })
-- Yank into the system clipboard
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true })

-- LSP Navigation
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>vh", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>vrn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>vsh", "<cmd>lua vim.lsp.buf.signature_help()<CR>",
--{ noremap = true, silent = true })

-- Moving lines up and down
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- -- autocmd
vim.api.nvim_command([[
   autocmd BufWritePre *.* lua vim.lsp.buf.format(nil, 2000)
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
-- LspSaga
-- -- Lsp Finder
vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })

-- -- Code Action
vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("v", "<leader>ca", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true })

-- -- Hover Doc
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
-- local action = require("lspsaga.action")
-- -- scroll down hover doc or scroll in definition preview
-- vim.keymap.set("n", "<C-f>", function()
--     action.smart_scroll_with_saga(1)
-- end, { silent = true })
-- -- scroll up hover doc
-- vim.keymap.set("n", "<C-b>", function()
--     action.smart_scroll_with_saga(-1)
-- end, { silent = true })
--
-- -- Signature Help
vim.keymap.set("n", "gs", "<Cmd>Lspsaga signature_help<CR>", { silent = true })

-- --
-- Rename
-- close rename win use <C-c> in insert mode or `q` in normal mode or `:q`
vim.keymap.set("n", "<leader>gR", "<cmd>Lspsaga rename<CR>", { silent = true })

-- -- Definition
vim.keymap.set("n", "<leader>vh", "<cmd>Lspsaga preview_definition<CR>", { silent = true })


vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })

-- -- Errors
vim.keymap.set("n", "[E", function()
    require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
vim.keymap.set("n", "]E", function()
    require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
-- or use command
vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })

-- -- Terminal
vim.keymap.set("n", "<C-t>", "<cmd>Lspsaga open_floaterm <CR>", { silent = true })
vim.keymap.set("t", "<C-t>", "<C-\\><C-n><cmd>Lspsaga close_floaterm<CR>", { silent = true })

-- Symbols (Aerial)
-- Toggle the aerial window with <leader>a
vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>', {})
-- Jump forwards/backwards with '{' and '}'
vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', {})
vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', {})
-- Jump up the tree with '[[' or ']]'
vim.keymap.set('n', '[[', '<cmd>AerialPrevUp<CR>', {})
vim.keymap.set('n', ']]', '<cmd>AerialNextUp<CR>', {})

-- Executing current file
vim.api.nvim_command([[command Exec set splitright | vnew | set filetype=sh | read !bash #]])
map('n', '<leader>r', ':!bash %<CR>')
map('n', '<leader><S-r>', ':Exec<CR>') -- look two line above

-- Clear highlights
map('n', '<C-l>', '<cmd>noh<CR>')

-- Insert a newline in normal mode
map('n', '<leader>o', 'm`o<esc>``')
map('n', '<leader><S-o>', 'm`O<esc>``')

-- Move between buffers
--vim.api.nvim_set_keymap("n", "<C-N>", ":bnext<CR>", { noremap = true })
--vim.api.nvim_set_keymap("n", "<C-P>", ":bprev<CR>", { noremap = true })

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
--vim.api.nvim_set_keymap("n", "<leader>", ":only", { noremap = true })

-- DEBUGGER
vim.api.nvim_set_keymap("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dc",
    ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dso", ":lua require'dap'.step_out()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dsi", ":lua require'dap'.step_into()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>dn", ":lua require'dap'.step_over()<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<leader>dc", ":lua require'dap'.continue()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<F1>", ":lua require'dap'.continue()<CR>", { noremap = true })
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


-- Harpoon
vim.api.nvim_set_keymap("n", "<leader>vm", ':lua require("harpoon.ui").toggle_quick_menu()<CR>',
    { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>m", ':lua require("harpoon.mark").add_file()<CR>',
    { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "g1", ':lua require("harpoon.ui").nav_file(1)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "g2", ':lua require("harpoon.ui").nav_file(2)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "g3", ':lua require("harpoon.ui").nav_file(3)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "g4", ':lua require("harpoon.ui").nav_file(4)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "g5", ':lua require("harpoon.ui").nav_file(5)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "g6", ':lua require("harpoon.ui").nav_file(6)<CR>', { noremap = true, silent = true })

-- -- Moving
vim.api.nvim_set_keymap("n", "<C-n>", ':lua require("harpoon.ui").nav_next()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-p>", ':lua require("harpoon.ui").nav_prev()<CR>', { noremap = true, silent = true })


vim.api.nvim_command([[
	autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()
]])

-- Custom Autocmd
AutoCmd_enabled = {}

-- Read .env file from root of project
local function read_env_file()
    local env_file = io.open(".env", "r")
    if env_file then
        for line in env_file:lines() do
            local key, value = line:match("([^=]+)=(.+)")
            vim.env[key] = value
        end
        env_file:close()
    end
end

-- Rsync on Save (lua)
-- function syncBuff()
--     io.popen(string.format("rsync"))
-- end

local function rsyncLocal(buffer) read_env_file()
    local user = os.getenv("VS_SYNC_USER")
    if user == nil then
        print("No VS_SYNC_USER set in .env file")
        return
    end
    local host = os.getenv("VS_SYNC_HOST")
    if host == nil then
        print("No VS_SYNC_HOST set in .env file")
        return
    end
    local path = os.getenv("VS_SYNC_PATH")
    if path == nil then
        print("No VS_SYNC_PATH set in .env file")
        return
    end
    -- HOSTID is the id of .ssh/config host or user@host
    local ssh_hostid = os.getenv("VS_SYNC_SSH_HOSTID")
    if path == nil then
        print("No VS_SYNC_SSH_KEY set in .env file")
        return
    end

    local relative_buffer_path = string.gsub(vim.api.nvim_buf_get_name(0), vim.loop.cwd(), '')
    local remote_buffer_path = path .. relative_buffer_path

    --print(string.format('rsync -avzn %s %s:%s', buffer, ssh_hostid, remote_buffer_path))
    vim.cmd(string.format('!rsync -avz %s %s:%s', buffer, ssh_hostid, remote_buffer_path))
    -- io.popen(string.format('rsync -avzn %s %s:%s', buffer, ssh_hostid, remote_buffer_path))

end

-- Create group for print file full path on save
-- the group is toggled on and off with the command :TogglePrintPath
vim.api.nvim_create_augroup("rsyncLocal", { clear = true })

function EnableSyncRemote()
    print("Enabling remote sync")
    vim.api.nvim_create_autocmd("BufWritePost",
        { pattern = "*",
            callback = function()
                rsyncLocal(vim.api.nvim_buf_get_name(0))
            end,
            group = "rsyncLocal"
        }
    )
    vim.cmd("autocmd rsyncLocal")
    AutoCmd_enabled["rsyncLocal"] = true
end

function DisableSyncRemote()
    print("Disabling remote sync")
    vim.cmd("autocmd! rsyncLocal")
    AutoCmd_enabled["rsyncLocal"] = false
end
