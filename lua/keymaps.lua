local opts = {
  noremap = true,
  silent = true,
}

vim.g.mapleader = " "

-- map esc
vim.keymap.set('i', "jk", "<ESC>", opts)

-- move window
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- resize window
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- indent
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- bufferline
vim.keymap.set("n", "bd", "<Cmd>bnext | bdelete #<CR>", opts)
vim.keymap.set("n", "bh", "<Cmd>BufferLineCyclePrev<CR>", opts)
vim.keymap.set("n", "bH", "<Cmd>BufferLineMovePrev<CR>", opts)
vim.keymap.set("n", "bl", "<Cmd>BufferLineCycleNext<CR>", opts)
vim.keymap.set("n", "bL", "<Cmd>BufferLineMoveNext<CR>", opts)
vim.keymap.set("n", "bo", "<Cmd>BufferLineCloseOthers<CR>", opts)
for i = 1, 9 do
  vim.keymap.set('n', '<leader>'..i, function()
    require('bufferline').go_to(i, true) -- true=绝对序号
  end, { desc = '跳转到 buffer '..i })
end

-- neo-tree
vim.keymap.set("n", "<leader>rf", "<Cmd>Neotree reveal focus<CR>", opts)
vim.keymap.set("n", "<leader>t", "<Cmd>Neotree toggle<CR>", opts)

-- save file 
vim.keymap.set("n", "<leader>w", ":w<CR>", opts)
vim.keymap.set("n", '<leader>q', ':q<CR>', opts)

