return {
	"nvim-treesitter/nvim-treesitter",
	lazy = true,
	build = function()
		if #vim.api.nvim_list_uis() ~= 0 then
			vim.api.nvim_command("TSUpdate")
		end
	end,
	event = { "CursorHold", "CursorHoldI" },
	dependencies = {
		"NvChad/nvim-colorizer.lua",
		"mrjones2014/nvim-ts-rainbow",
		"andymass/vim-matchup",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"javascript",
				"json",
				"python",
				"typescript",
				"tsx",
				"html",
				"css",
				"vim",
				"toml",
				"yaml",
				--[[ "rust", ]]
				--[[ "c", ]]
				--[[ "bash", ]]
				--[[ "java", ]]
			}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
			sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
			ignore_install = { "haskell" }, -- List of parsers to ignore installing
			autopairs = {
				enable = true,
			},
			highlight = {
				enable = true, -- false will disable the whole extension
				disable = { "" }, -- list of language that will be disabled
				additional_vim_regex_highlighting = false,
			},
			--[[ indent = { enable = true, disable = { "yaml" } }, ]]
			context_commentstring = {
				enable = true,
				enable_autocmd = false,
			},
			rainbow = {
				enable = true,
				extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
				max_file_lines = 200, -- Do not enable for files with more than n lines, int
			},
			autotag = { -- enable plugin autotag
				enable = true,
			},
			matchup = { enabled = true },
		})
		require("colorizer").setup({})
	end,
}
