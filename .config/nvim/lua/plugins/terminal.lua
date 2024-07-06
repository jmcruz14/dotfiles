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
				close_on_exit = true,
				float_opts = {
					border = "single"
				}
			})
		end
	},
}
