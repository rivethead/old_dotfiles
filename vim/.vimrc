" environment set up
let g:config_dir='~/.dotfiles/vim/'
let g:plugin_dir='~/.dotfiles/vim/plugins'


execute "set rtp^=" . g:config_dir
execute "set rtp^=" . g:plugin_dir


" invoke vim-plug to install the relevant plugins
" https://github.com/junegunn/vim-plug

call plug#begin(g:plugin_dir)

	" Which key, shortcut popup
	Plug 'liuchengxu/vim-which-key'

	" Nord theme
	Plug 'arcticicestudio/nord-vim'

	" Asynchronous Lint Engine
	Plug 'dense-analysis/ale'

	" Elixir language server
	Plug 'prabirshrestha/vim-lsp'

	" LSP settings
	Plug 'mattn/vim-lsp-settings'

	" general plugins
	Plug 'easymotion/vim-easymotion'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-repeat'
	Plug 'sheerun/vim-polyglot'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" Erlang plugins
	Plug 'vim-erlang/vim-erlang-omnicomplete' , { 'for': 'erlang' }
	Plug 'vim-erlang/vim-erlang-compiler'     , { 'for': 'erlang' }
	Plug 'vim-erlang/vim-erlang-runtime'      , { 'for': 'erlang' }

	" Elixir plugins
	Plug 'elixir-editors/vim-elixir' , { 'for': 'elixir' }
	Plug 'mhinz/vim-mix-format'      , { 'for': 'elixir' }

	
call plug#end()

" tell ALE how to lint and format Elixir code
let g:ale_fixers = { 'elixir': ['mix_format'] }


" remapping
inoremap kj <Esc> " insert mode -> normal mode

" --------------------------------------------
" # Load all additional configuration files
" --------------------------------------------
for config in split(glob(g:config_dir . '*.vim'), '\n')
	  exe 'source' config
endfor


