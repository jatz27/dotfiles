local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require "conf.lsp.configs"
require("conf.lsp.handlers").setup()
