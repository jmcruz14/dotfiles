local keymap = vim.keymap
local api = vim.api
local opts = { noremap = true, silent = true }

-- Delete a word backwards
keymap.set("n", "dw", "vb_d")

-- For tabs
-- vim.api.nvim_set_keymap('n', '<C-w>', ':tabclose<CR>', opts)
-- api.nvim_set_keymap('n', '[', ':-tabnext<CR>', opts)
-- api.nvim_set_keymap('n', ']', ':+tabnext<CR>', opts)

-- Key mapping for creating a new tab with the current file
-- api.nvim_set_keymap('n', '<C-u>', ':tab split<CR>', opts)

