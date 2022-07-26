
require("plugins/setup")
require("plugins/nvim-cmp/nvim-cmp")
require("plugins/LSP/lua-lsp")
require("plugins/LSP/C#-lsp")
require("plugins/LSP/ltex-lsp")
require("plugins/treesitter/treesitter")
--Base editor settings
--vim.cmd("syntax on")
vim.opt.relativenumber = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.cmd("colorscheme gruvbox")

vim.diagnostic.config(
{
	virtual_text = false,
	float = {scope = "cursor"}
})
