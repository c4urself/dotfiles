" dispense with old vi compatibility attempts
set nocompatible

" required for Vundle, note turning it on then off due to non-zero exit status
filetype on
filetype off        

" Pathogen
"call pathogen#infect()
"call pathogen#helptags()
"call pathogen#runtime_append_all_bundles()

" Vundle (alternative to Pathogen)
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Bundles which vundle automatically tracks/installs
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-surround'
Plugin 'wincent/Command-T'
Plugin 'walm/jshint.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'altercation/vim-colors-solarized'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'kchmck/vim-coffee-script'
Plugin 'klen/python-mode'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdtree'
Plugin 'derekwyatt/vim-scala'

call vundle#end()
filetype plugin ident on

" set path to js-beautify file
let g:jsbeautify = {'indent_size': 4, 'indent_char': ' '}
let g:htmlbeautify = {'indent_size': 4, 'indent_char': ' ', 'max_char': 78, 'brace_style': 'expand', 'unformatted': ['a', 'sub', 'sup', 'b', 'i', 'u']}
let g:cssbeautify = {'indent_size': 4, 'indent_char': ' '}


" mapleader key is now the comma
let mapleader=","

" easily edit and save your .vimrc (Derek Wyatt)
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" toggle indent guides
nmap <silent> <Leader>ig <Plug>IndentGuidesToggle

" hide buffers
set hidden
set so=7

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Show a line at 81 to follow PEP and standards of limitig text to 80 cols
set colorcolumn=120

" Indent guide colors
let g:indent_guides_color_change_percent = 5
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

" autodetect filetype and load relevant plugins and indentation
filetype plugin indent on

set number           " show line numbers
set numberwidth=5    " numbering line width
"set relativenumber  " show line numbers relative to cursor
set showmatch        " show matching parenthesis

" whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab

autocmd BufWritePre * :%s/\s\+$//e

" search stuff
set hlsearch
set incsearch
set ignorecase
set smartcase

set ai "Auto indent
"set si "Smart indent
let g:js_indent_log = 1

" easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" tab for autocomplete
imap <`> <C-P>

" skip shift
nnoremap ; :

" make command-t search for 20000 instead of default 10000
let CommandTMaxFiles = 20000

" insert line above without insert mode
map O O<ESC>

" json prettifier
map <leader>jt  <Esc>:%!python -m json.tool<CR>

" force use of vim move keys
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>

" encoding
set encoding=utf-8

" textmate symbols
set listchars=tab:▸\ ,eol:¬
set list

" directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup
set noswapfile

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
" Turn NERDTree on/off with ,n
map <leader>n :NERDTreeToggle<CR>
" Show dotfiles
let NERDTreeShowHidden=1

" JSHint
map <leader>js :JSHint<CR>

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" add django template
au BufNewFile,BufRead *.tmpl set ft=htmldjango
au BufNewFile,BufRead *.html set ft=html
au BufNewFile,BufRead *.template set ft=htmldjango

" Python mode stuff (testing for now)
let g:pymode_folding = 0
let g:pymode_lint_checker = "pyflakes"

" add less syntax highlighting
au BufNewFile,BufRead *.less set ft=less

syntax enable
set background=dark
colorscheme oceandeep
set anti

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

