local status_ok, illuminate = pcall(require, "illuminate")
if not status_ok then
	return
end

illuminate.configure({
	providers = {
		"lsp",
		"treesitter",
		"regex",
	},
	delay = 100,
	filetypes_denylist = {
		"DoomInfo",
		"DressingSelect",
		"NvimTree",
		"Outline",
		"TelescopePrompt",
		"Trouble",
		"alpha",
		"dashboard",
		"dirvish",
		"fugitive",
		"help",
		"lsgsagaoutline",
		"neogitstatus",
		"norg",
		"toggleterm",
	},
	under_cursor = false,
})
