local ctheme = require'lualine.themes.sonokai'

ctheme.normal.a.bg = '#33353f'
ctheme.normal.a.fg = '#85d3f2'
ctheme.insert.a.bg = '#33353f'
ctheme.insert.a.fg = '#a7df78'
ctheme.visual.a.bg = '#33353f'
ctheme.visual.a.fg = '#ff6077'
ctheme.command.a.bg = '#33353f'
ctheme.command.a.fg = '#e7c664'
ctheme.terminal.a.bg = '#33353f'
ctheme.terminal.a.fg = '#b39df3'

require("lualine").setup({
   options = {
        icons_enabled = 'true',
        theme =  ctheme,
				component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''}
    },
    sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', {
        'diagnostics',
        sources = { 'nvim_lsp'},
        sections = { 'error', 'warn', 'info', 'hint' },
        diagnostics_color = {
        error = 'BarLspError',
        warn  = 'BarLspWarn',
        info  = 'BarLspInfo',  
        hint  = 'BarLspHint',  
        },
    }
  },
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {''},
    lualine_z = {'location'}
  },
})

