local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("config.options")
require("lazy").setup("plugins")

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>c', ':Neotree<CR>', {})
vim.api.nvim_create_user_command('Zsh', 'term zsh', {})
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd("Neotree")
	end
})

vim.cmd('colorscheme flexoki-dark')
