set nocompatible 
filetype off

" vundle configuration

" set the runtime path to include Vundle and initialise
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

call vundle#end()

filetype plugin indent on

" end vundle configuration

" remap leader to space
:let mapleader = "\<Space>"

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

" show the visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [], {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" enable folding
set foldmethod=indent
set foldlevel=99
