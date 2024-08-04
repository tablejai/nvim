-- general
require("base.core.options")
require("base.core.keymaps")
require("base.core.colorscheme")

-- Lazy.nvim plugins
require("base.lazy")

-- Packer plugins
require("base.plugins-setup")
require("base.plugins.comment")
require("base.plugins.nvim-tree")
require("base.plugins.lualine")
require("base.plugins.telescope")
require("base.plugins.nvim-cmp")
require("base.plugins.lsp.mason")
require("base.plugins.lsp.lspconfig")
require("base.plugins.lsp.lspsaga")
require("base.plugins.lsp.null-ls")
require("base.plugins.autopairs")
require("base.plugins.treesitter")
require("base.plugins.gitsigns")
