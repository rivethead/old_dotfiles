set nocompatible
filetype off

" vundle configuration

" set the runtime path to include Vundle and initialise
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" == Python related ==
Plugin 'Vimjas/vim-python-pep8-indent'

" == General development ==
Plugin 'majutsushi/tagbar'
Plugin 'MattesGroeger/vim-bookmarks'
" Plugin 'nathanaelkane/vim-indent-guides'

" == Other plugins ==
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()

filetype plugin indent on

" end vundle configuration

" remap leader to space
:let mapleader = "<Space>"

" unicode
set encoding=utf8

" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show the matching part of the pair for [], {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" enable folding
set foldmethod=indent
set foldlevel=99

" NERDTree
"   ==> open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree
"   ==> open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"   ==> open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"   ==> close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"   ==> Map NERDTree to ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Tagbar
"   ==> Map TagBat to F12
nmap <F12> :TagbarToggle<CR>

" Bookmarks
"   ==> stop NERDTree and Bookmarks shortcut clashes
let g:bookmark_no_default_key_mappings = 1
"   ==> change the format of bookmarks
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1

" indent guides
let g:indent_guides_enable_on_vim_startup = 1


