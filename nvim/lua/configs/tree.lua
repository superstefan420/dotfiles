local setvar = vim.api.nvim_set_var

setvar("nvim_tree_add_trailing", 1)

require'nvim-tree'.setup {
	update_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true
	},
}

