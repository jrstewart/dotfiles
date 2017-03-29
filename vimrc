"
" Plug setup
"

call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'christoomey/vim-run-interactive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'flazz/vim-colorschemes'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'hail2u/vim-css3-syntax'
Plug 'lambdatoast/elm.vim'
Plug 'mileszs/ack.vim'
Plug 'othree/html5.vim'
Plug 'rust-lang/rust.vim'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" Plug 'slashmili/alchemist.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
" Plug 'Valloric/YouCompleteMe'
Plug 'vim-scripts/nginx.vim'

call plug#end()


"
" Basic settings
"

let mapleader = " "

set autoread
set backspace=2
set background=dark
set cc=80,100
set cursorline
set encoding=utf-8
set history=1024
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list listchars=tab:»·,trail:·,nbsp:·
set mouse=
set nobackup
set nojoinspaces
set noswapfile
set nowritebackup
set numberwidth=5
set number
set ruler
set scrolloff=5
set showcmd
set smartcase
set spelllang=en_us
set splitbelow
set splitright
set tags+=.tags/tags
set visualbell
set wildmenu
set wildmode=list:longest

" soft tabs with 2 space indent
set expandtab
set shiftwidth=2
set tabstop=2
set shiftround

" Use code folding
" Remove underline in folded lines
set foldmethod=marker
set foldlevelstart=2
set fillchars="fold: "
hi Folded term=NONE cterm=NONE gui=NONE ctermbg=NONE

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

filetype plugin indent on

" When the type of shell script is /bin/sh, assume a POSIX-compatible
" shell for syntax highlighting purposes.
let g:is_posix = 1

colorscheme molokai

" MacVim settings
if has("gui_running")
  set guifont=PragmataPro:h16
  set guioptions-=T
  set guioptions-=r
  set guioptions-=R
  set guioptions-=l
  set guioptions-=L
  set macligatures
endif

" Use Ag (The Silver Searcher) when available
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ackprg='ag --vimgrep'
  let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'
  let g:ctrlp_use_caching = 0
endif

" Run commands that require an interactive shell
nnoremap <Leader>r :RunInInteractiveShell<space>

" Split Pane Navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Visual linewise up and down by default (and gj and gk to go quicker)
noremap j gj
noremap k gk
noremap gj 5j
noremap gk 5k

" When jump to match also center screen
noremap n nzz
noremap N Nzz

" nnoremap <f5> :!ctags -R -n --exclude=.git --exclude=bin<CR>

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
set wildignore+=*/tmp/*,*/_build/*,*.so,*.swp,*.zip
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_eruby_ruby_quiet_messages =
  \ {"regex": "possibly useless use of a variable in void context"}

" UltiSnips
inoremap <c-x><c-k> <nop>
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsListSnippets='<c-l>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

" Filetype specific settings
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufRead,BufNewFile *.md setlocal textwidth=80 cc=80
autocmd BufRead,BufNewFile *.twig set filetype=jinja
autocmd Filetype gitcommit setlocal spell textwidth=72

" augroup VimCSS3Syntax
"   autocmd!
"   autocmd FileType css setlocal iskeyword+=-
" augroup END
