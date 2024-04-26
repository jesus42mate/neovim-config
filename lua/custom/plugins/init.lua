-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		"github/copilot.vim",
		opts = {},
		config = function ()
		end
	},
	{
		'f-person/git-blame.nvim',
		opts = {},
		config = function ()
			require('gitblame').setup {
				enabled = false,
			}
		end
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		opts = {},
		config = function ()
			require('treesitter-context').setup {
				enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
				trim_scope = 'outer',
				max_lines = 4,
				multiline_threshold = 1
			}
		end
	},
	{
		"AndrewRadev/tagalong.vim"
	},
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		opts = {} -- this is equalent to setup({}) function
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000 ,
		config = function()
			-- Default options:
			require("gruvbox").setup({
				terminal_colors = true, -- add neovim terminal colors
				undercurl = true,
				underline = true,
				bold = true,
				italic = {
					strings = false,
					emphasis = false,
					comments = false,
					operators = false,
					folds = false,
				},
				strikethrough = true,
				invert_selection = false,
				invert_signs = false,
				invert_tabline = false,
				invert_intend_guides = false,
				inverse = true, -- invert background for search, diffs, statuslines and errors
				contrast = "soft", -- can be "hard", "soft" or empty string
				palette_overrides = {},
				overrides = {},
				dim_inactive = false,
				transparent_mode = false,
			})
			--vim.cmd("colorscheme gruvbox")
		end,
		opts = ...
	},
	{
		"nvim-ts-autotag",
		opts = {},
		config = function()
			require("nvim-ts-autotag").setup {
				autotag = {
					enable = true,
				}
			}
		end
	},
	{
		'brenoprata10/nvim-highlight-colors',
		opts = {},
		config = function ()
			require('nvim-highlight-colors').setup {}
		end
	}

}
