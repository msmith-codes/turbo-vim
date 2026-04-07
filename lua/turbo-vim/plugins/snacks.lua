return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    explorer = {
      enabled = true,
      auto_close = false
    },
    indent = { enabled = true },
    input = { enabled = true },
    picker = {
      enabled = true,
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
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
        keys = {
          nav_close = "<C-\\>",
        },
      },
    },
  },
  keys = {
    { "<C-\\>", function() Snacks.terminal() end, desc = "Toggle Terminal" },
    { "<C-\\>", function() Snacks.terminal() end, mode = "t", desc = "Toggle Terminal" },
  },
}
