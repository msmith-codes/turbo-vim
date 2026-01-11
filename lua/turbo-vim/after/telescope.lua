local builtin = require("telescope.builtin")
local config = require("config")

vim.keymap.set("n", config.telescope.findfile, builtin.find_files, {})
vim.keymap.set("n", config.telescope.livegrep, builtin.live_grep, {})
