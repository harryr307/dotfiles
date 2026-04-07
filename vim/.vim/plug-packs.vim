call plug#begin()

Plug 'ghifarit53/tokyonight-vim'
" Plug 'junegunn/seoul256.vim'
Plug 'mhinz/vim-tree'
Plug 'sheerun/vim-polyglot'


call plug#end()

" colorscheme seoul256

set termguicolors
let g:tokyonight_style="storm"
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 1
let g:tokyonight_menu_selection_background = "red"

colorscheme tokyonight
map <c-t> :tabnew<cr>:Tree<cr>

" detect plug root for Vim vs Neovim
if has('nvim')
  let s:plug_root = stdpath('data') . '/plugged'
else
  let s:plug_root = expand('~/.vim/plugged')
endif

" check g:plugs for missing installs and run once on VimEnter only if needed
let s:need_install = 0
for [name, info] in items(g:plugs)
  let s:dir = fnamemodify(info.dir, ':p')
  if empty(globpath(s:plug_root, fnamemodify(s:dir, ':t')))
    let s:need_install = 1
    break
  endif
endfor

if s:need_install
  autocmd VimEnter * ++once PlugInstall --sync | source $MYVIMRC
endif
