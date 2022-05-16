require("toggleterm").setup{
	hide_numbers = true,
	highlights = {
		NormalFloat = {
			link = 'NormalFloat'
		},
		FloatBorder = {
			link = 'FloatBorder',
		},
	},
	shade_terminals = true,
	direction = 'float',
	float_opts = {
		border = 'curved',
	}
}
