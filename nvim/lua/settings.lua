local o = vim.o    -- global options
local wo = vim.wo    -- window local options
local bo = vim.bo    -- buffer local options
local setvar = vim.api.nvim_set_var

o.termguicolors = true
o.shiftwidth = 2
o.tabstop = 2
o.completeopt = menuone,noselect
o.mouse = a
o.cursorline = true
o.relativenumber = true
o.number = true
o.autoindent = true
o.smartindent = true
o.splitbelow = true

require("configs/tree")
require("configs/bar")
require("configs/tsitter")
require("configs/tscope")
require("lsp")
