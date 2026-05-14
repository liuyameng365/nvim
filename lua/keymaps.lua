local opts = {
  noremap = true,
  silent = true,
}

vim.g.mapleader = " "

-- map esc
vim.keymap.set('i', "<Space><Space>", "<ESC>", { desc = "Exit Insert Mode" })

-- resize window
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- indent
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- bufferline
vim.keymap.set("n", "<leader>bd", "<Cmd>bdelete<CR>", { silent=true })
vim.keymap.set("n", "<leader>bj", "<Cmd>BufferLineCyclePrev<CR>", { silent=true })
vim.keymap.set("n", "<leader>bJ", "<Cmd>BufferLineMovePrev<CR>", { silent=true })
vim.keymap.set("n", "<leader>bk", "<Cmd>BufferLineCycleNext<CR>", { silent=true })
vim.keymap.set("n", "<leader>bK", "<Cmd>BufferLineMoveNext<CR>", { silent=true })
vim.keymap.set("n", "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", { silent=true })

-- neo-tree
vim.keymap.set("n", "<leader>rf", "<Cmd>Neotree reveal focus<CR>", { silent=true })
vim.keymap.set("n", "<leader>t", "<Cmd>Neotree toggle<CR>", { silent=true })
