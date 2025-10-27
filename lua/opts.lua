vim.api.nvim_create_user_command(
    "EditInit",
    ":e ~/.config/nvim/init.lua",
    {}
)

vim.api.nvim_create_autocmd({"BufReadPost"},
{
    desc = "return cursor to where it was last time closing the file",
    pattern = "*",
    command = "silent! normal! g`\"zv",
})

vim.cmd("set notimeout")
vim.cmd("set wrap")
vim.cmd("set linebreak") -- [5/11/2025 14:29]
-- vim.cmd("set textwidth=70") -- [5/11/2025 14:35] autowrap when inserting
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set scrolloff=8")
-- close the gap between nvim's and tmux's status bars
-- EDIT: was intented to close the gap. what it actually
-- does is it keeps that bottom bar on but doesn't show the mode
-- message, like -- INSERT -- or -- VISUAL -- or whatever
-- well I guess it's time to look into noice.nvim and only then I can
-- get rid of this line cuz right now a lot of info is being displayed
-- there
vim.cmd("set noshowmode")
vim.diagnostic.config({ virtual_text = true })

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appear/become resolved
vim.cmd("set signcolumn=yes")

-- https://blog.chaitanyashahare.com/posts/how-to-make-nvim-backround-transparent/
-- How to make Nvim background transparent
vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]
