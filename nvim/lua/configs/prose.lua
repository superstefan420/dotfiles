local setvar = vim.api.nvim_set_var
local _group = vim.api.nvim_create_augroup("Prose", { clear = true  })

local function initcmd(c)
	vim.api.nvim_create_autocmd("Filetype", {
		pattern = 'vimwiki',
		command = c,
		group = _group,
		once = true
	})
end

local function notecmd(c)
	vim.api.nvim_create_autocmd("Filetype", {
		pattern = 'vimwiki',
		command = c,
		group = _group,
		once = false
	})
end

initcmd('TZMinimalist')
notecmd('IndentBlanklineDisable')
notecmd('PencilSoft')
notecmd('set foldmethod=manual')
notecmd('set filetype=vimwiki.markdown')

vim.g.vim_markdown_edit_url_in = 'tab'

vim.g.vimwiki_list = {{path = '~/notes', syntax = 'markdown', ext = '.asc.md'}}
vim.g.vimwiki_global_ext = 0
require'lspconfig'.ltex.setup{
	filetypes = { "bib", "gitcommit", "markdown", "org", "plaintex", "rst", "rnoweb", "tex", "vimwiki" },
}
