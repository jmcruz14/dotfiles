local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.g.mapleader = (" ")
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
vim.api.nvim_create_user_command('Zsh', 'term zsh', {})

-- Define a command to clear search highlighting
vim.cmd('command! NoHL :nohlsearch')

-- Map a key to the NoHL command with noremap and silent
vim.api.nvim_set_keymap('n', '<leader>h', ':NoHL<CR>', { noremap = true, silent = true })

vim.cmd.colorscheme "palenight"
