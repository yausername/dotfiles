
runtime bundle/vim-pathogen/autoload/pathogen.vim


"plugin management
execute pathogen#infect()

syntax on
syntax enable
"set background=dark
"colorscheme solarized

"https://goo.gl/9dwKKj
filetype plugin indent on

autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
