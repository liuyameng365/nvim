vim.pack.add({
  "https://github.com/folke/snacks.nvim",
})

require("snacks").setup({
  bigfile = { enabled = false },
  explorer = { enabled = false },
  picker = {
    enabled = true,
  },
  terminal = {
    enabled = true,
    start_insert = true,
    interactive = true,
  },
  notifier = {
    enabled = true,
    timeout = 3000
  },
  indent = { enabled = false },
  input = { enabled = true },
  quickfile = { enabled = true },
  words = { enabled = false },
})
