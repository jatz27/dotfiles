return {
	"windwp/nvim-ts-autotag",
	lazy = true,
	event = "BufReadPost",
	config = function()
		require("nvim-ts-autotag").setup({
			filetypes = {
				"glimmer",
				"handlebars",
				"hbs",
				"html",
				"javascript",
				"javascriptreact",
				"jsx",
				"markdown",
				"php",
				"rescript",
				"svelte",
				"tsx",
				"typescript",
				"typescriptreact",
				"vue",
				"xml",
			},
		})
	end,
}
