vim.pack.add({
  "https://github.com/akinsho/toggleterm.nvim",
})

require("toggleterm").setup({
  size = 16,
  open_mapping = [[<C-\>]],
  direction = "horizontal",
  shade_terminals = true,
})

