return {
	'romgrk/barbar.nvim',
	dependencies = {
		'lewis6991/gitsigns.nvim', -- optional: for git status
		'nvim-tree/nvim-web-devicons', -- optional: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = false
		local opts = { noremap = true, silent = true }

		vim.keymap.set('n', '<C-[>', ':BufferPrevious<CR>', opts)
		vim.keymap.set('n', '<C-]>', ':BufferNext<CR>', opts)
		vim.keymap.set('n', '<leader>qw', ':BufferClose<CR>', opts)
		vim.keymap.set('n', '<leader>qq', ':BufferRestore<CR>', opts)
	end,
	opts = {
		-- TODO: build and configure the barbar plugin and its keymaps
		-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
		-- animation = true,
		-- insert_at_start = true,
		-- …etc.
	},
	version = '^1.0.0', -- optional: only update when a new 1.x version is released
}

