return {
	"mhinz/vim-startify",
	lazy = true,
	cmd = {
		"SSave",
		"SLoad",
		"SDelete",
		"SClose",
	},
	config = function()
		vim.g.startify_session_autoload = 1
		--[[ vim.g.startify_session_dir = vim.fn.stdpath("data") .. "/sessions/" ]]
		vim.g.startify_session_dir = "~/.local/share/nvim/sessions"
	end,
}
