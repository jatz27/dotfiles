local status_lsp, _ = pcall(require, "lspconfig")
if not status_lsp then
	return
end

require("util.lsp.mason")
require("util.lsp.handlers").setup()
require("util.lsp.null-ls")
require("util.lsp.lspsaga")
