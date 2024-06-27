return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function ()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "tsserver", "bashls" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function ()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.tsserver.setup({})
			lspconfig.bashls.setup({})
			-- add configs for Golang, Python (ruff), Vue 3 (Volar)

			vim.keymap.set('n', '<Tab>', vim.lsp.buf.hover, {})
			vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
		end
	}
}
