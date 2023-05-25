local wpm = require("wpm")
require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'gruvbox-material',
        --theme = 'gruvbox_dark',
        component_separators = { left = '|', right = '|' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff',
            {
                'diagnostics',
                diagnostics_color = {
                    -- Same values as the general color option can be used here.
                    error = 'LualineDiagnosticsError',
                    warn  = 'LualineDiagnosticsWarn',
                    info  = 'LualineDiagnosticsInfo',
                    hint  = 'LualineDiagnosticsHint',
                },
            }
        },
        lualine_c = { 'filename' },
        lualine_x = {
            wpm.wpm,
            wpm.historic_graph,
            'encoding',
            'fileformat',
            'filetype'
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
