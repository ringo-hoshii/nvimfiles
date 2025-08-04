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
vim.cmd("set textwidth=70") -- [5/11/2025 14:35] autowrap when inserting
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set scrolloff=8")
vim.diagnostic.config({ virtual_text = true })
