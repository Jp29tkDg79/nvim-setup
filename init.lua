vim.scriptencoding = 'utf-8'

-- packer settings
require("Jp29tkDg79.plugins-setup")

-- NeoVim settings
require("Jp29tkDg79.core.globals")
require("Jp29tkDg79.core.keymaps")
require("Jp29tkDg79.core.options")
require("Jp29tkDg79.core.colorscheme")

-- plugins
require("Jp29tkDg79.plugins.lualine")
require("Jp29tkDg79.plugins.web-devicons")
require("Jp29tkDg79.plugins.bufferline")
require("Jp29tkDg79.plugins.treesitter")
require("Jp29tkDg79.plugins.telescope")
require("Jp29tkDg79.plugins.nvm-cmp")
require("Jp29tkDg79.plugins.autopairs")
require("Jp29tkDg79.plugins.lsp.mason")
require("Jp29tkDg79.plugins.lsp.lspconfig")
require("Jp29tkDg79.plugins.lsp.lspsaga")
require("Jp29tkDg79.plugins.lsp.null-ls")
require("Jp29tkDg79.plugins.gitsigns")
require("Jp29tkDg79.plugins.colorizer")
require("Jp29tkDg79.plugins.lsp.lspkind")
require("Jp29tkDg79.plugins.comment")
require("Jp29tkDg79.plugins.indent-blankline")
require("Jp29tkDg79.plugins.todo-comments")
require("Jp29tkDg79.plugins.terminal")
