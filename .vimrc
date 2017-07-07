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
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
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
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
 
".vimrc
syntax on

"colors
set t_Co=256
let g:molokai_original=1
let g:rehash256=1
colorscheme molokai
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
set showcmd					" display incomplete commands

" taglist
let Tlist_Show_One_File = 1 
let Tlist_Exit_OnlyWindow = 1
nnoremap <silent> <F11> :TlistToggle<CR>

" NERD Tree
let NERDChristmasTree = 1
let NERDTreeAutoCenter = 1
let NERDTreeMouseMode = 2
let NERDTreeShowBookmarks = 1
let NERDTreeShowFiles = 1
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 1
let NERDTreeShowWinSize = 31
let NERDTreeDirArrows=0
nnoremap <silent> <F12> :NERDTreeToggle<CR>
autocmd bufenter * if(winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"NERD_commenter
let NERDShutUp = 1
let NERDSpaceDelims = 1
let NERDCompactSexyComs = 1
map <C-J> <leader>c<space><Esc><Down>

"ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window_buttom = 1
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_max_height = 15
let g:ctrlp_mruf_max = 500 
let g:ctrlp_follow_symlinks = 1
