local setvar = vim.api.nvim_set_var
local cmd = vim.cmd

vim.o.termguicolors = true
setvar('sonokai_show_eob', '0')
vim.o.background = "dark"
vim.g.tokyonight_style = "night"
-- vim.g.tokyonight_hide_inactive_statusline=true
vim.g.tokyonight_dark_sidebar=true
vim.g.tokyonight_dark_float=true
vim.g.tokyonight_lualine_bold=true
cmd[[colorscheme tokyonight]]

-- TODO: switch hl setting to lua
cmd[[ 
hi StatusLineAccent gui=bold guifg=#7aa2f7 guibg=#16161e
hi StatusLineInsertAccent gui=bold guifg=#9ece6a guibg=#16161e
hi StatusLineVisualAccent gui=bold guifg=#bb9af7 guibg=#16161e
hi StatusLineCommandAccent gui=bold guifg=#e0af68 guibg=#16161e
hi StatusLineReplaceAccent gui=bold guifg=#f7768e guibg=#16161e
hi StatusLineTerminalAccent gui=bold guifg=#7aa2f7 guibg=#16161e
hi LspError guifg=#db4b4b guibg=#16161e
hi LspHint guifg=#1abc9c guibg=#16161e
hi LspInfo guifg=#0db9d7 guibg=#16161e
hi LspWarn guifg=#e0af68 guibg=#16161e
]]
cmd[[hi VertSplit guifg=bg]]
cmd[[
hi BufferLineSeparatorSelected guifg=#16161e	
hi BufferLineSeparator guifg=#16161e]]
--[=====[cmd[[hi BarLspError guifg=#fc5d7c guibg=#33353f]]
cmd[[hi BarLspWarn guifg=#e7c664 guibg=#33353f]]
cmd[[hi BarLspInfo guifg=#76cce0 guibg=#33353f]]
cmd[[hi BarLspHint guifg=#9ed072 guibg=#33353f]]
cmd[[hi TabLineSel guifg=#e2e2e3 guibg=#2c2e34]]
cmd[[hi BufferLineFill guibg=#33353f]]
cmd[[
hi BufferLineSeparator guifg=#33353f guibg=#2c2e34
hi BufferLineBackground guibg=#2c2e34 guifg=#7f8490
hi BufferLineIndicatorSelected guifg=#2c2e34
hi BufferLineSeparatorSelected guifg=#33353f
hi BufferLineWarningDiagnostic guibg=#2c2e34
hi BufferLineErrorDiagnostic guibg=#2c2e34
hi BufferLineInfoDiagnostic guibg=#2c2e34
hi BufferHintDiagnostic guibg=#2c2e34
hi BufferLineModified guibg=#2c2e34
hi BufferLineWarning guibg=#2c2e34
]] --]=====]
