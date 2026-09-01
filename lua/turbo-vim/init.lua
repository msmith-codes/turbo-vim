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
  vim.notify("This is an error message", vim.log.levels.ERROR)
end, { silent = true, desc = "Show error message" })

require("turbo-vim.lazy")
