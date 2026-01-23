local M = {}

M.setup = function(dap)
    dap.configurations.gdscript = {
        {
            type = "godot",
            request = "launch",
            name = "Launch Scene",
            project = "${workspaceFolder}",
        },
    }
    dap.adapters.godot = {
        type = "server",
        host = "127.0.0.1",
        port = 6006,
    }
end

return M
