local config = require("config")

vim.g.mapleader = config.editor.leader
vim.g.maplocalleader = "\\"

vim.opt.number = config.editor.line_numbers 
vim.opt.relativenumber = config.editor.relative_line_numbers 
vim.o.cursorline = config.editor.highlight_line

vim.opt.shiftwidth = config.editor.tab_size 
vim.opt.tabstop = config.editor.tab_size
vim.opt.softtabstop = config.editor.tab_size
vim.opt.expandtab = true

vim.keymap.set("n", config.editor.show_error, function()
  vim.diagnostic.open_float(nil, { scope = "cursor", border = "rounded" })
end, { silent = true, desc = "Show LSP diagnostic" })

require("turbo-vim.lazy")
