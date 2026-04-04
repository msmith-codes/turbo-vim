local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
    require("turbo-vim.plugins.bufferline"),
    require("turbo-vim.plugins.gruvbox"),
    require("turbo-vim.plugins.lspconfig"),
    require("turbo-vim.plugins.nvim-cmp"),
    require("turbo-vim.plugins.autopairs"),
    require("turbo-vim.plugins.treesitter"),
    require("turbo-vim.plugins.telescope"),
    require("turbo-vim.plugins.snacks"),
    require("turbo-vim.plugins.sidekick"),
}
local opts = {}

require("lazy").setup(plugins, opts)

-- [[ AFTER ]] --
require("turbo-vim.after.colortheme")
require("turbo-vim.after.telescope")
require("turbo-vim.after.bufferline")
