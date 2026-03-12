vim.opt.termguicolors = true

require("bufferline").setup({
  options = {
      offsets = {
      {
        filetype = "snacks_layout_box",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left"
      }
    }
  }
})

-- Buffer navigation
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true })

-- Close buffer
-- Smart buffer close
local function smart_close()
  local buffers = vim.fn.getbufinfo({ buflisted = 1 })

  if #buffers > 1 then
    vim.cmd("bnext")  -- switch to next buffer
    vim.cmd("bdelete #") -- delete previous buffer
  else
    vim.cmd("bdelete") -- last buffer
  end
end

vim.keymap.set("n", "<leader>q", smart_close, { silent = true })

