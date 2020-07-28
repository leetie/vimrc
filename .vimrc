
execute pathogen#infect()
set rnu
syntax enable
colorscheme monokai

set number
set incsearch
set hlsearch

set path=$PWD/**

autocmd vimenter * NERDTree
autocmd StdinReadPre * les s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

map <C-i> :NERDTreeToggle<CR>

filetype plugin indent on
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"-- EMMET CONFIG --
"redefine trigger key
let g:user_emmet_leader_key=','
