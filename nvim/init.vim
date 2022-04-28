call plug#begin()
Plug 'lewis6991/impatient.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'mnishz/colorscheme-preview.vim'
Plug 'simrat39/rust-tools.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'nvim-lua/plenary.nvim'
Plug 'mfussenegger/nvim-dap'
Plug 'ryanoasis/vim-devicons'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'akinsho/toggleterm.nvim'
Plug 'flazz/vim-colorschemes'
Plug 'Mofiqul/vscode.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-sleuth'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-telescope/telescope-ui-select.nvim'
Plug 'ahmedkhalf/project.nvim'
Plug 'sainnhe/sonokai'
call plug#end()

lua require('impatient')
" rust stuff
autocmd FileType rust call Rust_init()

function Rust_init()
  nnoremap <Leader>cg :RustViewCrateGraph<CR>
  nnoremap <Leader>co :lua require'rust-tools.hover_actions'.hover_actions()<CR>
  nnoremap <Leader>cr :lua require('rust-tools.runnables').runnables()<CR>
  nnoremap <Leader>cd :RustDebuggables<CR>
  nnoremap <Leader>cem :RustExpandMacro<CR>
  nnoremap <Leader>cj :lua require'rust-tools.move_item'.move_item(false)<CR>
endfunction

set termguicolors
let g:sonokai_show_eob = 0
"let g:vscode_style = "dark"
let g:sonokai_trasparent_background = 1
let g:sonokai_better_performance = 1
let g:vscode_disable_nvimtree_bg = v:true
colorscheme sonokai
set hidden
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set completeopt=menuone,noinsert,noselect
set laststatus=0
set mouse=a
set cursorline
let mapleader = " "
set splitbelow
set number

" searching with telescope
nnoremap ? :Telescope live_grep<CR>
" recent projects
nnoremap <Leader>pp :Telescope projects<CR>

nnoremap <Leader>wc :q!<CR>
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>wl <C-W>l

nnoremap <Leader>tn :tabnew<CR>
nnoremap <Leader>tc :tabclose<CR>
nnoremap <Leader>tl :tabn<CR>
nnoremap <Leader>th :-tabn<CR>
nnoremap <Leader>tL :tabmove<CR>
nnoremap <Leader>tH :-tabmove<CR>

nnoremap <Leader>ot :ToggleTerm size=15 direction=horizontal <CR>


tnoremap <esc> <C-\><C-N>
autocmd TermOpen * setlocal nonumber norelativenumber

nnoremap <leader>of <cmd>Telescope find_files<cr>

nnoremap <Leader>op :NvimTreeToggle<CR>


let g:nvim_tree_add_trailing = 1 
let g:nvim_tree_icon_padding = ' ' 
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 1,
    \ }

let g:nvim_tree_icons = {
    \ 'default': "",
    \ 'symlink': "",
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }

autocmd BufWritePre *.go lua OrgImports(1000)

lua <<EOF
require("telescope").setup {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      }
    }
  }
require("telescope").load_extension("ui-select")

require("project_nvim").setup {
  detection_methods = { "lsp", "pattern" },
  patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "Cargo.lock", "Cargo.toml", "target/debug" },
  silent_chdir = true,
}

require('telescope').load_extension('projects')

lspconfig = require "lspconfig"
util = require "lspconfig/util"

  lspconfig.gopls.setup {
    cmd = {"gopls", "serve"},
    filetypes = {"go", "gomod"},
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
  }

function OrgImports(wait_ms)
    local params = vim.lsp.util.make_range_params()
    params.context = {only = {"source.organizeImports"}}
    local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
    for _, res in pairs(result or {}) do
      for _, r in pairs(res.result or {}) do
        if r.edit then
          vim.lsp.util.apply_workspace_edit(r.edit, "UTF-8")
        else
          vim.lsp.buf.execute_command(r.command)
        end
      end
    end
  end

require'lspconfig'.quick_lint_js.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.gdscript.setup{}
require'lspconfig'.ltex.setup{ filetypes = { "bib", "gitcommit", "markdown", "org", "plaintex", "rst", "rnoweb", "tex" } }

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true


