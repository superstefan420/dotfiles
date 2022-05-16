local o = vim.o    -- global options local wo = vim.wo    -- window local options
local bo = vim.bo    -- buffer local options
local setvar = vim.api.nvim_set_var

o.termguicolors = true
o.shiftwidth = 4
o.tabstop = 4
o.mouse='a'

o.clipboard = 'unnamedplus'
o.completeopt = 'menuone,noselect,noinsert'
o.cursorline = true
o.relativenumber = true
o.number = true
o.autoindent = true
o.smartindent = true
o.splitbelow = true
o.splitright = true
o.incsearch = false
o.swapfile = false
o.guifont="JetBrainsMono Nerd Font Mono:h15"
o.wrap = false

vim.cmd[[let g:neovide_refresh_rate=140]]

require("configs/tree")
require("configs/statusline")
require("configs/tsitter")
require("configs/tscope")
require("configs/prose")
require("configs/gpg")
require("configs/bufferline")
require("configs/terminal")
require("configs/indentline")
require("configs/zen");
require("lsp")

