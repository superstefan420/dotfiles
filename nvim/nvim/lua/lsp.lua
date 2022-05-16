local cmp = require'cmp'
local luasnip = require'luasnip'
local lspkind = require'lspkind'

local signs = { Error = "", Warn = "", Hint = "", Info = "" }

vim.diagnostic.config({
  virtual_text = {
    prefix = '', -- Could be '●', '▎', 'x'
  }
})

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.o.updatetime=1000
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.lsp.buf.hover()]]

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = true,
		signs = true,
		underline = true,
		update_in_insert = true,
    })

local border = {
    { "╭", "FloatBorder" },
    { "─", "FloatBorder" },
    { "╮", "FloatBorder" },
    { "│", "FloatBorder" },
    { "╯", "FloatBorder" },
    { "─", "FloatBorder" },
    { "╰", "FloatBorder" },
    { "│", "FloatBorder" },
}

cmp.setup({
	window = { 
		completion = {
			border = border,
		},
		documentation = {
			border = border,
		},
	},
	experimental = {
    ghost_text = true,
  	},
  	formatting = {
    	fields = {
      		cmp.ItemField.Abbr,
      		cmp.ItemField.Kind,
      		cmp.ItemField.Menu,
    	},
		format = lspkind.cmp_format {
			mode = 'symbol_text',
    		preset = 'default',
		}
	},
  -- Enable LSP snippets
  snippet = {
    expand = function(args)
   		luasnip.lsp_expand(args.body)
	end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    -- Add tab support
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    })
  },

  -- Installed sources
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'path' },
    { name = 'buffer' },
	{ name = 'nvim_lua' },
	{ name = 'creates' },
  },
})

require("lspconfig/rust")
require("lspconfig/csharp")
require("lspconfig/lualsp")

