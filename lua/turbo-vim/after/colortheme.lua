local config = require("config")

vim.o.background = config.theme.mode
vim.cmd("colorscheme " .. config.theme.style)
