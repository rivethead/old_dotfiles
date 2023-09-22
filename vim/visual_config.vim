" ------------------------------------
" Colour schemes and all things visual
" ------------------------------------
set termguicolors

" activate Nord colour scheme
colorscheme nord

" change cursor and cursor line  when in insert mode
:autocmd InsertEnter * set cursorline
:autocmd InsertLeave * set nocursorline

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" reset the cursor on start (for older versions of vim, usually not required)
augroup myCmds
	au!
	autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END


