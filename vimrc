"Define the terminal title string.
autocmd BufEnter * let &titlestring =  expand("%:t") . " - vim " . "[" . hostname() . "] "

"Set the terminal title string if we can.
if &term == "screen"
  set t_ts=^[k
  set t_fs=^[\
endif
if &term == "screen" || &term == "xterm" || &term == "xterm-color"
  set title
endif

"Set default text width to 80.
setl tw=80

"Use mouse if we can.
if has("mouse")
  set mouse=a
endif

let NERDTreeMouseMode=2

"Set the default indent rules.
"See ~/.vim/after/ftplugin for file-specific indent rules.
filetype plugin indent on
set autoindent
set tabstop=8
set shiftwidth=8
set softtabstop=8
set noexpandtab

"Turn on the auto complete menu for status line, text completion, etc.
set wildmenu

"Turn on syntax highlighting.
syntax enable

"Set the search options. Highlight the searches, and interactively search
"as the text is being typed.
set hlsearch
set incsearch

"Show where the cursor is in the file (status bar)
set ruler

"Store temporary .swp files here instead of in the current working directory.
set directory=~/.vim/tmp

"Incremental search
set incsearch

"Ignore case when searching
set ic
set scs

set nocp

"Show special characters such as tabs and trailing characters. Define these
"characters as well.
set list
set listchars=tab:»·,trail:·,extends:»

"Key bindings

"F2 toggle paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

"F3 Toggle mouse usage
if has("mouse")
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
endif

"F4 toggle search highlighting
map <F4> :set nohls!<cr>

"F5 toggle NERDTree
map <F5> :NERDTreeToggle<CR>

"Ctrl+n Ctrl+n toggle line numbers
nmap <C-N><C-N> :set invnumber<CR>
