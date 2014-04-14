call pathogen#incubate()
call pathogen#helptags()
execute pathogen#infect()
syntax on
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab
set number

set background=dark
set t_Co=16
colorscheme solarized

set list listchars=tab:>-,trail:.,extends:>

au BufRead,BufNewFile *.twig set syntax=htmljinja
map <C-n> :NERDTreeToggle<CR>
let g:syntastic_phpcs_conf=" --standard=Drupal --extensions=php,module,inc,install,test,profile,theme"
