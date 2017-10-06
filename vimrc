"
" Plug setup
"

call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'

Plug 'c-brenn/phoenix.vim'

Plug 'christoomey/vim-run-interactive'
nnoremap <Leader>r :RunInInteractiveShell<space>

Plug 'ctrlpvim/ctrlp.vim'
if executable('ag')
  let g:ctrlp_user_command = 'ag -Q -l --nocolor -g "" %s'
  let g:ctrlp_use_caching = 0
endif

Plug 'elixir-lang/vim-elixir'

Plug 'flazz/vim-colorschemes'

Plug 'Glench/Vim-Jinja2-Syntax'

Plug 'hail2u/vim-css3-syntax'

Plug 'ElmCast/elm-vim'
let g:elm_format_autosave = 1
let g:elm_detailed_complete = 1
let g:elm_syntastic_show_warnings = 1
let g:elm_format_fail_silently = 1
let g:elm_make_show_warnings = 1
" Add default command keybindings
" - <Leader>m  Compile the current buffer.
" - <Leader>b  Compile the Main.elm file in the project.
" - <Leader>t  Runs the tests of the current buffer or 'tests/TestRunner'.
" - <Leader>r  Opens an elm repl in a subprocess.
" - <Leader>e  Shows the detail of the current error or warning.
" - <Leader>d  Shows the type and docs for the word under the cursor.
" - <Leader>w  Opens the docs web page for the word under the cursor.
let g:elm_setup_keybindings = 1

Plug 'mileszs/ack.vim'
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

Plug 'othree/html5.vim'

Plug 'powerman/vim-plugin-AnsiEsc'

Plug 'rust-lang/rust.vim'

Plug 'scrooloose/syntastic'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_elixir_checker = 1
let g:syntastic_elixir_checkers = ['elixir']
let g:syntastic_elm_checkers = ['elm_make']
let g:syntastic_eruby_ruby_quiet_messages = {"regex": "possibly useless use of a variable in void context"}
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~ '\s'
endfunction"}}}

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
inoremap <c-x><c-k> <nop>
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsListSnippets='<c-l>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

Plug 'slashmili/alchemist.vim'
let g:alchemist_tag_disable = 1

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-projectionist'

Plug 'tpope/vim-surround'

" Plug 'Valloric/YouCompleteMe'
Plug 'Shougo/neocomplete'
let g:neocomplete#enable_at_startup = 1

Plug 'vim-scripts/nginx.vim'

Plug 'wlangstroth/vim-racket'

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
set smartindent
set spelllang=en_us
set splitbelow
set splitright
set tags+=.tags/tags
set title
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
set background=dark
syntax on
filetype plugin indent on
colorscheme gruvbox
set omnifunc=syntaxcomplete#Complete

" When the type of shell script is /bin/sh, assume a POSIX-compatible
" shell for syntax highlighting purposes.
let g:is_posix = 1

" MacVim settings
if has("gui_running")
  set guifont=PragmataPro:h16
  set guioptions-=T
  set guioptions-=r
  set guioptions-=R
  set guioptions-=l
  set guioptions-=L
  set macthinstrokes
  set macligatures
endif

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

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Filetype specific settings
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufRead,BufNewFile *.md setlocal textwidth=80 cc=80
autocmd BufRead,BufNewFile *.twig set filetype=jinja
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd Filetype elm setlocal tabstop=4 softtabstop=4 shiftwidth=4
