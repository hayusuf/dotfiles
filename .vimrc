".vimrc
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set fileencodings=utf-8
syntax on "syntax highlighting
set shortmess+=I "disables startup msg
set number "show line numbers
set relativenumber "show relative number
set laststatus=2 "status line at bottom even if only one window
set backspace=indent,eol,start
"set hidden "allow unsaved buffer to be hidden
"set ignorecase "case-insensivitive search
"set smartcase 
set incsearch "searching as you type
nmap Q <Nop> "'Q' in normal mode enters Ex mode. useless
set noerrorbells visualbell t_vb= "disable audible bell 
set guicursor=
set nowrap
set scrolloff=8
set signcolumn=yes
set colorcolumn=80


"Prevent using arrow keys in normal and insert mode
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
