call plug#begin()

" NERDTree
Plug 'preservim/nerdtree'

" Comments
Plug 'tpope/vim-commentary'

" Search
Plug 'junegunn/fzf.vim'

" Syntax
Plug 'sheerun/vim-polyglot'

" Themes
Plug 'dylnmc/novum.vim' , {'as': 'novum'}

" Editorconfig
Plug 'editorconfig/editorconfig-vim'

call plug#end()

"Nerdtree
nmap <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"General
syntax on
colorscheme novum
set nu
"filetype plugin indent on
"set nocp
"set ruler
"set wildmenu
"set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
"set t_Co=256

"Code folding
"set foldmethod=manual

"Tabs and spacing
"set autoindent
"set cindent
"set tabstop=4
"set expandtab
"set shiftwidth=4
"set smarttab

"Search
"set hlsearch
"set incsearch
"set ignorecase
"set smartcase
"set diffopt +=iwhite

"Use FZF for search
"nnoremap <C-p> :Files<Cr>
"let g:fzf_tags_command = 'ctags'

"Open quickfix window after running git grep
"autocmd QuickFixCmdPost *grep* cwindow

"Syntax highlighting in Markdown
"au BufNewFile,BufReadPost *.md set filetype=markdown
"let g:polyglot_disabled = ['markdown']
"let g:markdown_fenced_languages = ['bash=sh', 'css', 'django', 'javascript', 'js=javascript', 'json=javascript', 'perl', 'php', 'python', 'ruby', 'sass', 'xml', 'html', 'vim']
