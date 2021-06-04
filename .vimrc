" No one likes standard vi
set nocompatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" Uncomment the following to have Vim load indentation rules according to the
" detected filetype. Per default Debian Vim only load filetype specific
" plugins.
filetype on  
filetype indent on
filetype plugin on

if has("autocmd")
  autocmd FileType python autocmd BufWritePre <buffer> %s/\s+$//e
endif


set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set nofoldenable    " disable folding for now

set number " line numbers
set background=dark
set expandtab " spaces > tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set autoindent
set fileformat=unix
set viminfo='100,<100,s10,h
" set colorcolumn=120 " everyone else here uses intellij products
set textwidth=120 "  
set wrap
" set linebreak
set backspace=indent,eol,start
set history=500

" stop the sound madness
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" explicitly shows linebreaks
set showbreak=>\ \ \ 

" vim-go


" Pymode config
let g:pymode_trim_whitespaces = 1
" let g:pymode_options_max_line_length = 120
let g:pymode_options_colorcolumn = 1

let g:pymode_indent = 1
let g:pymode_virtualenv = 1
let g:pymode_lint_on_write = 1

let g:pymode_syntax = 1


" Pyrope
let g:pymode_rope = 1

" autocompletion
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
