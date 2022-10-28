vim.cmd('filetype plugin indent on')

vim.g.completeopt = 'menu,menuone,noselect'
vim.g.mapleader = '<Space>'

vim.opt.termguicolors = true

vim.o.autoread = true
vim.o.autoindent = true
vim.o.backup = false
vim.o.clipboard = 'unnamedplus'
vim.o.cmdheight = 1
vim.o.conceallevel = 0
vim.o.colorcolumn = "80,100"
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.fileencoding = 'utf-8'
vim.o.hidden = true
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.incsearch = true
vim.o.pumheight = 10
vim.o.ruler = true
vim.o.scrolloff = 3
vim.o.shiftwidth = 2
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.showmode = false
vim.o.sidescrolloff = 5
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.spelllang = "en_us"
vim.o.softtabstop = 2
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.swapfile = false
vim.o.tabstop = 2
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.o.writebackup = false

vim.wo.number = true

vim.bo.autoindent = true
vim.bo.expandtab = true
vim.bo.shiftwidth = 2
vim.bo.tabstop = 2

vim.cmd('color gruvbox')
