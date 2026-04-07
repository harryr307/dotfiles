" Powerline
"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup

function! GitBranch()

  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")

endfunction



function! StatuslineGit()

  let l:branchname = GitBranch()

  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''

endfunction



set statusline=

set statusline+=%#PmenuSel#

set statusline+=%{StatuslineGit()}

set statusline+=%#StatusLine#

set statusline+=\ %f

set statusline+=%m

set statusline+=%=

set statusline+=%#TabPanel#

set statusline+=\ %y

set statusline+=\ %{&fileencoding?&fileencoding:&encoding}

set statusline+=\[%{&fileformat}\]

set statusline+=\ %p%%

set statusline+=\ %l:%c


" Always enable status bar
set laststatus=2
