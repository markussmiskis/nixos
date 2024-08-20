" Set relative numbers (hyprid)
set number relativenumber

" Tab to 2 spaces
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Highlight current line
set cursorline
highlight CursorLine cterm=bold term=bold guibg=#404040

" Setup vim-plug
call plug#begin()

" Run :PlugInstall after adding - :PlugClean after removing
" Run :PlugUpdate to update plugins
Plug 'neanias/everforest-nvim', { 'branch': 'main' }

call plug#end()

" Set color scheme
color everforest
