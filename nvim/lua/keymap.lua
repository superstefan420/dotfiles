local function map(mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

map('', '<Leader>of', ':Telescope find_files<CR>') -- find files with telescope
map('', '?', ':Telescope live_grep<CR>')
map('', '<Leader>pp', ':Telescope projects<CR>')

map('', '<Leader>wc', ':q!<CR>') -- close window/buffer

map('', '<Leader>wh', '<C-W>h') -- window navigation
map('', '<Leader>wj', '<C-W>j')
map('', '<Leader>wk', '<C-W>k')
map('', '<Leader>wl', '<C-W>l')
map('', '<Leader>wr', [[:lua require('smart-splits').start_resize_mode()<CR><Esc>]]) -- window resizeing

map('', '<Leader>tn', ':tabnew<CR>')	-- tab navigation
map('', '<Leader>tc', ':tabclose<CR>')
map('', '<Leader>tl', ':tabnext<CR>')
map('', '<Leader>th', ':-tabnext<CR>')
map('', '<Leader>tL', ':tabmove<CR>')
map('', '<Leader>tH', ':-tabmove<CR>')


map('', '<Leader>ot', ':ToggleTerm<CR>') --terminal stuff
map('t', '<esc>', [[<C-\><C-N>]])

map('', '<Leader>op', ':NvimTreeToggle<CR>') -- file tree

map('', '<Leader>gr', ':Telescope lsp_references<CR>') -- lsp stuff
map('', '<Leader>gd', ':Telescope lsp_definitions<CR>')
map('', '<Leader>dj', ':lua vim.diagnostic.goto_next()<CR>')
map('', '<Leader>dk', ':lua vim.diagnostic.goto_prev()<CR>')
map('', 'K', ':lua vim.lsp.buf.hover()<CR>')
map('', '<Leader>ca',	':lua vim.lsp.buf.code_action()<CR>')

vim.cmd[[autocmd Filetype rust lua RustMappings()]]

function RustMappings()
	map('', '<Leader>cr', ':RustRunnables<CR>')
	map('', '<Leader>em', [[:lua require'rust-tools.expand_macro'.expand_macro()<CR>]])
	map('', '<Leader>cd', ':RustDebuggables<CR>')
	map('', '<Leader>oc', ':RustOpenCargo<CR>')
	map('',	'<Leader>gp', ':RustParentModule<CR>')
end
map('', '<BS>', ':b#<CR>') -- go to previous buffer with bs
