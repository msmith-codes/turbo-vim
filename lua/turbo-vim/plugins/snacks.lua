local config = require("config")

return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    explorer = {
      enabled = true,
    },
    indent = { enabled = true },
    input = { enabled = true },
    picker = {
      enabled = true,
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          auto_close = config.filetree.fullscreen,
          layout = config.filetree.fullscreen and {
            preset = "default",
            fullscreen = true,
          } or {
            preset = "sidebar",
            layout = {
              position = config.filetree.position,
              width = config.filetree.width,
              min_width = config.filetree.width,
            },
          },
        },
      },
    },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    terminal = {
      enabled = true,
      win = {
        position = config.terminal.floating and "float" or "bottom",
        keys = {
          nav_close = "<C-\\>",
        },
      },
    },
  },
  keys = {
    { config.terminal.toggle, function() Snacks.terminal() end, desc = "Toggle Terminal" },
    { config.terminal.toggle, function() Snacks.terminal() end, mode = "t", desc = "Toggle Terminal" },
    { config.filetree.toggle, function() Snacks.explorer() end, desc = "Toggle Explorer" },
    {
      config.filetree.jump_to,
      function()
        local explorer = Snacks.picker.get({ source = "explorer" })[1]
        if explorer then
          explorer:focus()
        else
          Snacks.explorer()
        end
      end,
      desc = "Jump to Explorer",
    },
  },
}
