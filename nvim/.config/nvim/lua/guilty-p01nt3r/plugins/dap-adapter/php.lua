local M = {}

M.setup = function(config, mason_dap, lspconfig)
  local function isEmpty(s)
    return s == nil or s == ""
  end

  local default_local_root_path = ".git"
  local default_server_root = "/var/www/html/"

  local local_root_path = os.getenv("LOCAL_SOURCE_PATH")
  local server_root = os.getenv("SERVER_SOURCE_ROOT")

  local_root_path = ((not isEmpty(local_root_path)) and local_root_path) or default_local_root_path
  server_root = ((not isEmpty(server_root)) and server_root) or default_server_root

  local local_root = lspconfig.util.root_pattern(local_root_path)

  -- print("Using local root path: " .. local_root(vim.fn.getcwd()))

  config.configurations = {
    {
      type = "php",
      request = "launch",
      name = "Listen for Xdebug (neovim DAP)",
      port = 9001,
      localSourceRoot = local_root(vim.fn.getcwd()),
      serverSourceRoot = server_root,
    },
  }
  mason_dap.default_setup(config)
end

return M
