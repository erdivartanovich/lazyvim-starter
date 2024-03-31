-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- custom c-d c-u motion
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- always center search highlight cursor
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Better multple lines movement
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Better lines join
vim.keymap.set("n", "J", "mzJ`z")

-- Better paste
vim.keymap.set("x", "<leader>p", '"_dP')

-- Better yanking
vim.keymap.set("n", "y", '"+y')
vim.keymap.set("v", "y", '"+y')
vim.keymap.set("n", "Y", '"+y')

-- Quick SED
vim.keymap.set("n", "<leader>S", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]], { desc = "SED" })

-- Quick :G
vim.keymap.set("n", "<leader>G", [[:g/<C-r><C-w>/]], { desc = "Global EX" })
vim.keymap.set("n", "<leader>!", [[:!g/<C-r><C-w>/]], { desc = "!Global EX" })

-- Quick quit
vim.keymap.set("n", "Z", ":wq!<CR>", { silent = true })
vim.keymap.set("n", "Q", ":bdelete<CR>", { silent = true })

-- Tab/BufferLine
vim.keymap.set("n", "<M-H>", ":BufferLineMovePrev<CR>", { silent = true })
vim.keymap.set("n", "<M-L>", ":BufferLineMoveNext<CR>", { silent = true })
