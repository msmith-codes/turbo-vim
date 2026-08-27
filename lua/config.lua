return {
    theme = {
        style = "catppuccin", -- [catppuccin, gruvbox]
        mode = "dark", -- [dark, light]
    },
    editor = {
        line_numbers = true,
        relative_line_numbers = false,
        highlight_line = true,
        tab_size = 4,
    },
    filetree = {
        jump_to = "<C-h>",
        toggle = "<C-n>",
        position = "left", -- [left right]
        fullscreen = false,
        width = 24,
    },
    sidekick = {
        enabled = true,
    },
    telescope = {
        findfile = "<leader>ff",
        livegrep = "<leader>fg",
    },
    terminal = {
        toggle = "<C-\\>",
        floating = true,
    },
    bufferline = {
        close_tab = "<leader>q"
    },
}
