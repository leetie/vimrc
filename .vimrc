set rnu
syntax enable
colorscheme monokai
set tabstop=2

set number
set incsearch
set hlsearch

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set path=$PWD/**

autocmd vimenter * NERDTree
autocmd StdinReadPre * les s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

map <C-i> :NERDTreeToggle<CR>
