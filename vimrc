set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'preservim/NERDTree'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
"Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'tribela/vim-transparent'

" autocompletion
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'

call vundle#end()

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set incsearch
set ignorecase
set smartcase
set autoread
set autowrite
set list
set listchars=tab:»\ ,trail:·,eol:$

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" Activate the mouse
set mouse=a

" Activate red cursor 80 char
set cc=80

filetype plugin indent on
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
"autocmd Filetype make setlocal noexpantab

" autocomplete list options
set completeopt=longest,menuone,popuphidden
set completepopup=highlight:Pmenu,border:off
" use tab for autocomplete suggestions
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

"NERDTree------
noremap <C-T> :NERDTreeToggle <cr>
let NERDTreeShowHidden=1 "Show secret files
let NERDTreeQuitOnOpen=1 "Quit NERDTree when open file
"-------------
"call plug#begin('~/.vim/plugged')
" Plug 'itchyny/lightline.vim'
" Plug 'patstockwell/vim-monokai-tasty'
" Plug 'vim-scripts/c.vim'
" Plug 'joshdick/onedark.vim'
" Plug 'preservim/nerdtree'
"call plug#end()
