require("telescope").setup {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {        -- even more opts
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

