set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"Functionality Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-airline/vim-airline'

"Colors
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'

"PIZZA!
Plugin 'arithran/vim-pizza'
let g:vim_pizza_url = "https://www.dominos.com/en/pages/order/#/section/Food/category/AllEntrees/"
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
:set number
:syntax enable
"colorscheme molokai_dark

set list lcs=tab:»·,trail:·
set backspace=2
:augroup numbertoggle
:	autocmd!
:	autocmd BufEnter,FocusGained,InsertLeave * set norelativenumber
:	autocmd BufLeave,FocusLost,InsertEnter   * set relativenumber
:augroup END
:hi Whitespace ctermfg=DarkGray
:match Whitespace /\s/
set autoindent                  " Copy indent from current line when starting a new line.
"set smartindent                 " Do smart autoindenting when starting a new line.
"set smarttab                    " A <tab> in front of a line inserts spaces.
set shiftwidth=4                " Number of spaces to use for each step of autoindent.
"set softtabstop=4               " Number of spaces that a <tab> counts for while editing.
set tabstop=4                   " Number of spaces that a <tab> in the file counts for.
"set expandtab                   " Use the appropriate number of spaces to insert a <tab>.
set textwidth=80                " Make all lines 80 chars or less.
set wildmode=list:longest       " When more than one match, list all and look for the longest.
set wildmenu                    " Auto complete command line operations using <tab> and <ctr-p>/<ctr-n>.
set wildignore=*.o,*.obj,*~     " Filenames to ignore when auto completing.
set wildignore+=*vim/backups*   " (continued)
set wildignore+=*.pyc,*.pyo     " (continued)
set nowrap                      " Don't wrap lines.
set linebreak                   " Wrap lines when convenient. This doesn't effect text, only display."
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
