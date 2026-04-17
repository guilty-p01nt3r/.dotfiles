local M = {}

-- _ is lspconfig, which is not used in this adapter
M.setup = function(config, mason_dap, _)
    config.configurations = {
        {
            type = "delve",
            name = "Attach remote (GO)",
            request = "attach",
            mode = "remote",
            host = "127.0.0.1",
            port = "38697",
            connect = {
                host = "127.0.0.1",
                port = "38697"
            },
            substitutePath = {
                {
                    from = '${workspaceFolder}',
                    to = '/app',
                },
            }
        },
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
    config.adapters = {
        type = "server",
        host = "127.0.0.1",
        port = 38697,
    }
    mason_dap.default_setup(config)
end

return M

