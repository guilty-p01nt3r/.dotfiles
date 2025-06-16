return {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
        {
            "folke/lazydev.nvim",
            dependencies = {
                "rcarriga/nvim-dap-ui",
            },
            ft = "lua", -- only load on lua files
            opts = {
                library = {
                    -- See the configuration section for more details
                    -- Load luvit types when the `vim.uv` word is found
                    { path = "luvit-meta/library", words = { "vim%.uv" } },
                    "nvim-dap-ui",
                },
            },
        },
        -- optional `vim.uv` typings
        { "Bilal2453/luvit-meta", lazy = true },
    },
}
