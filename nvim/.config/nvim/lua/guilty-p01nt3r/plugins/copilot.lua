return {
    { 'github/copilot.vim',
        config = function()
            vim.g.copilot_filetypes = {
                ['dap-repl'] = false,
                ['dapui_watches'] = false,
                ['dapui_console'] = false,
            }

            vim.api.nvim_set_keymap("i", "<C-a>", 'copilot#Accept("<CR>")', {expr=true, silent=true})
        end,
    },
}

