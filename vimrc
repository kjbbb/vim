autocmd BufEnter * let &titlestring =  "Vim: " . "[" . hostname() . "] " . expand("%:t") 

if &term == "screen"
  set t_ts=^[k
  set t_fs=^[\
endif
if &term == "screen" || &term == "xterm" || &term == "xterm-color"
  set title
endif

set wildmenu
set ts=4 sw=4
set expandtab

"syntax highlighting
syntax enable

"highlight searches
set hlsearch
set ruler
set t_Co=256
set fileformats=unix

".swp directory
set directory=~/.vim/tmp

"Incremental search
set incsearch

set nocp
filetype plugin on
source ~/.vim/plugin/matchit.vim
source ~/.vim/plugin/zencoding.vim
colorscheme DarkDefault

"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

set list
set listchars=tab:»·,trail:·,extends:»

"F4 to toggle search highlighting
map <F4> :set nohls!<cr>
"F5 to toggle NERDtree
map <F5> :NERDTreeToggle<CR>
