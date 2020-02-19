" @rhoadskj
" github.com/rhoadskj/dotfiles

" global features
set nocompatible
syntax on
set wildmenu
set showcmd
set hlsearch

" qol options
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set confirm
set mouse=a
set number
set wrap

" indentation
set shiftwidth=4
set softtabstop=4
set expandtab

" coloring
set background=dark
colorscheme gruvbox
let &colorcolumn=join(range(100,999), ",")
