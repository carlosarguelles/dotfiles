require("nvim-tree").setup({
	disable_netrw = true,
  open_on_setup = false,
	diagnostics = {
		enable = true,
	},
	view = {
		hide_root_folder = true,
		adaptive_size = true,
    width = "30%",
	},
  actions = {
    open_file = {
      quit_on_open = true,
    }
  }
})
