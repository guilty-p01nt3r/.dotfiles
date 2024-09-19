return {
    "hrsh7th/nvim-cmp",
	lazy = true,
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer", -- source for text in buffer
        "hrsh7th/cmp-path", -- source for file system paths
        {
            {
                "L3MON4D3/LuaSnip",
                -- follow latest release.
                version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
                -- install jsregexp (optional!).
                build = "make install_jsregexp"
            },
            "saadparwaiz1/cmp_luasnip", -- for autocompletion
            "rafamadriz/friendly-snippets", -- useful snippets
            "onsails/lspkind.nvim" -- vs-code like pictograms
        },
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        local lspkind = require("lspkind")

        -- load vscode style snippets from installed plugins (e.g. friendly-snippets)
        require("luasnip.loaders.from_vscode").lazy_load()

        cmp.setup({
            completion = {
                completeopt = "menu,menuone,preview,noselect",
            },
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["C-e"] = cmp.mapping.abort(),
                ["C-Space"] = cmp.mapping.complete(), -- show completion suggestions
                ["C-y"] = cmp.mapping.confirm({ select = false }),
                ["C-u"] = cmp.mapping.scroll_docs(-4),
                ["C-d"] = cmp.mapping.scroll_docs(4),
            }),

            sources = cmp.config.sources({
                {name = "nvim_lsp"}, -- LSP
                {name = "luasnip"}, -- snippets
                {name = "buffer"}, -- text within current buffer
                {name = "path"}, -- file system paths
                {name = "emoji"}, -- emoji
            }),
            formatting = {
                format = lspkind.cmp_format({
                    maxwidth = 50,
                    ellipsis_char = "...",
                }),
            },

        })
    end,
}
