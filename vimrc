set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'fatih/vim-go'
Plugin 'vim-latex/vim-latex'


" Add all your plugins here (note older versions of Vundle used Bundle instead
" of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" standard python code editing
au BufNewFile,BufRead *.py,*.yml
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=79 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix |
	\ set colorcolumn=80 |
	\ highlight ColorColumn ctermbg=red

" something for full stack development
au BufNewFile,BufRead *.js,*.html,*.css
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set expandtab |
	\ set autoindent |
	\ set shiftwidth=2

" something for C programming
au BufNewFile,BufRead *.c,*.cpp,*.h,*.hpp
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set expandtab |
	\ set autoindent |
	\ set shiftwidth=4 |
	\ set colorcolumn=80 |
	\ highlight ColorColumn ctermbg=red

set encoding=utf-8

let python_highlight_all=1
syntax on

" hidy specific extensions in NERDTree
let NERDTreeIgnore = ['\.pyc$']

" standard python code editing
au BufNewFile,BufRead *.rst
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

set background=dark

" some kind of security
set exrc
set secure

" show first match for pattern
set incsearch

" set tags file to be in the current directory
set tags=tags,./tags,.tags
