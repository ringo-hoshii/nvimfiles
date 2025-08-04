vim.cmd("nnoremap j gj")
vim.cmd("nnoremap k gk")

vim.cmd("nnoremap mj 0")
vim.cmd("nnoremap M gM")
vim.cmd("nnoremap mm gM")
vim.cmd("nnoremap mk $")
vim.cmd("nnoremap gm M")
vim.cmd("nnoremap gM gm") -- this allows me to go the middle of the line easier [5/8/2025 6:33]

vim.cmd("inoremap jj <Esc>") -- idk if ill like it but it's better than escape ig

vim.cmd("nnoremap <Esc> :noh<CR>")

vim.cmd("nnoremap p p==")
vim.cmd("nnoremap P P==")

vim.cmd("noremap <M-q> :lua MiniFiles.open()<CR>")

vim.g.mapleader = " "
vim.cmd("nnoremap <Space> <Nop>")

-- NAVIGATION LEADER COMMANDS
vim.cmd("nmap <leader>j 10j")
vim.cmd("nmap <leader>k 10k")
-- vim.cmd("nmap <leader>d :lua vim.diagnostic.open")
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)


-- EDITING LEADER COMMANDS
vim.cmd("nmap <leader>a A") -- to make life easier
vim.cmd("nmap <leader>s S")
vim.cmd("nmap <leader>i I")

vim.cmd("nmap <leader>o i<Enter>")

vim.cmd("nmap <leader>; <Esc>A {<CR>")

vim.cmd("nmap <leader><leader> <Esc>")

vim.cmd("nmap <leader>t I[<C-R>=strftime('%-m/%-d/%-Y %-H:%M')<CR>]<Esc>")



-- file leader commands
vim.cmd("nmap <leader>w :w<CR>")
vim.cmd("nmap <leader>q :q<CR>")
vim.cmd("nmap <leader>e :wq<CR>") -- [7/30/2025 23:45] WHHATTT?????? I HAD THIS KEYBINDING!!!!?????????????
                                  -- WWHHHHATTTTTTTTTTTTTTTTTT!!!!!!!!!!?????????????????
				  -- FFS I pressed it accidentally
				  -- (cuz I was configuring LSP and
				  -- someone said something about
				  -- <leader>e for viewing errors and
				  -- then I tried it myself and it
				  -- fucking closed Vim and I thought
				  -- that's the default)
vim.cmd("nmap <leader>Q :q!<CR>")
vim.cmd("nmap <leader>W :wq<CR>")

vim.cmd("nmap <leader>h <cmd>:Telescope<CR>")
