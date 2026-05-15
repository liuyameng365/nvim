vim.pack.add({
  "https://github.com/akinsho/bufferline.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",
})

vim.opt.termguicolors = true
require("bufferline").setup({
  options = {
    mode = "buffers",
    numbers = "ordinal",
    diagnostics = "nvim_lsp",
    separator_style = "slant",
    modified_icon = "● ",
    show_close_icon = false,
    show_buffer_close_icons = true,
    auto_toggle_bufferline = true,
    sort_by = 'id',
    offsets = {
      {
        filetype = "neo-tree",
        text = "Neo-tree File Explorer",
        text_align = "left",
        separator = true,
      },
    },
  },
})
