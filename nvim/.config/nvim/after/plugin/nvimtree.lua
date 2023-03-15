vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup({
    remove_keymaps = { "<C-e>", "d" },
    view = {
        mappings = {
            list =
            { key = "<C-e>", action = "" }
        },
    },
})

vim.keymap.set("n", "<C-e>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>nr", "::NvimTreeFindFileToggle<CR>")
vim.opt.foldmethod="expr"

