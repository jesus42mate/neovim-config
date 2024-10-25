-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		"zenbones-theme/zenbones.nvim",
		-- Optionally install Lush. Allows for more configuration or extending the colorscheme
		-- If you don't want to install lush, make sure to set g:zenbones_compat = 1
		-- In Vim, compat mode is turned on as Lush only works in Neovim.
		dependencies = "rktjmp/lush.nvim",
		lazy = false,
		priority = 1000,
		--
		-- you can set set configuration options here
		-- config = function()
		--     vim.g.zenbones_darken_comments = 45
		--     vim.cmd.colorscheme('zenbones')
		-- end
	},
	{
		'mfussenegger/nvim-lint',
		event = {
			"BufReadPre",
			"BufNewFile"
		},
		config = function()
			local lint = require("lint")
			lint.linters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
			}
		end
	},
	{
		'stevearc/conform.nvim',
		event = {
			"BufReadPre",
			"BufNewFile"
		},
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					-- Conform will run multiple formatters sequentially
					python = { "isort", "black" },
					-- You can customize some of the format options for the filetype (:help conform.format)
					rust = { "rustfmt", lsp_format = "fallback" },
					-- Conform will run the first available formatter
					javascript = { "prettier" },
					typescript = { "prettier" },
					javascriptreact = { "prettier" },
					typescriptreact = { "prettier" },
				},
				format_on_save = {
					lsp_fallback = true,
					async = false,
					timeout_ms = 500,
				}
			})
		end
	},
	{ 'catppuccin/nvim' },
	{ 'ayu-theme/ayu-vim' },
	{
		"hachy/eva01.vim",
		lazy = false,
		priority = 1000,
		--config = function()
		--	vim.cmd.colorscheme("eva01")
		--end
	},
	{ "cocopon/iceberg.vim" },
	{
		-- NOT NECESSARY
		--'anuvyklack/pretty-fold.nvim',
		--config = function ()
		--	require('pretty-fold').setup({
		--		remove_fold_markers = false,
		--		fill_char = '•',
		--		sections = {
		--			left = {
		--				'+', function() return string.rep('-', vim.v.foldlevel) end,
		--				' ', 'number_of_folded_lines', ':', 'content',
		--			},
		--		},
		--	})
		--end
	},
	{
		'terrortylor/nvim-comment',
		config = function()
			require('nvim_comment').setup({
				-- Linters prefer comment and line to have a space in between markers
				marker_padding = true,
				-- should comment out empty or whitespace only lines
				comment_empty = false,
				-- trim empty comment whitespace
				comment_empty_trim_whitespace = true,
				-- Should key mappings be created
				create_mappings = true,
				-- Normal mode mapping left hand side
				line_mapping = "<leader>d",
				-- Visual/Operator mapping left hand side
				operator_mapping = "<leader>da",
				-- text object mapping, comment chunk,,
				comment_chunk_text_object = "ic",
				-- Hook function to call before commenting takes place
				hook = nil
			})
		end
	},
	{
		"github/copilot.vim",
		opts = {
		},
		config = function()
			copilot_toggle()
		end
	},
	{
		'f-person/git-blame.nvim',
		opts = {},
		config = function()
			require('gitblame').setup {
				enabled = false,
			}
		end
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		opts = {},
		config = function()
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
		priority = 1000,
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
		end,
		opts = ...
	},
	{
		"windwp/nvim-ts-autotag",
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
		config = function()
			require('nvim-highlight-colors').setup {}
		end
	}
}