require'lspconfig'.html.setup {
  capabilities = capabilities,
}

require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

require("bufferline").setup{
     options = {
        mode = "tabs",
	buffer_close_icon = "",
        close_command = "Bdelete %d",
        close_icon = "",
        indicator_icon = " ",
        left_trunc_marker = "",
        modified_icon = "●",
	offsets = { { filetype = "NvimTree", text = "", text_align = "center" }, { filetype = "term", text = "terminal" } },
        right_mouse_command = "Bdelete! %d",
        right_trunc_marker = "",
        show_close_icon = false,
        show_tab_indicators = true,
        show_buffer_close_icons = false,
        show_buffer_default_icon = false,
        diagnostics = "nvim_lsp",
    },
    highlights = {
        fill = {
            guifg = { attribute = "fg", highlight = "Normal" },
            guibg = { attribute = "bg", highlight = "StatusLineNC" },
        },
        background = {
            guifg = { attribute = "fg", highlight = "Normal" },
            guibg = { attribute = "bg", highlight = "StatusLine" },
        },
        buffer_visible = {
            guifg = { attribute = "fg", highlight = "Normal" },
            guibg = { attribute = "bg", highlight = "Normal" },
        },
        buffer_selected = {
            guifg = { attribute = "fg", highlight = "Normal" },
            guibg = { attribute = "bg", highlight = "Normal" },
        },
        separator = {
            guifg = { attribute = "bg", highlight = "Normal" },
            guibg = { attribute = "bg", highlight = "StatusLine" },
        },
        separator_selected = {
            guifg = { attribute = "fg", highlight = "Special" },
            guibg = { attribute = "bg", highlight = "Normal" },
        },
        separator_visible = {
            guifg = { attribute = "fg", highlight = "Normal" },
            guibg = { attribute = "bg", highlight = "StatusLineNC" },
        },
        close_button = {
            guifg = { attribute = "fg", highlight = "Normal" },
            guibg = { attribute = "bg", highlight = "StatusLine" },
        },
        close_button_selected = {
            guifg = { attribute = "fg", highlight = "normal" },
            guibg = { attribute = "bg", highlight = "normal" },
        },
        close_button_visible = {
            guifg = { attribute = "fg", highlight = "normal" },
            guibg = { attribute = "bg", highlight = "normal" },
        },
    },
}

local ctheme = require'lualine.themes.sonokai'

require("lualine").setup({
   options = {
        theme =  ctheme,
	component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''}
    },
     sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {''},
    lualine_z = {'location'}
  },
})



require'nvim-tree'.setup {
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true
  },
}
local nvim_lsp = require'lspconfig'

local opts = {
    tools = { -- rust-tools options
        autoSetHints = true,
        hover_with_actions = true,
        inlay_hints = {
          show_parameter_hints = true,
          parameter_hints_prefix = "<- ",
          other_hints_prefix = "=> ",
          max_len_align = false,
          max_len_align_padding = 1,
          right_align = false,
          right_align_padding = 7
        },
        hover_actions = {
           auto_focus = true
        },
    },

    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer
    server = {
        -- on_attach is a callback called when the language server attachs to the buffer
        -- on_attach = on_attach,
        settings = {
            -- to enable rust-analyzer settings visit:
            -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
            ["rust-analyzer"] = {
                -- enable clippy on save
                checkOnSave = {
                    command = "clippy"
                },
            }
        }
    },
}

require('rust-tools').setup(opts)
EOF

" Setup Completion
" See https://github.com/hrsh7th/nvim-cmp#basic-configuration
lua <<EOF
local cmp = require'cmp'
cmp.setup({
  -- Enable LSP snippets
  snippet = {
    expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
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
    { name = 'vsnip' },
    { name = 'path' },
    { name = 'buffer' },
  },
})

-- indent settings
vim.opt.list = true
-- vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    show_end_of_line = true,
}

 require('lspconfig')['clangd'].setup {
    capabilities = capabilities
  }

EOF
