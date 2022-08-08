pluginsConfig = {}

local function isEmpty(s)
    return s == nil or s == ''
end
-- Setup Dap (Debug Adapater Protocol)
local function dap_config()
    local dap, dapui = require("dap"), require("dapui")
    local local_root = require'lspconfig'.util.root_pattern(".git")
    local server_root = os.getenv("SERVER_SOURCE_ROOT")
    server_root = ((not isEmpty(server_root)) and server_root) or '/var/www/html/'
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end

    -- Adapters
    --  -- GO
    dap.adapters.delve = {
      type = 'server',
      port = '38697',
      executable = {
        command = 'dlv',
        args = {'dap', '-l', '127.0.0.1:38697'},
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

    -- -- PHP
    dap.adapters.php = {
      type = 'executable',
      command = 'node',
      args = { '/opt/language-servers/vscode-php-debug/out/phpDebug.js' }
    }

    dap.configurations.php = {
      {
        type = 'php',
        request = 'launch',
        name = 'Listen for Xdebug (neovim DAP)',
        port = 9001,
        localSourceRoot = local_root(vim.fn.getcwd()),
        serverSourceRoot= server_root,
        -- serverSourceRoot = '/var/www/site/',
        -- localSourceRoot = '/home/vince/work/KeyAssociati/giudici_store/code/',
        -- serverSourceRoot= '/var/www/html/',
        -- localSourceRoot= '/home/vince/work/KeyAssociati/strega/code/'
      }
    }
    -- DEBUG
    --print(dap.configurations.php[1]["localSourceRoot"])
    --print(dap.configurations.php[1]["serverSourceRoot"])

    -- -- Python
    local venv = os.getenv("VIRTUAL_ENV")
    dap.adapters.python = {
      type = 'executable';
      command = string.format("%s/bin/python",venv);
      args = { '-m', 'debugpy.adapter' };
    }
    dap.configurations.python = {
    {
      -- The first three options are required by nvim-dap
      type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
      request = 'launch';
      name = "Launch file";

      -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

      program = "${file}"; -- This configuration will launch the current file if used.
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
      end;
    },
}
end

local function notify_config()
    local notify = require("notify")
    notify.setup({
        -- Animation style (see below for details)
      stages = "static",

      -- Function called when a new window is opened, use for changing win settings/config
      on_open = nil,

      -- Function called when a window is closed
      on_close = nil,

      -- Render function for notifications. See notify-render()
      render = "default",

      -- Default timeout for notifications
      timeout = 5000,

      -- For stages that change opacity this is treated as the highlight behind the window
      -- Set this to either a highlight group or an RGB hex value e.g. "#000000"
      background_colour = "#000000",

      -- Minimum width for notification windows
      minimum_width = 50,

      -- Icons for the different levels
      icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = "✎",
      },
    })
end

-- Setup nvim-cmp.
local function nvim_cmp()
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        -- For `vsnip` user.
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` user.
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true
      }),
      ['<TAB>'] =   cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
      ['<S-TAB>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' })
    },
    sources = {
      { name = 'nvim_lsp' },
      -- For vsnip user.
      { name = 'vsnip' },
      { name = 'buffer' },
    }
  })
end

local function telescope_config()
    local trouble = require("telescope")
    trouble.setup {defaults = {file_ignore_patterns = {"node_modules"}}}
end

local function tresitter_config()
    local treesitter = require('nvim-treesitter.configs')
    treesitter.setup{
        context_commentstring = {enable = true},
        ensure_installed = "all", -- or maintained
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = true
        },
        indent = {enable = true},
    }

    local ft_str =
        table.concat(
            vim.tbl_map(
                function(ft)
                    return ft
                end,
            require'nvim-treesitter.parsers'.available_parsers()
        ),
        ","
    )
    vim.cmd("autocmd Filetype " .. ft_str .. " setlocal foldmethod=expr foldexpr=nvim_treesitter#foldexpr()")
end

local function trouble_config()
    local trouble = require("trouble")
    trouble.setup {}
end



function pluginsConfig.config()
    dap_config()
    notify_config()
    nvim_cmp()
    telescope_config()
    tresitter_config()
    trouble_config()
end


