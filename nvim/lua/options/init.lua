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


-- local opt = vim.opt

--- Basic settings
-- opt.joinspaces = false
-- opt.laststatus = 2
-- opt.list listchars=tab:??,trail:?,nbsp:?
-- opt.list listchars=tab:??,trail:?,nbsp:?,extends:?,precedes:?
-- opt.mouse=
-- opt.number = true
-- opt.omnifunc=syntaxcomplete#Complete
-- opt.ruler = true
-- opt.scrolloff = 5
-- opt.shiftwidth = 2
-- opt.showcmd = true
-- opt.smartcase = true
-- opt.smartindent = true
-- opt.spelllang = "en_us"
-- opt.splitbelow = true
-- opt.splitright = true
-- opt.swapfile = false
-- opt.tabstop = 2
-- opt.tags+=.tags/tags
-- opt.title
-- opt.visualbell
-- opt.wildignore+=*.o,*~,**/.git/**,**/tmp/**,**/node_modules/**,**/_build/**,**/deps/**,**/target/**,**/uploads/**
-- opt.wildmenu
-- opt.wildmode=list:longest
-- opt.writebackup = false

--- Use code folding
--- Remove underline in folded lines
-- set foldmethod=marker
-- set foldlevelstart=2
-- set fillchars="fold: "
-- hi Folded term=NONE cterm=NONE gui=NONE ctermbg=NONE
