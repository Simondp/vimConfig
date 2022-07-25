local lspconfig = require 'lspconfig'
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
lspconfig.omnisharp.setup{
     cmd = {"dotnet","/home/sdp/bin/omnisharp-linux-x64-net6.0/OmniSharp.dll"},
	 filetypes={'cs','cshtml'},
     on_attach=require('plugins/LSP/on_attach').on_attach
}

