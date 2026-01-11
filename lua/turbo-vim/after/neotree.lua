local config = require("config")

require("neo-tree").setup({
    filesystem = {
        filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
        },
        follow_current_file = { enabled = true },
    },
    window = {
        position = config.neotree.position, 
        width = config.neotree.width
    }
})

vim.keymap.set("n", config.filetree.jump_to, ":Neotree<CR>", { noremap = true, silent = true })
vim.keymap.set("n", config.filetree.toggle, ":Neotree toggle<CR>", { noremap = true, silent = true })

-- Open Neo-tree when starting nvim with a directory
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function(data)
        local directory = vim.fn.isdirectory(data.file) == 1
        if directory then
            vim.cmd.cd(data.file)
            require("neo-tree.command").execute({ action = "show" })
        end
    end,
})
