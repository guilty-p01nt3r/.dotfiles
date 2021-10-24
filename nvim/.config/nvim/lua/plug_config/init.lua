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

local function cmp_tabnine()
    local tabnine = require('cmp_tabnine.config')
    tabnine:setup({
            max_lines = 1000;
            max_num_results = 20;
            sort = true;
        run_on_every_keystroke = true;
    })
end

local function vdebug_config()
    vim.cmd("let g:vdebug_options = {'ide_key': 'docker'}");
    vim.cmd("let g:vdebug_options = {'break_on_open': 0}")
    vim.cmd("let g:vdebug_options = {'server': ''}")
    vim.cmd("let g:vdebug_options = {'port': '9001'}")
end

local function trouble_config()
    local trouble = require("trouble")
    trouble.setup {}
end

function pluginsConfig.config()
	nvim_cmp()
	cmp_tabnine()
    vdebug_config()
    trouble_config()
end


