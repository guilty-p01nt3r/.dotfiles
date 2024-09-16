return {
    { 'github/copilot.vim',
        config = function()
            vim.g.copilot_filetypes = {
                ['dap-repl'] = false,
                ['dapui_watches'] = false,
                ['dapui_console'] = false,
            }
        end,
    },
}
