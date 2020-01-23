colorscheme hickopmod

set nobackup          "don't save backup files
set number            "show line numbers
set hlsearch          "highlight search matches
set ignorecase        "ignore case when searching
set hidden            "allow hiding buffers which have modifications
set linebreak         "break lines, not words
set breakindent       "break lines while preserving indentation
set showbreak=\ \     "prepend 2 spaces at break

set viminfo+=n~/.vim/viminfo
set undodir=~/.vim/undo
set dir=~/.vim/swap//

"shortcut for insert mode -> normal mode
inoremap jk <esc>

"shortcut for datestamp
nnoremap ,d "=strftime('%Y-%m-%d')<CR>P
inoremap ,d <C-R>=strftime('%Y-%m-%d')<CR>

"shortcut to clear search highlights
nnoremap <esc><esc> :noh<return>

"default indentation
set smartindent
set expandtab     "expand tabs to spaces
set tabstop=4     "how many columns a tab counts for
set softtabstop=4
set shiftwidth=4  "number of columns used for indentation

"CtrlP opens new files in current window
let g:ctrlp_open_new_file = 'r'

"pseudo-Notational Velocity for ~/Dropbox/Notes...
"  invoke with C-l
"  use markdown syntax highlighting for all files
"  set tabstop to 2 spaces
function PseudoNotationalVelocity()
    :CtrlP ~/Dropbox/Notes
    :CtrlPClearCache
endfunction
noremap <C-l> :call PseudoNotationalVelocity()<CR>
autocmd BufRead,BufNewFile ~/Dropbox/Notes/* setlocal ft=markdown
autocmd BufRead,BufNewFile ~/Dropbox/Notes/* setlocal ts=2 sts=2 sw=2

"FileType-specific indentation
autocmd FileType c setlocal ts=4 sts=4 sw=4
autocmd FileType python setlocal ts=4 sts=4 sw=4
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2

set stl=\ %-3.3n\                  "buffer number
set stl+=%f\                       "file name
set stl+=%h%m%r                    "flags: help, modified, read-only
set stl+=%=                        "left/right split
set stl+=L=%l/%L\ \ \              "line number/total lines
set stl+=C=%c\ \ \                 "column number
set stl+=%P\ \ \                   "percent into file
set stl+=%{&fenc?&fenc:&enc}\ \ \  "encoding
set stl+=%Y\                       "file type

