vim.pack.add({
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/nvim-lualine/lualine.nvim'
})

require("lualine").setup({
  options = {
      theme = "auto",
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
  },
  extensions = { "neo-tree" },
  sections = {
      lualine_b = { "branch", "diff" },
      lualine_x = {
          "encoding",
          "filetype",
          "filesize",
      },
  },
})
