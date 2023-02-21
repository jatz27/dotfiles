return {
	"goolord/alpha-nvim",
	lazy = true,
	event = "BufWinEnter",
	config = function()
		require("util.alpha")
	end,
}
