-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local status, lazy = pcall(require, "lazy")
if not status then
	return
end

lazy.setup({
	spec = {
		{ "catppuccin/nvim", priority = 1000 },

		{ "nvim-lua/plenary.nvim" }, -- lua functions that many plugins use

		{ "christoomey/vim-tmux-navigator" }, -- tmux & split window navigation

		{ "szw/vim-maximizer" }, -- maximizes and restores current window

		{ "tpope/vim-surround" }, -- add, delete, change surroundings (it's awesome)
		{ "inkarkat/vim-ReplaceWithRegister" }, -- replace with register contents using motion (gr + motion)

		{ "numToStr/Comment.nvim" },

		-- nvim-tree
		{ "nvim-tree/nvim-tree.lua" },

		-- icons
		{ "nvim-tree/nvim-web-devicons" },

		-- status line
		{ "nvim-lualine/lualine.nvim" },

		-- telescope fuzzy finding
		-- TODO: Take a look at why this does not actually make fzf-native.nvim
		{
			"nvim-telescope/telescope.nvim",
			dependencies = {
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				config = function()
					require("telescope").load_extension("fzf")
				end,
			},
		},
		-- autocompletion
		{ "hrsh7th/nvim-cmp" }, -- completion plugin
		{ "hrsh7th/cmp-buffer" }, -- source for text in buffer
		{ "hrsh7th/cmp-path" }, -- source for file system paths

		-- snippet
		{ "L3MON4D3/LuaSnip" }, -- snippet engine
		{ "saadparwaiz1/cmp_luasnip" }, -- for autocompletion
		{ "rafamadriz/friendly-snippets" }, -- useful snippets

		-- managing & installing lsp server
		{ "williamboman/mason.nvim" }, -- in charge of managing lsp servers, linters & formatters
		{ "williamboman/mason-lspconfig.nvim" }, -- bridges gap b/w mason & lspconfig

		-- configuring lsp servers
		{ "neovim/nvim-lspconfig" }, -- easily configure language servers
		{ "hrsh7th/cmp-nvim-lsp" }, -- for autocompletion
		{
			"glepnir/lspsaga.nvim",
			branch = "main",
		}, -- enhanced lsp uis
		{ "jose-elias-alvarez/typescript.nvim" }, -- additional functionality for typescript server (e.g. rename file & update imports)
		{ "onsails/lspkind.nvim" }, -- vs-code like icons for autocompletion

		-- formatting & linting
		{ "jose-elias-alvarez/null-ls.nvim" }, -- configure formatters & linters
		{ "jayp0521/mason-null-ls.nvim" }, -- bridges gap b/w mason & null-ls

		-- treesitter configuration
		{
			"nvim-treesitter/nvim-treesitter",
			lazy = false,
			run = function()
				local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
				ts_update()
			end,
		},

		-- auto closing
		{ "windwp/nvim-autopairs" }, -- autoclose parens, brackets, quotes, etc...
		{ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }, -- autoclose tags

		-- git integration
		{ "lewis6991/gitsigns.nvim" }, -- show line modifications on left hand side

		{ "akinsho/toggleterm.nvim", version = "*", config = true },
	},
})
