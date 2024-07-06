return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,

				-- JS
				require("none-ls.diagnostics.eslint_d"),

				-- Python
				require("none-ls.diagnostics.ruff"),
				require("none-ls.formatting.ruff"),

				-- Go?

			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
