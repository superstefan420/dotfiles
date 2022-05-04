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

map('', '<Leader>tn', ':tabnew<CR>')	-- tab navigation
map('', '<Leader>tc', ':tabclose<CR>')
map('', '<Leader>tl', ':tabnext<CR>')
map('', '<Leader>th', ':-tabnext<CR>')
map('', '<Leader>tL', ':tabmove<CR>')
map('', '<Leader>tH', ':-tabmove<CR>')


map('', '<Leader>ot', ':ToggleTerm size=15 direction=horizontal<CR>') --terminal stuff
map('t', '<esc>', [[<C-\><C-N>]]) 

map('', '<Leader>op', ':NvimTreeToggle<CR>') -- file tree

map('', '<Leader>cr', ':Telescope lsp_references<CR>') -- lsp stuff
map('', '<Leader>cd', ':Telescope lsp_definitions<CR>')
map('', '<Leader>dj', ':lua vim.lsp.diagnostic.goto_next()<CR>')
map('', '<Leader>dk', ':lua vim.lsp.diagnostic.goto_prev()<CR>')
map('', '<Leader>dd', ':Telescope lsp_document_diagnostics<CR>')
map('', '<Leader>dD', ':Telescope lsp_workspace_diagnostics<CR>')
map('', '<Leader>ca',	':Telescope lsp_code_actions<CR>')
map('', '<Leader>cA', ':%Telescope lsp_range_code_actions')

map('', '<BS>', ':b#<CR>') -- go to previous buffer with bs
