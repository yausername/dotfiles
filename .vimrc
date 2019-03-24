
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
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

let g:syntastic_javascript_checkers = ['standard']

map <C-n> :NERDTreeToggle<CR>
"use backslash to :grep
nnoremap \ :Gag<SPACE>

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif


"automatically open the location/quickfix window after :make, :grep, :lvimgrep
"and friends if there are valid locations/errors:
augroup open_quick_fix
  autocmd!
  autocmd QuickFixCmdPost [^l]* cwindow
  autocmd QuickFixCmdPost l*    lwindow
augroup END


command! -nargs=+ Gag execute 'silent grep! <args>'
