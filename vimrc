" Vundle config
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Begin Plugins
" Auto Pairs
Plugin 'jiangmiao/auto-pairs'
" NERDTree
Plugin 'scrooloose/nerdtree'
" Snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Matchit
Plugin 'tmhedberg/matchit'
" Solarized
Plugin 'altercation/vim-colors-solarized'
" Surround
Plugin 'tpope/vim-surround'
" Emmet
Plugin 'mattn/emmet-vim'
" MRU
Plugin 'yegappan/mru'
" CtrlP
Plugin 'ctrlpvim/ctrlp.vim'
" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
" Airline
Plugin 'bling/vim-airline'
" Fugitive
Plugin 'tpope/vim-fugitive'
" Syntastic
Plugin 'scrooloose/syntastic'
" End Plugins

call vundle#end()            " required
filetype plugin indent on    " required

call pathogen#incubate()
call pathogen#helptags()
execute pathogen#infect()
syntax on
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set softtabstop=2
set expandtab
set number
set autoindent

set background=dark
set t_Co=16
colorscheme solarized

set list listchars=tab:>-,trail:.,extends:>

" Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

au BufRead,BufNewFile *.twig set syntax=htmljinja
map <C-n> :NERDTreeToggle<CR>
let g:syntastic_php_phpcs_args="--standard=Drupal --extensions=php,module,inc,install,test,profile,theme"

