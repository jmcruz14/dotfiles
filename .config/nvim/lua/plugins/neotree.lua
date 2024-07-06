return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", temporary disable, re-enable when up to date again
	},
	init = function()
		vim.api.nvim_create_autocmd('BufEnter', {
			group = vim.api.nvim_create_augroup('NeoTreeInit', {clear = true}),
			callback = function()
				local f = vim.fn.expand('%:p')
				if vim.fn.isdirectory(f) ~= 0 then
					vim.cmd('Neotree current dir=' .. f)
					-- neo-tree is loaded now, delete the init autocmd
					vim.api.nvim_clear_autocmds{group = 'NeoTreeInit'}
				end
			end
		})
		-- keymaps
	end,
	opts = {
		filesystem = {
			hijack_netrw_behavior = 'open_current'
		}
	},
	config = function ()
		local neotree = require("neo-tree")
		neotree.setup({
			enable_git_status = true,
			enable_diagnostics = true,
			event_handlers  = {
				{
			event = "file_opened",
			default_component_configs = {
				indent = {
					with_expanders = true,
					expander_collapsed = ">",
					expander_expanded = "v",
					expander_highlight = "NeoTreeExpander",
				}
			},
---@diagnostic disable-next-line: unused-local
				handler = function(file_path)
					require("neo-tree.command").execute({ action = "close" })
				end
				}
			}
		})
		vim.keymap.set('n', 'm', ':Neotree<CR>', {})
	end
}

