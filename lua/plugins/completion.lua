return {
	-- {
	-- 	"L3MON4D3/LuaSnip",
	-- 	build = (function()
	-- 		-- Build Step is needed for regex support in snippets.
	-- 		-- This step is not supported in many windows environments.
	-- 		-- Remove the below condition to re-enable on windows.
	-- 		if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
	-- 			return
	-- 		end
	-- 		return "make install_jsregexp"
	-- 	end)(),
	-- 	dependencies = {
	-- 		-- `friendly-snippets` contains a variety of premade snippets.
	-- 		--    See the README about individual language/framework/plugin snippets:
	-- 		--    https://github.com/rafamadriz/friendly-snippets
	-- 		{
	-- 			"rafamadriz/friendly-snippets",
	-- 			config = function()
	-- 				require("luasnip.loaders.from_vscode").lazy_load()
	-- 			end,
	-- 		},
	-- 	},
	-- },
	-- { "hrsh7th/cmp-nvim-lsp", lazy = true },
	-- { "hrsh7th/cmp-path", lazy = true },
	-- { "onsails/lspkind.nvim", lazy = true },
	-- { "hrsh7th/cmp-buffer", lazy = true },
	-- {
	-- 	"hrsh7th/nvim-cmp",
	-- 	version = false,
	-- 	event = "InsertEnter",
	-- 	dependencies = {
	-- 		"hrsh7th/cmp-nvim-lsp",
	-- 		"hrsh7th/cmp-path",
	-- 		"hrsh7th/cmp-buffer",
	-- 		"onsails/lspkind.nvim",
	-- 		"L3MON4D3/LuaSnip",
	-- 	},
	-- 	config = function()
	-- 		local cmp = require("cmp")
	-- 		local luasnip = require("luasnip")
	-- 		local opts = {
	-- 			sources = cmp.config.sources({
	-- 				{ name = "nvim_lsp" },
	-- 				{ name = "path" },
	-- 				{ name = "buffer" },
	-- 			}),
	-- 			mapping = cmp.mapping.preset.insert({
	-- 				["<C-Space>"] = cmp.mapping.complete({}),
	-- 				["<C-y>"] = cmp.mapping.confirm({ select = true }),
	-- 				["<C-n>"] = cmp.mapping(function(original)
	-- 					print("tab pressed")
	-- 					if cmp.visible() then
	-- 						print("cmp expand")
	-- 						cmp.select_next_item()
	-- 					elseif luasnip.expand_or_jumpable() then
	-- 						print("snippet expand")
	-- 						luasnip.expand_or_jump()
	-- 					else
	-- 						print("fallback")
	-- 						original()
	-- 					end
	-- 				end, { "i", "s" }),
	-- 				["<C-p>"] = cmp.mapping(function(original)
	-- 					if cmp.visible() then
	-- 						cmp.select_prev_item()
	-- 					elseif luasnip.expand_or_jumpable() then
	-- 						luasnip.jump(-1)
	-- 					else
	-- 						original()
	-- 					end
	-- 				end, { "i", "s" }),
	-- 			}),
	-- 		}
	-- 		cmp.setup(opts)
	-- 	end,
	-- },
	-- "hrsh7th/nvim-cmp",
	-- event = "InsertEnter",
	-- dependencies = {
	-- 	"hrsh7th/cmp-buffer", -- source for text in buffer
	-- 	"hrsh7th/cmp-path", -- source for file system paths
	-- 	{
	-- 		"L3MON4D3/LuaSnip",
	-- 		-- follow latest release.
	-- 		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- 		-- install jsregexp (optional!).
	-- 		build = "make install_jsregexp",
	-- 	},
	-- 	"saadparwaiz1/cmp_luasnip", -- for autocompletion
	-- 	"rafamadriz/friendly-snippets", -- useful snippets
	-- 	"onsails/lspkind.nvim", -- vs-code like pictograms
	-- },
	-- config = function()
	-- 	local cmp = require("cmp")
	--
	-- 	local luasnip = require("luasnip")
	--
	-- 	local lspkind = require("lspkind")
	--
	-- 	-- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
	-- 	require("luasnip.loaders.from_vscode").lazy_load()
	--
	-- 	cmp.setup({
	-- 		completion = {
	-- 			completeopt = "menu,menuone,preview,noselect",
	-- 		},
	-- 		snippet = { -- configure how nvim-cmp interacts with snippet engine
	-- 			expand = function(args)
	-- 				luasnip.lsp_expand(args.body)
	-- 			end,
	-- 		},
	-- 		mapping = cmp.mapping.preset.insert({
	-- 			["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
	-- 			["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
	-- 			["<C-b>"] = cmp.mapping.scroll_docs(-4),
	-- 			["<C-f>"] = cmp.mapping.scroll_docs(4),
	-- 			["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
	-- 			["<C-e>"] = cmp.mapping.abort(), -- close completion window
	-- 			["<CR>"] = cmp.mapping.confirm({ select = false }),
	-- 		}),
	-- 		-- sources for autocompletion
	-- 		sources = cmp.config.sources({
	-- 			{ name = "nvim_lsp" },
	-- 			{ name = "luasnip" }, -- snippets
	-- 			{ name = "buffer" }, -- text within current buffer
	-- 			{ name = "path" }, -- file system paths
	-- 		}),
	--
	-- 		-- configure lspkind for vs-code like pictograms in completion menu
	-- 		formatting = {
	-- 			format = lspkind.cmp_format({
	-- 				maxwidth = 50,
	-- 				ellipsis_char = "...",
	-- 			}),
	-- 		},
	-- 	})
	-- end,

	{
		"saghen/blink.cmp",
		-- optional: provides snippets for the snippet source
		dependencies = { "rafamadriz/friendly-snippets", "mikavilpas/blink-ripgrep.nvim" },

		-- use a release tag to download pre-built binaries
		version = "*",
		-- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
		-- build = "cargo build --release",
		-- If you use nix, you can build from source using latest nightly rust with:
		-- build = 'nix run .#build-plugin',

		opts = {
			-- 'default' for mappings similar to built-in completion
			-- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
			-- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
			-- See the full "keymap" documentation for information on defining your own keymap.
			keymap = { preset = "default" },

			appearance = {
				-- Sets the fallback highlight groups to nvim-cmp's highlight groups
				-- Useful for when your theme doesn't support blink.cmp
				-- Will be removed in a future release
				use_nvim_cmp_as_default = true,
				-- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
				-- Adjusts spacing to ensure icons are aligned
				nerd_font_variant = "mono",
			},

			-- Default list of enabled providers defined so that you can extend it
			-- elsewhere in your config, without redefining it, due to `opts_extend`
			sources = {
				default = { "lsp", "path", "snippets", "buffer", "ripgrep" },
				providers = {
					-- 👇🏻👇🏻 add the ripgrep provider config below
					ripgrep = {
						module = "blink-ripgrep",
						name = "Ripgrep",
						-- the options below are optional, some default values are shown
						---@module "blink-ripgrep"
						---@type blink-ripgrep.Options
						opts = {
							-- For many options, see `rg --help` for an exact description of
							-- the values that ripgrep expects.

							-- the minimum length of the current word to start searching
							-- (if the word is shorter than this, the search will not start)
							prefix_min_len = 3,

							-- The number of lines to show around each match in the preview
							-- (documentation) window. For example, 5 means to show 5 lines
							-- before, then the match, and another 5 lines after the match.
							context_size = 5,

							-- The maximum file size of a file that ripgrep should include in
							-- its search. Useful when your project contains large files that
							-- might cause performance issues.
							-- Examples:
							-- "1024" (bytes by default), "200K", "1M", "1G", which will
							-- exclude files larger than that size.
							max_filesize = "1M",

							-- Specifies how to find the root of the project where the ripgrep
							-- search will start from. Accepts the same options as the marker
							-- given to `:h vim.fs.root()` which offers many possibilities for
							-- configuration. If none can be found, defaults to Neovim's cwd.
							--
							-- Examples:
							-- - ".git" (default)
							-- - { ".git", "package.json", ".root" }
							project_root_marker = ".git",

							-- The casing to use for the search in a format that ripgrep
							-- accepts. Defaults to "--ignore-case". See `rg --help` for all the
							-- available options ripgrep supports, but you can try
							-- "--case-sensitive" or "--smart-case".
							search_casing = "--ignore-case",

							-- (advanced) Any additional options you want to give to ripgrep.
							-- See `rg -h` for a list of all available options. Might be
							-- helpful in adjusting performance in specific situations.
							-- If you have an idea for a default, please open an issue!
							--
							-- Not everything will work (obviously).
							additional_rg_options = {},

							-- When a result is found for a file whose filetype does not have a
							-- treesitter parser installed, fall back to regex based highlighting
							-- that is bundled in Neovim.
							fallback_to_regex_highlighting = true,

							-- Show debug information in `:messages` that can help in
							-- diagnosing issues with the plugin.
							debug = false,
						},
						-- (optional) customize how the results are displayed. Many options
						-- are available - make sure your lua LSP is set up so you get
						-- autocompletion help
						transform_items = function(_, items)
							for _, item in ipairs(items) do
								-- example: append a description to easily distinguish rg results
								item.labelDetails = {
									description = "(rg)",
								}
							end
							return items
						end,
					},
				},
			},
		},
		opts_extend = { "sources.default" },
	},
}
