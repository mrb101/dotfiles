set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" Elm Plugin
" Plugin 'lambdatoast/elm.vim'
Plugin 'ElmCast/elm-vim'
" Git Integration plugin
Plugin 'tpope/vim-fugitive'
" Syntax Checking
Plugin 'scrooloose/syntastic'
" PEP8 checking
Plugin 'nvie/vim-flake8'
" NERDTree file manager
Plugin 'scrooloose/nerdtree'
" File jumping
Plugin 'kien/ctrlp.vim'
" Python indent plugin
Plugin 'vim-scripts/indentpython.vim'
" Change surroundings
Plugin 'tpope/vim-surround'
" Airline status line
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Git indication in the gutter
Plugin 'airblade/vim-gitgutter'
" ReactJS JSX
Plugin 'mxw/vim-jsx'
" JavaScript Plugin
Plugin 'pangloss/vim-javascript'
" Imporovde hightlight for JS
Plugin 'nathanaelkane/vim-indent-guides'
" ES6 Syntax
Plugin 'isRuslan/vim-es6'
" Auto surrounding closing
Plugin 'Raimondi/delimitMate'
" JSON Syntax
Plugin 'elzr/vim-json'
" GoLang Plugin
Plugin 'fatih/vim-go'
" You Complete Me Auto complete Plugin
Plugin 'Valloric/YouCompleteMe'
" Snippit Manager
Plugin 'SirVer/ultisnips'
" Snippits to use in Snippit manager
Plugin 'honza/vim-snippets'

""" Personal Modification
filetype plugin indent on
let python_highlight_all=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree [*.pyc]
let mapleader = ","

" Elm Settings
let g:elm_format_autosave = 1

" JavaScript Plugin configurations
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
set foldmethod=syntax

"Airline Theme
let g:airline_theme='bubblegum'

" YCM settings
let g:ycm_key_list_stop_completion = ['<C-y>']
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_use_ultisnips_completer = 1

" Syntatic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

" UltiSinps settings
let g:UltiSnipsExpandTrigger='<C-E>'
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"

" highlight tabs as --
set listchars=tab:--

" NERDTree shortcut
map <C-t> :NERDTreeToggle<CR>

" Cursor Highlight
set cursorline
set cursorcolumn
highlight CursorLine cterm=bold ctermbg=black
highlight CursorColumn cterm=bold ctermbg=black


" Split buffers
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

set nu "Set line numbers

" Flag unnecessery white spaces.
highlight BadWhitespace ctermbg=red

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" Text Wrap
autocmd BufReadPre *.py setlocal textwidth=99
autocmd BufReadPre *.js setlocal textwidth=0
autocmd BufReadPre *.html setlocal textwidth=0

set colorcolumn=90
autocmd BufReadPre *.py highlight ColorColumn ctermbg=red

" Allow JSX in normal JS files
let g:jsx_ext_required = 0 

" Airline Fonts
let g:airline_powerline_fonts = 1

set encoding=utf-8
set laststatus=2
syntax on

" All of your Plugins must be added before the following line
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
