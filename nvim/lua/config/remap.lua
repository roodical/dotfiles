vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>ee", vim.cmd.Explore)
vim.keymap.set("n", "<leader>ev", vim.cmd.Vexplore)
vim.keymap.set("n", "<leader>eh", vim.cmd.Sexplore)

vim.keymap.set("n", "<leader>bp", ":b#<CR>")

vim.keymap.set("n", "<leader>y", '"+y', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>p", '"+p', { noremap = true, silent = true })
