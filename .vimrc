set nocompatible    " dont be vi
set number			" adds line numbers

" tabs
set expandtab			" converts tabs to spaces
set tabstop=4			" converts a tab to 4 spaces
set shiftwidth=4		" converts indentation to 4 spaces

command! MakeTags !ctags -R .  " creates a tags file using `ctags`

set list    " show visible whitespace
set listchars=tab:→\·,space:·,nbsp:␣,trail:•,precedes:«,extends:»

syntax enable          " syntax highlighting

" Tweaks for netrw (built-in file browser)
filetype plugin on      " netrw enabled
let g:netrw_banner=0    " disable annoying banner
let g:netrw_browse_split=4 " open in prior window
let g:newrw_altv=1      " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()  " dont traverse git

set path+=**            " recursively search directories
set wildmenu            " display all matching files when we tab

colorscheme twilight256    " set your color scheme
set bg=dark             " we want the dark background

set laststatus=2        " helps the lightline plugin showup

set splitbelow          " opens any new panes below

" my snippets
nnoremap ,html :-1read $HOME/.vim/snippets/htmldoc<CR>3jwf>a
nnoremap ,vue  :-1read $HOME/.vim/snippets/vuedoc<CR>

" install vim-plug
call plug#begin('~/.vim/plugged')

Plug 'lifepillar/vim-mucomplete'

call plug#end()
