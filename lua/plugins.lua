---- Load plugins ----
local Plug = vim.fn["plug#"]
vim.call("plug#begin")

Plug 'kylechui/nvim-surround'
Plug 'echasnovski/mini.nvim'
Plug 'tpope/vim-sensible'
Plug 'numToStr/Comment.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug('nvim-telescope/telescope.nvim', {['tag'] = '0.1.8'})

vim.call("plug#end")


---- Set plugins up ----
require("nvim-surround").setup({})
require("mini.pairs").setup({})
require("mini.icons").setup({})
require("mini.statusline").setup({})
require("mini.indentscope").setup({})
require("plugins.mini_files")
-- require("plugins.mini_animate")
-- require("plugins.mini_cursorword")
require("Comment").setup()
require("cmp").setup()
vim.lsp.enable("ts_ls")
require("plugins.lua_ls")
require("nvim-web-devicons").setup({})

