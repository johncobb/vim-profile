
"***************************************
" Vundle SETTINGS
"***************************************
set nocompatible                
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tpope/vim-commentary'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'jnurmine/Zenburn'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes.git'
Plugin 'jistr/vim-nerdtree-tabs'
call vundle#end()
filetype plugin indent on

:set backspace=indent,eol,start

:let mapleader = ","

"***************************************
" NERDTREE
"***************************************
:map <leader>n <plug>NERDTreeTabsToggle<CR>


"***************************************
" OTHER SETTINGS
"***************************************
" Required for changes to flow through in Docker containers
" http://unix.stackexchange.com/questions/36467/why-inode-value-changes-when-we-edit-in-vi-editor
:set backupcopy=yes

" Look and Feel
:syntax enable
:set number
:colorscheme candyman 
:set laststatus=2

" Python stuff
:let python_highlight_all=1
:let NERDTreeIgnore=['\.pyc$','\~$']	" ignore files in NERDTree
au BufNewFile,BufRead *.py 
    \ set tabstop=4 		|
    \ set softtabstop=4		|
    \ set shiftwidth=4		|
    \ set textwidth=79		|
    \ set expandtab		|
    \ set autoindent		|
    \ set fileformat=unix

" Web stuff
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2		|
    \ set softtabstop=2		|
    \ set shiftwidth=2		


:set clipboard=unnamed

:set encoding=utf-8

:set splitbelow
:set splitright

:nnoremap <C-J> <C-W><C-J>
:nnoremap <C-K> <C-W><C-K>
:nnoremap <C-L> <C-W><C-L>
:nnoremap <C-H> <C-W><C-H>

:inoremap jk <esc>l
:inoremap kj <esc>l


