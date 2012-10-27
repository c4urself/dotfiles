" dispense with old vi compatibility attempts
set nocompatible

" call pathogen so all bundles can be installed in the .vim/bundles directory
call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" mapleader key is now the comma
let mapleader=","

" easily edit and save your .vimrc (Derek Wyatt)
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" hide buffers
set hidden

" autodetect filetype and load relevant plugins and indentation
filetype plugin indent on

set number     		" show line numbers
set numberwidth=5   " numbering line width
"set relativenumber  " show line numbers relative to cursor
set showmatch 		" show matching parenthesis

" whitespace stuff
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
autocmd BufWritePre *.js :%s/\s\+$//e

" search stuff
set hlsearch
set incsearch
set ignorecase
set smartcase

" easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" skip shift
nnoremap ; :

" insert line above without insert mode
map O O<ESC>

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

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <leader>n :NERDTreeToggle<CR>

" JSHint
map <leader>js :JSHint<CR>

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" add django template
au BufNewFile,BufRead *.tmpl set ft=htmldjango
au BufNewFile,BufRead *.html set ft=htmldjango
au BufNewFile,BufRead *.template set ft=htmldjango

" add less syntax highlighting
au BufNewFile,BufRead *.less set ft=less

colorscheme molokai

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

