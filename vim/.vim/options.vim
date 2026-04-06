" Enable syntax highlighting
syntax on

" Always show numbers relatively
set number
set relativenumber

" Case insensitive unless told to be
set ignorecase
set smartcase

" Sync clipboard
set clipboard="unnamedplus"

" Dont show the mode
set noshowmode

" Do not highlight background
highlight Normal ctermbg=NONE

" Tell plugins a Nerd Font is available
let g:have_nerd_font = 1

" enable airline powerline/nerd font symbols
let g:airline_powerline_fonts = 1

" for vim-devicons plugin (if using it)
let g:webdevicons_enable = 1
