set nocompatible
syntax on
" colorscheme molokai
" set background=dark

set number
set ruler					" show the cursor position all the time
set tabstop=4				" The width of a TAB is set to 4
set softtabstop=4			" Sets the number of columns for a TAB
set shiftwidth=4			" Indents will have a width of 4
set autoindent				" always set autoindenting on
" set smartindent			" set smartindent

set cindent					" set autoindenting on with c and c++ style
" options for cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s

set history=50				" keep 50 lines of command line history
set nobackup				" no backup files
set nowritebackup			" only in case you don't want a backup file while editing
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" to highlight the matching bracket or brace when the cursor is over one. 
set showmatch				
set incsearch				" do incremental searching
set hlsearch				" highlighting the searching

filetype plugin indent on

set showcmd					" display incomplete commands
