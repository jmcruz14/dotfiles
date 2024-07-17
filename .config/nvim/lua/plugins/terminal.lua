return {
  {
		'akinsho/toggleterm.nvim', 
		version = "*", 
		opts = {--[[ things you want to change go here]]},
		config = function()
			local opts = { noremap = true, silent = true }
			require('toggleterm').setup({
				size = 20,
				direction = "float",
				shade_terminals = true,
				close_on_exit = true,
				autochdir = false,
				insert_mappings = true,
				terminal_mappings = true,
				shell = vim.o.shell,
				float_opts = {
					border = "single"
				}
			})

			vim.cmd('command! OpenTerminal :ToggleTerm')
			vim.keymap.set('n', '<leader>tt', ':OpenTerminal<CR>', opts)
		end
	},
}
