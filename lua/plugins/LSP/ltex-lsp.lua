local lspconfig = require'lspconfig'
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
local bin_name = {'ltex-ls'}



lspconfig.ltex.setup{
cmd = bin_name,
capabilities = capabilities,
filetype = {"md","txt"}
};
