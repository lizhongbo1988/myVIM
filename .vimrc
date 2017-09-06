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
set clipboard+=unnamed
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
"colorscheme solarized
let g:molokai_original = 1
set background=dark
"colorscheme solarized
"let g:solarized_termclolors=256
let g:rehash256 = 1
set t_Co=256


"install plugin
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'c.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'tagbar'
Plugin 'DoxygenToolkit.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'w0rp/ale'   
call vundle#end()

filetype plugin indent on

set autoindent

autocmd FileType c,h,cpp,go,py nnoremap <F8> :TagbarToggle<CR>
autocmd FileType c,cpp,objc,objcpp nnoremap <Leader>jd :YcmCompleter GoToDefinition<CR>
inoremap <leader>; <C-x><C-o>

"python3"
let g:ycm_python_binary_path = '/usr/bin/python3'

"set youcompleteMe config
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_string = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0

"set doxygen 
let g:DoxygenToolkit_briefTag_pre="@函数描述  " 
let g:DoxygenToolkit_paramTag_pre="@参数      " 
let g:DoxygenToolkit_returnTag="@返回      " 
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------" 
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------" 
let g:DoxygenToolkit_authorName="lizhongbo" 
"set NERDTree
nnoremap <silent> <F3> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc()==0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"set powerline
let g:Powerline_symbols = 'fancy'

set runtimepath^=~/.vim/bundle/ctrlp.vim
