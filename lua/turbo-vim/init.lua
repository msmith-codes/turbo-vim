local config = require("config")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.number = config.editor.line_numbers 
vim.opt.relativenumber = config.editor.relative_line_numbers 
vim.o.cursorline = config.editor.highlight_line

vim.opt.shiftwidth = config.editor.tab_size 
vim.opt.tabstop = config.editor.tab_size
vim.opt.softtabstop = config.editor.tab_size
vim.opt.expandtab = true

require("turbo-vim.lazy")

vim.keymap.set("n", config.filetree.jump_to, "<C-w>h", { noremap = true, silent = true })
