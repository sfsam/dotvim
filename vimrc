colorscheme hickopmod

"Basic settings
if !has('nvim')
  set viminfo+=n~/.vim/viminfo
endif
set undodir=~/.vim/undo
set dir=~/.vim/swap//
set nobackup          "don't save backup files
set number            "show line numbers
set hlsearch          "highlight search matches
set ignorecase        "ignore case when searching
set hidden            "allow hiding buffers which have modifications
set linebreak         "break lines, not words
set breakindent       "break lines while preserving indentation
set showbreak=\ \     "prepend 2 spaces at break
set laststatus=2      "always show statusline
set complete+=kspell  "use ctrl-n/ctrl-p for spelling completion
syntax enable         "enable syntax highlighting
set smartindent
set expandtab         "expand tabs to spaces
set tabstop=4         "how many columns a tab counts for
set softtabstop=4
set shiftwidth=4      "number of columns used for indentation
"set guioptions-=e     "use non-gui tabs
set showtabline=2     "always show tabline"

let g:better_whitespace_enabled=0

"FileType-specific indentation
autocmd FileType c setlocal ts=4 sts=4 sw=4
autocmd FileType python setlocal ts=4 sts=4 sw=4
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2

"URL styling for vim-highlighturl plugin
let g:highlighturl_ctermfg=111
let g:highlighturl_underline=0

"Shortcut to open terminal session in current working directory
map <F6> :let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR>

"Shortcut for insert mode -> normal mode
inoremap jk <esc>

"Shortcut for datestamp
nnoremap ,d "=strftime('%Y-%m-%d')<CR>P
inoremap ,d <C-R>=strftime('%Y-%m-%d')<CR>

"Shortcut to clear search highlights
nnoremap <esc><esc> :noh<return>

"Remap broken gx for opening URLs to open-browser plugin
let g:netrw_nogx = 1 "disable netrw's gx mapping.
fun! MyGx()
    "If cursor is over a Twitter username, go to profile.
    "Otherwise, follow URL or do Google search.
    if expand('<cWORD>') =~? '@[A-Za-z0-9_]\+'
        call openbrowser#search(expand('<cfile>'), 'twitter-user')
    else
        call openbrowser#smart_search(expand('<cfile>'))
    endif
endfun
nmap gx :call MyGx()<CR>
vmap gx :call MyGx()<CR>

"CtrlP opens new files in current window
let g:ctrlp_open_new_file = 'r'

let g:ctrlp_follow_symlinks = 1

"Pseudo-Notational Velocity for ~/Dropbox/Notes...
"  invoke with C-l
"  use markdown syntax highlighting for all files
"  set tabstop to 2 spaces
function PseudoNotationalVelocity()
    :CtrlP ~/Dropbox/Notes
    :CtrlPClearCache
endfunction
nnoremap <C-l> :call PseudoNotationalVelocity()<CR>
inoremap <C-l> <esc>:call PseudoNotationalVelocity()<return>
autocmd BufRead,BufNewFile ~/Dropbox/Notes/* setlocal ft=markdown
autocmd BufRead,BufNewFile ~/Dropbox/Notes/* setlocal ts=2 sts=2 sw=2

"Statusline
set stl=\ %-3.3n                   "buffer number
set stl+=%f\                       "file name
set stl+=%h%m%r                    "flags: help, modified, read-only
set stl+=%=                        "left/right split
set stl+=L:%l/%L\ \                "line number/total lines
set stl+=C:%c\ \                   "column number
set stl+=%P\ \                     "percent into file
set stl+=%{&fenc?&fenc:&enc}\ \    "encoding
set stl+=%Y\                       "file type

