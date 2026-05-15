vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

vim.keymap.del("n", "grn")
vim.keymap.del("n", "gra")
vim.keymap.del("n", "grr")
vim.keymap.del("n", "gri")
vim.keymap.del("n", "gO")

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local keymap = vim.keymap
		local lsp = vim.lsp
		local bufopts = { noremap = true, silent = true }

		keymap.set("n", "gr", lsp.buf.references, bufopts)
		keymap.set("n", "gd", lsp.buf.definition, bufopts)
		keymap.set("n", "<space>rn", lsp.buf.rename, bufopts)
		keymap.set("n", "K", lsp.buf.hover, bufopts)
		keymap.set("n", "<space>f", function()
			vim.lsp.buf.format({ async = true })
		end, bufopts)
	end,
})

vim.lsp.enable({ "ty" })
vim.lsp.enable({ "stylua" })
vim.lsp.enable({ "lua_ls" })
vim.lsp.enable({ "yamlls" })
vim.lsp.enable({ "bashls" })
vim.lsp.enable({ "gopls" })
vim.lsp.enable({ "rust_analyzer" })
vim.lsp.enable({ "golangci_lint_ls" })
