-- some changes blah blah blah
-- some changes again
-- and some more
-- i actually don't know what's better:
-- <leader>W or <leader>e for saving and quitting
--
-- bootstrap lazy.nvim, LazyVim and your plugins
-- require("config.lazy")

-- 1. Set keymaps
-- 2. Load plugins
-- 3. Set plugins up

vim.g.mapleader = " "
-- vim.cmd("set timeoutlen=500")
vim.cmd("nnoremap <Space> <Nop>")


-- navigating leader commands
vim.cmd("nmap <leader>j 10j")
vim.cmd("nmap <leader>k 10k")


-- editing leader commands
vim.cmd("inoremap jj <Esc>") -- idk if ill like it but it's better than escape ig
vim.cmd("inoremap qq <Esc>")

vim.cmd("nmap <leader>a A") -- to make life easier
vim.cmd("nmap <leader>s S") 
vim.cmd("nmap <leader>i I") 

vim.cmd("nmap <leader>o i<Enter>")

vim.cmd("nmap <leader>; <Esc>A {<CR>")

vim.cmd("nmap <leader><leader> <Esc>")


-- file leader commands
vim.cmd("nmap <leader>w :w<CR>")
vim.cmd("nmap <leader>q :q<CR>")
vim.cmd("nmap <leader>e :wq<CR>")
vim.cmd("nmap <leader>Q :q!<CR>")
vim.cmd("nmap <leader>W :wq<CR>")



-- so when im just writing it actually kinda looks weird because of this waiting "animation"
-- fuck why is it so fucking satisfying now?!
-- im becoming more addictive

vim.cmd("set wrap")
vim.cmd("set shiftwidth=4")
-- vim.cmd("set relativenumber")
vim.cmd("set number")
vim.cmd("set scrolloff=8")

vim.cmd("nnoremap <Esc> :noh<CR>")
vim.cmd("nnoremap <C-s> :w<CR>")

vim.cmd("nnoremap p p==")
vim.cmd("nnoremap P P==")

-- vim.cmd("inoremap ( ()<Left>")
-- vim.cmd("inoremap \" \"\"<Left>")
-- vim.cmd("inoremap ' ''<Left>")
-- vim.cmd("inoremap { {}<Left>")
-- vim.cmd("inoremap [ []<Left>")

-- vim.cmd("nnoremap y \"ay")
-- vim.cmd("nnoremap p \"ap")

-- vim.cmd("vmap gc gcgv==")

vim.cmd("noremap <M-q> :lua MiniFiles.open()<cr>")
-- vim.cmd("nnoremap <Esc> :lua MiniFiles.close()<cr>")





local Plug = vim.fn["plug#"]
vim.call("plug#begin")

Plug 'kylechui/nvim-surround'
Plug 'echasnovski/mini.nvim'
Plug 'tpope/vim-sensible'

vim.call("plug#end")

package.path = package.path .. ";" .. "C:/Users/admin/AppData/Local/nvim-data/plugged/nvim-surround/lua/?.lua"
package.path = package.path .. ";" .. "C:/Users/admin/AppData/Local/nvim-data/plugged/nvim-surround/lua/?/init.lua"
package.path = package.path .. ";" .. "C:/Users/admin/AppData/Local/nvim-data/plugged/mini.nvim/lua/?"

require("nvim-surround").setup({})
require("mini.pairs").setup({})
local animate = require("mini.animate")
animate.setup({
    cursor = {
	timing = animate.gen_timing.linear({ duration = 30, unit = 'total' })
    }
})
require("mini.icons").setup({})
-- require("mini.cursorword").setup({
--     delay = 0
-- })
require("mini.statusline").setup({})
require("mini.indentscope").setup({})
require("mini.files").setup({
    mapping = {
	go_in = "L",
	go_in_plus = "l"
    }
})
