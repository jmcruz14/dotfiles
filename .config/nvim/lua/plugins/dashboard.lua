return {
	-- change into the more sophisticated dashboard soon
	{
		'MeanderingProgrammer/dashboard.nvim',
		event = 'VimEnter',
		dependencies = {
        { 'MaximilianLloyd/ascii.nvim', dependencies = { 'MunifTanjim/nui.nvim' } },
    },
		config = function()
			require('dashboard').setup({
				header = require('ascii').art.text.neovim.sharp,
				date_format = '%Y-%m-%d %H:%M:%S',
				directories = {
						'~/.config',
						'~/Desktop/jay-js-workspaces',
						'~/Desktop/jay-python-workspaces',
						'~/Desktop/cinema-projects'
				},
				footer = {'startuptime'},
			})
		end
	}
}
