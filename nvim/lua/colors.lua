local setvar = vim.api.nvim_set_var
local cmd = vim.cmd

vim.o.termguicolors = true
setvar('sonokai_show_eob', '0')
setvar('sonokai_transparent_background', '1')
cmd[[colorscheme sonokai]]

-- TODO: switch hl setting to lua

cmd[[hi VertSplit guifg=#414550]]
cmd[[hi BarLspError guifg=#fc5d7c guibg=#33353f]]
cmd[[hi BarLspWarn guifg=#e7c664 guibg=#33353f]]
cmd[[hi BarLspInfo guifg=#76cce0 guibg=#33353f]]
cmd[[hi BarLspHint guifg=#9ed072 guibg=#33353f]]

