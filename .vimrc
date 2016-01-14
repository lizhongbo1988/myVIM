set nocompatible
filetype off


set encoding=utf-8
"set base config
set nu
set laststatus=2
set ignorecase
set cul
set cuc
set shortmess=atI
set ruler
set showcmd
set scrolloff=3
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set history=1000
set hlsearch
set incsearch
set langmenu=zh_CN.UTF-8
set helplang=cn
set iskeyword+=_,$,@,%,#,-

set autowrite
set autoread
set noeb
set confirm
set noswapfile
set nobackup
set linespace=0
set showmatch
set matchtime=1
"set color 
color molokai
let g:molokai_original = 1
let g:rehash256 = 1
set t_Co=256
set background=dark


"install plugin
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Bundle 'gmarik/vundle'
Bundle 'c.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'fatih/vim-go'
"Bundle 'scrooloose/nerdtree'
"Bundle 'Xuyuanp/nerdtree-git-plugin'
Bundle 'tagbar'
Bundle 'DoxygenToolkit.vim'
call vundle#end()

filetype plugin indent on

set autoindent

autocmd FileType c,h,cpp,go,py nnoremap <F8> :TagbarToggle<CR>
"set youcompleteMe config
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_string = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"nnoremap <silent> <F3> :NERDTree<CR>
set runtimepath^=~/.vim/bundle/ctrlp.vim
