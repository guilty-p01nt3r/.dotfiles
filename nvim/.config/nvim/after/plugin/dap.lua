local dap, dapui = require("dap"), require("dapui")
dapui.setup()
 ----------------
 --- MAPPINGS ---
 ----------------

 vim.keymap.set("n", "<leader>db",  function() dap.toggle_breakpoint() end)
 vim.keymap.set("n", "<leader>dc",  function() dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end)
 vim.keymap.set("n", "<leader>dso", function() dap.step_out() end)
 vim.keymap.set("n", "<leader>dsi", function() dap.step_into() end)
 vim.keymap.set("n", "<leader>dn",  function() dap.step_over() end)
 --vim.keymap.set("n", "<leader>dc",  function() dap.continue() end)
 vim.keymap.set("n", "<F1>",        function() dap.continue() end)
 vim.keymap.set("n", "<leader>d$",  function() dap.run_last() end)
 vim.keymap.set("n", "<leader>dr",  function() dap.repl.open({}, function() vim.api.nvim_exec("vsplit", false) end) end)
 vim.keymap.set("n", "<leader>dr",  function() dap.repl.open({}, vim.cmd("vsplit")) end)
 vim.keymap.set("n", "<leader>di",  function() dap.ui.widgets.hover() end)
-- vim.keymap.set("v", "<leader>di",  function() dap.ui.variables.visual_hover() end)
-- vim.keymap.set("n", "<leader>d?",  function() dap.ui.widgets.centered_float(dap.ui.widgets.scopes) end)
 vim.keymap.set("n", "<leader>de",  function() dap.set_exception_breakpoints() end)
 vim.keymap.set("n", "<F2>",        function() dap.step_over() end)
 vim.keymap.set("n", "<F3>",        function() dap.step_into() end)
 vim.keymap.set("n", "<F4>",        function() dap.step_out() end)


 ----------------
 --- ADAPTERS ---
 ----------------

 dap.listeners.after.event_initialized["dapui_config"] = function()
     dapui.open()
 end
 dap.listeners.before.event_terminated["dapui_config"] = function()
     dapui.close()
 end
 dap.listeners.before.event_exited["dapui_config"] = function()
     dapui.close()
 end

 -----------
 --- GO ---
 -----------

 dap.adapters.delve = {
     type = 'server',
     port = '38697',
     executable = {
         command = 'dlv',
         args = { 'dap', '-l', '127.0.0.1:38697' },
     }
 }
 dap.configurations.go = {
     {
         type = "delve",
         name = "Debug",
         request = "launch",
         program = "${file}"
     },
     {
         type = "delve",
         name = "Debug test", -- configuration for debugging test files
         request = "launch",
         mode = "test",
         program = "${file}"
     },
     -- works with go.mod packages and sub packages
     {
         type = "delve",
         name = "Debug test (go.mod)",
         request = "launch",
         mode = "test",
         program = "./${relativeFileDirname}"
     }
 }
 -------------
 --- PHP ---
 -------------

 local function isEmpty(s)
     return s == nil or s == ''
 end
 local local_root = require 'lspconfig'.util.root_pattern(".git")
 local server_root = os.getenv("SERVER_SOURCE_ROOT")

 server_root = ((not isEmpty(server_root)) and server_root) or '/var/www/html/'

 dap.adapters.php = {
     type = 'executable',
     command = 'php-debug-adapter',
     --args = { '/opt/language-servers/vscode-php-debug/out/phpDebug.js' }
 }

 dap.configurations.php = {
     {
         type = 'php',
         request = 'launch',
         name = 'Listen for Xdebug (neovim DAP)',
         port = 9001,
         localSourceRoot = local_root(vim.fn.getcwd()),
         serverSourceRoot = server_root,
         -- serverSourceRoot = '/var/www/site/',
         -- localSourceRoot = '/home/vince/work/KeyAssociati/giudici_store/code/',
         -- serverSourceRoot= '/var/www/html/',
         -- localSourceRoot= '/home/vince/work/KeyAssociati/strega/code/'
     }
 }

 -------------
 --- Python ---
 -------------

 local venv = os.getenv("VIRTUAL_ENV")
 dap.adapters.python = {
     type = 'executable',
     command = string.format("%s/bin/python", venv),
     args = { '-m', 'debugpy.adapter' },
 }
 dap.configurations.python = {
     {
         -- The first three options are required by nvim-dap
         type = 'python', -- the type here established the link to the adapter definition: `dap.adapters.python`
         request = 'launch',
         name = "Launch file",

         -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

         program = "${file}", -- This configuration will launch the current file if used.
         pythonPath = function()
             -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
             -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
             -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
             local cwd = vim.fn.getcwd()
             if vim.fn.executable(venv .. '/bin/python') == 1 then
                 return venv .. '/bin/python'
             elseif vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
                 return cwd .. '/venv/bin/python'
             elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
                 return cwd .. '/.venv/bin/python'
             else
                 return '/usr/bin/python'
             end
         end,
     },
 }
