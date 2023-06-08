require("nvim-tree").setup({
	disable_netrw = true,
	diagnostics = {
		enable = true,
	},
	renderer = {
		root_folder_label = false,
	},
	view = {
		adaptive_size = true,
		width = "30%",
	},
	git = {
		ignore = false,
	},
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
})
