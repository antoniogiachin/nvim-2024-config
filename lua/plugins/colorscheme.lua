return {
	{ "tjdevries/colorbuddy.nvim" },
	{ "blazkowolf/gruber-darker.nvim" },
	{ "EdenEast/nightfox.nvim" },
	{ "LunarVim/primer.nvim" },
	{ "aliqyan-21/darkvoid.nvim" },
	{ "nyoom-engineering/oxocarbon.nvim" },

	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		local transparent = false -- set to true if you would like to enable transparency
	--
	-- 		local bg = "#011628"
	-- 		local bg_dark = "#011423"
	-- 		local bg_highlight = "#143652"
	-- 		local bg_search = "#0A64AC"
	-- 		local bg_visual = "#275378"
	-- 		local fg = "#CBE0F0"
	-- 		local fg_dark = "#B4D0E9"
	-- 		local fg_gutter = "#627E97"
	-- 		local border = "#547998"
	--
	-- 		require("tokyonight").setup({
	-- 			style = "night",
	-- 			transparent = transparent,
	-- 			styles = {
	-- 				sidebars = transparent and "transparent" or "dark",
	-- 				floats = transparent and "transparent" or "dark",
	-- 			},
	-- 			on_colors = function(colors)
	-- 				colors.bg = bg
	-- 				colors.bg_dark = transparent and colors.none or bg_dark
	-- 				colors.bg_float = transparent and colors.none or bg_dark
	-- 				colors.bg_highlight = bg_highlight
	-- 				colors.bg_popup = bg_dark
	-- 				colors.bg_search = bg_search
	-- 				colors.bg_sidebar = transparent and colors.none or bg_dark
	-- 				colors.bg_statusline = transparent and colors.none or bg_dark
	-- 				colors.bg_visual = bg_visual
	-- 				colors.border = border
	-- 				colors.fg = fg
	-- 				colors.fg_dark = fg_dark
	-- 				colors.fg_float = fg
	-- 				colors.fg_gutter = fg_gutter
	-- 				colors.fg_sidebar = fg_dark
	-- 			end,
	-- 		})
	--
	-- 		vim.cmd("colorscheme tokyonight")
	-- 		vim.cmd.hi("Comment gui=none")
	-- 	end,
	-- },

	{
		"Mofiqul/vscode.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		init = function()
			require("vscode").setup({
				-- Alternatively set style in setup
				-- style = 'light'

				-- Enable transparent background
				transparent = true,

				-- Enable italic comment
				-- italic_comments = true,

				-- Underline `@markup.link.*` variants
				underline_links = true,

				-- Disable nvim-tree background color
				disable_nvimtree_bg = true,

				-- Override colors (see ./lua/vscode/colors.lua)
				-- color_overrides = {
				--   vscLineNumber = '#FFFFFF',
				-- },

				-- Override highlight groups (see ./lua/vscode/theme.lua)
				-- group_overrides = {
				--   -- this supports the same val table as vim.api.nvim_set_hl
				--   -- use colors from this colorscheme by requiring vscode.colors!
				--   Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
				-- },
			})
			vim.cmd("colorscheme vscode")
		end,
	},

	{
		"rose-pine/neovim",
		-- name = "rose-pine",
		-- lazy = false, -- make sure we load this during startup if it is your main colorscheme
		-- priority = 1000, -- make sure to load this before all the other start plugins
		-- init = function()
		-- 	require("rose-pine").setup({
		-- 		styles = {
		-- 			bold = true,
		-- 			italic = false,
		-- 			transparency = true,
		-- 		},
		-- 	})
		--
		-- 	vim.cmd("colorscheme rose-pine")
		-- 	-- vim.cmd("colorscheme rose-pine-main")
		-- 	-- vim.cmd("colorscheme rose-pine-moon")
		-- 	-- vim.cmd("colorscheme rose-pine-dawn")
		-- end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		-- priority = 1000,
		-- init = function()
		--   -- Default options:
		--   require('gruvbox').setup {
		--     terminal_colors = true, -- add neovim terminal colors
		--     undercurl = true,
		--     underline = true,
		--     bold = true,
		--     italic = {
		--       strings = true,
		--       emphasis = true,
		--       comments = true,
		--       operators = false,
		--       folds = true,
		--     },
		--     strikethrough = true,
		--     invert_selection = false,
		--     invert_signs = false,
		--     invert_tabline = false,
		--     invert_intend_guides = false,
		--     inverse = true, -- invert background for search, diffs, statuslines and errors
		--     contrast = '', -- can be "hard", "soft" or empty string
		--     palette_overrides = {},
		--     overrides = {},
		--     dim_inactive = false,
		--     transparent_mode = true,
		--   }
		--
		--   vim.cmd 'colorscheme gruvbox'
		--
		--   vim.cmd.hi 'Comment gui=none'
		-- end,
	},

	{ "sainnhe/edge" },
	{
		"mofiqul/dracula.nvim",
		-- priority = 1000,
		-- init = function()
		-- 	-- default options:
		-- 	require("dracula").setup({
		-- 		-- customize dracula color palette based on vs code configuration
		-- 		colors = {
		-- 			bg = "#0f172a", -- editor.background
		-- 			fg = "#cbd6e8", -- editorcursor.foreground
		-- 			selection = "#44475a", -- editor.selectionbackground (fallback to default if not specified in vs code config)
		-- 			comment = "#6272a4", -- editorlinenumber.foreground (use vs code's comment style)
		-- 			red = "#ff5555", -- match terminal.ansired
		-- 			orange = "#ffb86c", -- add if needed (not in vs code config explicitly)
		-- 			yellow = "#f1fa8c", -- match terminal.ansiyellow
		-- 			green = "#50fa7b", -- match terminal.ansigreen
		-- 			purple = "#bd93f9", -- match terminal.ansiblue
		-- 			cyan = "#8be9fd", -- match terminal.ansicyan
		-- 			pink = "#ff79c6", -- match terminal.ansimagenta
		-- 			bright_red = "#ff6e6e", -- match terminal.ansibrightred
		-- 			bright_green = "#69ff94", -- match terminal.ansibrightgreen
		-- 			bright_yellow = "#ffffa5", -- match terminal.ansibrightyellow
		-- 			bright_blue = "#d6acff", -- match terminal.ansibrightblue
		-- 			bright_magenta = "#ff92df", -- match terminal.ansibrightmagenta
		-- 			bright_cyan = "#a4ffff", -- match terminal.ansibrightcyan
		-- 			bright_white = "#ffffff", -- match terminal.ansibrightwhite
		-- 			menu = "#0b111e", -- sidebar.background
		-- 			visual = "#3e4452", -- editor.linehighlightbackground
		-- 			gutter_fg = "#4b5263", -- editorindentguide.background
		-- 			nontext = "#3b4048", -- editorwhitespace.foreground
		-- 			white = "#f8f8f2", -- editor.foreground (fallback to default if not specified in vs code config)
		-- 			black = "#191a21", -- terminal.ansiblack (fallback to default if not specified in vs code config)
		-- 		},
		-- 		-- show the '~' characters after the end of buffers
		-- 		show_end_of_buffer = true, -- default false
		-- 		-- use transparent background
		-- 		transparent_bg = false, -- set to true if you want a transparent background
		-- 		-- set custom lualine background color
		-- 		lualine_bg_color = "#44475a", -- statusbar.background
		-- 		-- set italic comment
		-- 		italic_comment = true, -- align with comment styling preferences
		-- 		-- overrides (optional, use if specific elements need different customization)
		-- 		overrides = {},
		-- 	})
		--
		-- 	vim.cmd("colorscheme dracula")
		--
		-- 	vim.cmd.hi("comment gui=none")
		-- end,
	},

	{
		"sainnhe/gruvbox-material",
		-- priority = 1000,
		-- init = function()
		-- 	-- vim.g.gruvbox_material_disable_italic_comment = 1
		-- 	vim.g.gruvbox_material_diagnostic_text_highlight = 1
		-- 	vim.g.gruvbox_material_diagnostic_line_highlight = 1
		-- 	vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
		-- 	vim.g.gruvbox_material_transparent_background = 1
		-- 	vim.g.gruvbox_material_background = "hard"
		-- 	-- vim.g.gruvbox_material_foreground = 'original'
		-- 	-- vim.g.gruvbox_material_dim_inactive_windows = 1
		-- 	vim.cmd.colorscheme("gruvbox-material")
		--
		-- 	-- you can configure highlights by doing something like:
		-- 	vim.cmd.hi("comment gui=none")
		-- end,
	},
}
