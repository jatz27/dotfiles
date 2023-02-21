return {
	"nvim-telescope/telescope.nvim",
	lazy = true,
	cmd = "Telescope",
	keys = {
		{ "<M-f>", "<cmd>Telescope find_files<cr>", mode = "n" },
		{ "<M-w>", "<cmd>Telescope live_grep<cr>", mode = "n" },
	},
	config = function()
		require("util.telescope.config")
	end,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-lua/popup.nvim",
		{
			"ahmedkhalf/project.nvim",
			event = "BufReadPost",
			keys = { { "<M-p>", "<cmd>Telescope projects<cr>", mode = "n" } },
			config = function()
				require("util.telescope.project")
			end,
		},
	},
}
