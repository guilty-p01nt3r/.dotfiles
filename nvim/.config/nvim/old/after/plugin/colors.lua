local function get_color(group, attr)
    local fn = vim.fn
    return fn.synIDattr(fn.synIDtrans(fn.hlID(group)), attr)
end

function ColorMyPencils(color)
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)

    -- Transparent Background
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    ---- Lualine diagnostics
    vim.api.nvim_set_hl(0, "LualineDiagnosticsError", { fg = "#fbf1c7", bg = "#fb4934" })
    vim.api.nvim_set_hl(0, "LualineDiagnosticsWarn", { fg = "#282828", bg = "#fabd2f" })
    vim.api.nvim_set_hl(0, "LualineDiagnosticsInfo", { fg = "#282828", bg = "#8ec07c" })
    vim.api.nvim_set_hl(0, "LualineDiagnosticsHint", { fg = "#282828", bg = "#fabd2f" })

    ---- Gitsigns
    vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = get_color("GitSignsAdd", "fg"), bg = color.base00 })
    vim.api.nvim_set_hl(0, "GitSignsChange", { fg = get_color("GitSignsChange", "fg"), bg = color.base00 })
    vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = get_color("GitSignsDelete", "fg"), bg = color.base00 })
    vim.api.nvim_set_hl(0, "GitSignsChangeDelete", { fg = get_color("GitSignsChangeDelete", "fg"), bg = color.base00 })

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
    italic = { -- FiraCode hasn't italic
        strings = false,
        operators = false,
        comments = false,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true,    -- invert background for search, diffs, statuslines and errors
    contrast = "hard", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = false,
})

ColorMyPencils("gruvbox")