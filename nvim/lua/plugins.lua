local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "~/.local/share/nvim/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- Packer
	use("wbthomason/packer.nvim") -- Restor de paquetes
	use("lewis6991/impatient.nvim") -- Optimization

	-- colorscheme and icons
	use("kyazdani42/nvim-web-devicons") --Iconos
	use("olimorris/onedarkpro.nvim") -- colorscheme onedarkpro
	use("folke/tokyonight.nvim") -- colorscheme tokyonight
	use("kvrohit/mellow.nvim") -- colorscheme mellow
	use("EdenEast/nightfox.nvim") -- colorscheme nightfox

	-- Lualine
	use("nvim-lualine/lualine.nvim") -- Status Line
	-- Bufferline
	use("akinsho/bufferline.nvim")
	use("moll/vim-bbye") -- close buffers

	-- Alpha dashboard
	use("goolord/alpha-nvim")
	-- which-key
	use("folke/which-key.nvim")

	-- cmp plugins
	use("hrsh7th/nvim-cmp") -- Plugion para complete lsp
	use("hrsh7th/cmp-buffer") -- buffer complete
	use("hrsh7th/cmp-path") -- path complete
	use("hrsh7th/cmp-cmdline") -- cmdline complete
	use("saadparwaiz1/cmp_luasnip") -- snippet complete lua
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	-- Tabnine complete
	use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" })

	-- snippets
	use("L3MON4D3/LuaSnip") --snippet engine
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

	-- LSP
	use("neovim/nvim-lspconfig") -- Enable LSP
	use("williamboman/mason.nvim") -- simple to use language server installer
	use("williamboman/mason-lspconfig.nvim")
	use("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters
	use("RRethy/vim-illuminate")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("p00f/nvim-ts-rainbow")
	use("windwp/nvim-autopairs") -- Autopairs, integrado con cmp y treesitter
	use("numToStr/Comment.nvim") -- Comentarios
	use("JoosepAlviste/nvim-ts-context-commentstring") --Contexto de comentarios

	--Terminal toggle
	use("akinsho/toggleterm.nvim")
	--  use "voldikss/vim-floaterm"
	-- Maximisa ventanas
	use("szw/vim-maximizer")

	-- Telescope
	use("nvim-telescope/telescope.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")
	use("ahmedkhalf/project.nvim") -- Project
	-- Git
	use("lewis6991/gitsigns.nvim")
	use("kdheepak/lazygit.nvim")

	-- Nvim Tree
	use("kyazdani42/nvim-tree.lua")

	-- Ident
	use("lukas-reineke/indent-blankline.nvim")

	-- colorizer
	use("norcalli/nvim-colorizer.lua")

	--EazyMotion
	use("easymotion/vim-easymotion")

	--[[ Plugin trouble ]]
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	})

	--[[ Dadbod conexions databases  ]]
	use({
		"kristijanhusak/vim-dadbod-ui",
		requires = {
			"tpope/vim-dadbod",
			"kristijanhusak/vim-dadbod-completion",
			"tpope/vim-dotenv",
		},
	})

	--[[ Plugin web tools ]]
	use("ray-x/web-tools.nvim")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
