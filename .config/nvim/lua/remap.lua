vim.cmd("nnoremap ; :")
vim.cmd("vnoremap ; :")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")

vim.opt.title = true
vim.opt.compatible = false
vim.opt.mouse = 'a'
vim.opt.fileencoding = "utf-8"
vim.opt.showtabline = 2
vim.opt.laststatus = 2
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrap = false
vim.opt.showcmd = true
vim.opt.cmdheight = 2
vim.opt.clipboard = unnamedplus

vim.g.mapleader = " "

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

