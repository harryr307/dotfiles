call plug#begin()

Plug 'junegunn/seoul256.vim'
Plug 'mhinz/vim-tree'
Plug 'sheerun/vim-polyglot'

call plug#end()

colorscheme seoul256
map <c-t> :vnew<cr>:Tree<cr>
