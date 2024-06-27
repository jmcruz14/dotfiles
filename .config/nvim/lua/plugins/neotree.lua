return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim",
	},
	config = function ()
		require("neo-tree").setup({
			event_handlers  = {
				{
			event = "file_opened",
---@diagnostic disable-next-line: unused-local
				handler = function(file_path)
					require("neo-tree.command").execute({ action = "close" })
				end
				}
			}
		})
	end
}

