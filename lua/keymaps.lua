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
vim.keymap.set("n", "<C-w>", "<C-w>w", opts)
vim.keymap.set("n", "<C-p>", "<C-w>p", opts)

vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], opts)
vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], opts)
vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], opts)
vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], opts)
vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>w]], opts)
vim.keymap.set("t", "<C-p>", [[<C-\><C-n><C-w>p]], opts)

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

-- save && quit file editor
vim.keymap.set("n", "<leader>w", ":w<CR>", opts)
vim.keymap.set("n", '<leader>q', ':q<CR>', opts)

-- snacks
vim.keymap.set("n", "<leader>ff", function() Snacks.picker.files() end, opts)
vim.keymap.set("n", "<leader>fg", function() Snacks.picker.grep() end, opts)
vim.keymap.set("n", "<leader>fb", function() Snacks.picker.buffers() end, opts)
vim.keymap.set({"n", "t"}, [[<C-\>]], function() Snacks.terminal.toggle() end, opts)
vim.keymap.set({"n", "t"}, "<leader>tt", function()
  Snacks.terminal.toggle(nil, {
    win = {
      position = "bottom",
      height = 0.3,
    },
  })
  -- vim.cmd("startinsert")
end, opts)

vim.keymap.set({"n", "t"}, "<leader>tv", function ()
  Snacks.terminal.toggle(nil, {
    win = {
      position = "right",
      width = 0.35,
    },
  })
  -- vim.cmd("startinsert")
end, opts)

vim.keymap.set({"n", "t"}, "<leader>tf", function()
  Snacks.terminal.toggle(nil, {
    win = {
      position = "float",
    },
  })
  -- vim.cmd("startinsert")
end, opts)
