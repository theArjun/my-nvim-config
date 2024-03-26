return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"c", "lua", "javascript", "html",
					"go", "dart", "typescript", "python",
					"vimdoc", "vim", -- Removed duplicate "dart"
				},
				highlight = { enable = true },
				indent = {
					enable = true,
					disable = { "dart" }
				},
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = 'gnn',
						node_incremental = 'grn',
						scope_incremental = 'grc',
						node_decremental = 'grm',
					},
				},
				textobjects = {
					select = {
						enable = true,
						lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
						keymaps = {
							-- You can use the capture groups defined in textobjects.scm
							["af"] = "@function.outer",
							["if"] = "@function.inner",
							["ac"] = "@class.outer",
							["ic"] = "@class.inner",
						},
					},
				},
			})
		end
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		after = "nvim-treesitter", -- Load after nvim-treesitter
		config = function()
			require 'treesitter-context'.setup {
				-- Add your trees
				-- enable = true, -- Enable treesitter-context by default
				throttle = true, -- Throttles plugin updates, which can improve performance
				max_lines = 0,   -- How many lines the window should span. Set to 0 to disable limiting.
				patterns = {
					-- Define patterns for specific languages (optional)
					-- Example for Python:
					python = {
						'class',
						'function',
						'method',
					},
					-- You can add more languages and their patterns here
				},
				-- Optionally, configure the zindex of the context window (helps with visibility over other UI elements)
				zindex = 20,
				-- Configure the exact position of the context. "topline" or "top"
				position = "topline",
			}
		end,
	},
	-- Add your method/plugin for listing class methods, interfaces, etc., here
	-- Example: integration with Telescope or similar tool
}
