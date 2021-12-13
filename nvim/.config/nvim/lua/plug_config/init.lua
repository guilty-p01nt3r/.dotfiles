pluginsConfig = {}

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

local function vdebug_config()
    vim.cmd("let g:vdebug_options = {'ide_key': 'docker'}");
    vim.cmd("let g:vdebug_options = {'break_on_open': 0}")
    vim.cmd("let g:vdebug_options = {'server': ''}")
    vim.cmd("let g:vdebug_options = {'port': '9001'}")
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
            additional_vim_regex_highlighting = false
        },
        indent = {enable = false},
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


local function notify_config()
    local notify = require("notify")
    notify.setup({
        -- Animation style (see below for details)
      stages = "fade_in_slide_out",

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

function pluginsConfig.config()
    nvim_cmp()
    vdebug_config()
    telescope_config()
    notify_config()
    tresitter_config()
    trouble_config()
end


