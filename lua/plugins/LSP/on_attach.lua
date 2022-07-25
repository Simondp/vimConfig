local M={}
local function set_keybindings()
	vim.keymap.set("n","K",vim.lsp.buf.hover,{buffer=0})
	vim.keymap.set("n","gd",vim.lsp.buf.definition,{buffer=0})
	vim.keymap.set("n","gt",vim.lsp.buf.type_definition,{buffer=0})
	vim.keymap.set("n","gi",vim.lsp.buf.implementation,{buffer=0})
	vim.keymap.set("n","<space>dn",vim.diagnostic.goto_next,{buffer=0})
	vim.keymap.set("n","<space>dp",vim.diagnostic.goto_prev,{buffer=0})
	vim.keymap.set("n","<space>r",vim.lsp.buf.rename,{buffer=0})
end

function M.on_attach()
	set_keybindings()
end

return M
