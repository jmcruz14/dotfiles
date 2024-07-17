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
				ensure_installed = { "lua_ls", "tsserver", "bashls", "volar", "ruff", "ruff_lsp", "html" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function ()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig.html.setup({
				capabilities = capabilities
			})
			lspconfig.tsserver.setup({
				capabilities = capabilities
			})
			lspconfig.bashls.setup({
				capabilities = capabilities
			})

			lspconfig.volar.setup({
				capabilities = capabilities
				-- cmd = { 'vue-language-server', '--stdio' },
				-- filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
				-- root_dir = util.root_pattern 'package.json'
			})
			-- add configs for Golang, Python (ruff (or ruff-lsp?)), Vue 3 (Volar)

			lspconfig.ruff_lsp.setup({
				init_options = {
					settings = {
						args = {},
					}
				},
				capabilities = capabilities
			})

			vim.keymap.set('n', '<Tab>', vim.lsp.buf.hover, {})
			vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
		end
	},
	{
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function ()
			vim.diagnostic.config({
				virtual_text = false
			})
			require("lsp_lines").setup()
			vim.keymap.set('n', '<Leader>l', require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
		end
	}
}
