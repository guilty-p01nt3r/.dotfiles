local M = {}
local utils = require("guilty-p01nt3r.utils")
--local BASH_DEBUG_ADAPTER_BIN = utils.MASON_BIN_PATH .. "/bash-debug-adapter"
local BASHDB_DIR = utils.MASON_PACKAGE_PATH .. "/bash-debug-adapter/extension/bashdb_dir"

local function makeConfig(base_name)
    return {
            type = base_name,
            request = 'launch',
            name = 'Bash: Launch file',
            program = '${file}',
            cwd = '${fileDirname}',
            pathBashdb = BASHDB_DIR .. '/bashdb',
            pathBashdbLib = BASHDB_DIR,
            pathBash = 'bash',
            pathCat = 'cat',
            pathMkfifo = 'mkfifo',
            pathPkill = 'pkill',
            env = {},
            args = {},
            terminalKind = 'integrated',
}
end

M.setup = function (config, mason_dap, lspconfig)
    config.configurations = {
        makeConfig('bash'),
        makeConfig('sh'),
    }
  mason_dap.default_setup(config)
end

return M
