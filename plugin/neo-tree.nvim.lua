vim.pack.add({
  {
    src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
    version = vim.version.range('3')
  },
  -- dependencies
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/MunifTanjim/nui.nvim",
  -- optional, but recommended
  "https://github.com/nvim-tree/nvim-web-devicons",
})
require("neo-tree").setup({
  filesystem = {
    -- 打开文件时使用当前窗口，不新建
    -- hijack_netrw_behavior = 'open_current',
    -- follow_current_file = { enabled = true },
    filtered_items = {
      visible = true,
      hide_dotfile = false,
      hide_gitignored = false,
      hide_hidden = false,
    },
  },
  window = {
    mappings = {
      ["z"] = "close_all_nodes",
      ["Z"] = "expand_all_subnodes",
    },
  },
  close_if_last_window = true,
  -- event_handlers = {
  --   {
  --     event = "file_open_requested",
  --     handler = function()
  --       -- auto close 
  --       -- vim.cmd("Neotree close")
  --       -- OR 
  --       require("neo-tree.command").execute({ action = "close"})
  --     end
  --   },
  -- },
})
