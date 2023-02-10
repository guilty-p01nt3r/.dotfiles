function ColorMyPencils(color)
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)

    -- Transparent Background
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    -- Gitsigns
    vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = color.base0B, bg = color.base00 })
    vim.api.nvim_set_hl(0, "GitSignsChange", { fg = color.base0D, bg = color.base00 })
    vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = color.base08, bg = color.base00 })
    vim.api.nvim_set_hl(0, "GitSignsChangeDelete", { fg = color.base0E, bg = color.base00 })

    -- LSP
    vim.api.nvim_set_hl(0, "DiagnosticError", { fg = color.base08, bg = color.base00 })
    vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = color.base08, bg = color.base00 })
    vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = color.base0C, bg = color.base00 })
    vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = color.base05, bg = color.base00 })
    vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = color.base0A, bg = color.base00 })
    vim.api.nvim_set_hl(0, "SignColumn", { fg = color.base0A, bg = color.base00 })
end

require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = true,
    italic = true,
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "hard", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = false,
})

ColorMyPencils()
