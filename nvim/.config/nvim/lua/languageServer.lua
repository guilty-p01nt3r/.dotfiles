-- Language Server Configuration
local global_capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())


local function cpp()
  require'lspconfig'.clangd.setup{}
end

local function css()
  --Enable (broadcasting) snippet capability for completion
  --local capabilities = vim.lsp.protocol.make_client_capabilities()
  local capabilities = global_capabilities
  capabilities.textDocument.completion.completionItem.snippetSupport = true

  require'lspconfig'.cssls.setup {
    capabilities = capabilities,
}
end

local function html()
  --Enable (broadcasting) snippet capability for completion
  -- local capabilities = vim.lsp.protocol.make_client_capabilities()
  local capabilities = global_capabilities
  capabilities.textDocument.completion.completionItem.snippetSupport = true
  capabilities.textDocument.completion.completionItem.snippetSupport = true

  require'lspconfig'.html.setup {
    capabilities = capabilities,
  }
end

local function lua()
  local system_name
  if vim.fn.has("mac") == 1 then
    system_name = "macOS"
  elseif vim.fn.has("unix") == 1 then
    system_name = "Linux"
  elseif vim.fn.has('win32') == 1 then
    system_name = "Windows"
  else
    print("Unsupported system for sumneko")
  end

  -- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
  local sumneko_root_path = '/opt/language-servers/lua-language-server'
  local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"

  local runtime_path = vim.split(package.path, ';')
  table.insert(runtime_path, "lua/?.lua")
  table.insert(runtime_path, "lua/?/init.lua")

  require'lspconfig'.sumneko_lua.setup {
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
    settings = {
      Lua = {
        runtime = {
          -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
          version = 'LuaJIT',
          -- Setup your lua path
          path = runtime_path,
        },
        diagnostics = {
          -- Get the language server to recognize the `vim` global
          globals = {'vim'},
        },
        workspace = {
          -- Make the server aware of Neovim runtime files
          library = vim.api.nvim_get_runtime_file("", true),
        },
        -- Do not send telemetry data containing a randomized but unique identifier
        telemetry = {
          enable = false,
        },
      },
    },
  }
end

local function php()
  local capabilities = global_capabilities
  require'lspconfig'.intelephense.setup{
    capabilities = capabilities,
  }
  -- require'lspconfig'.phpactor.setup{
  --   capabilities = capabilities,
  --   cmd = { "phpactor", "language-server" },
  --   filetypes = { "php" },
  -- }
end

local function python()
  local capabilities = global_capabilities
  require'lspconfig'.pyright.setup{
      capabilities = capabilities
  }
end

local function tailwindcss()
  local capabilities = global_capabilities
  require'lspconfig'.tailwindcss.setup {
    capabilities = capabilities,
    cmd = { "tailwindcss-language-server", "--stdio" },
    filetypes = { "aspnetcorerazor", "astro", "astro-markdown", "blade", "django-html", "edge", "eelixir", "ejs", "erb", "eruby", "gohtml", "haml", "handlebars", "hbs", "html", "html-eex", "jade", "leaf", "liquid", "markdown", "mdx", "mustache", "njk", "nunjucks", "php", "razor", "slim", "twig", "css", "less", "postcss", "sass", "scss", "stylus", "sugarss", "javascript", "javascriptreact", "reason", "rescript", "typescript", "typescriptreact", "vue", "svelte" };
    init_options = {
      userLanguages = {
        eelixir = "html-eex",
        eruby = "erb"
      }
    },
    on_new_config = function(new_config)
          if not new_config.settings then
            new_config.settings = {}
          end
          if not new_config.settings.editor then
            new_config.settings.editor = {}
          end
          if not new_config.settings.editor.tabSize then
            -- set tab size for hover
            new_config.settings.editor.tabSize = vim.lsp.util.get_effective_tabstop()
          end
        end,
    -- root_dir = root_pattern('tailwind.config.js', 'tailwind.config.ts', 'postcss.config.js', 'postcss.config.ts', 'package.json', 'node_modules', '.git'),
    settings = {
      tailwindCSS = {
        lint = {
          cssConflict = "warning",
          invalidApply = "error",
          invalidConfigPath = "warning", -- should be error
          invalidScreen = "error",
          invalidTailwindDirective = "error",
          invalidVariant = "error",
          recommendedVariantOrder = "warning"
        },
        validate = true
      }
    }
  }
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

function Config()
  cpp()
  css()
  html()
  lua()
  php()
  python()
  tailwindcss()
  cmp_tabnine()
end


Config()
