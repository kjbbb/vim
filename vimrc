autocmd BufEnter * let &titlestring =  "Vim: " . "[" . hostname() . "] " . expand("%:t") 

if &term == "screen"
  set t_ts=^[k
  set t_fs=^[\
endif
if &term == "screen" || &term == "xterm" || &term == "xterm-color"
  set title
endif

set autoindent

set wildmenu
set ts=2 sw=2
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

"Ignore case when searching
set ic
set scs

set nocp
filetype plugin on
source ~/.vim/plugin/matchit.vim
source ~/.vim/plugin/zencoding.vim
colorscheme wombat

"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

set list
set listchars=tab:»·,trail:·,extends:»

"F4 to toggle search highlighting
map <F4> :set nohls!<cr>
"F5 to toggle NERDtree
map <F5> :NERDTreeToggle<CR>

"use mouse
set mouse=a

"Terminal colors
set t_Co=256

"Set text width to 80
setl tw=80

"Toggle mouse usage
nnoremap <F3> :call ToggleMouse()<CR>
function! ToggleMouse()
  if &mouse == 'a'
    set mouse=c
    echo "Mouse usage disabled"
  else
    set mouse=a
    echo "Mouse usage enabled"
  endif
endfunction

"Toggle Ctrl+n Ctrl+n to toggle line numbers
nmap <C-N><C-N> :set invnumber<CR>

"Toggle paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
