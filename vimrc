syntax enable
filetype plugin indent on
colorscheme mowglii

if has("gui_running")
  set lines=30
  set columns=90
  set guifont=Source\ Code\ Pro:h14
else
  "Change cursor shape depending on mode
  "  1 -> blinking block
  "  2 -> solid block
  "  3 -> blinking underscore
  "  4 -> solid underscore
  "  5 -> blinking vertical bar
  "  6 -> solid vertical bar
  let &t_SI.="\e[5 q" "SI = INSERT mode
  let &t_SR.="\e[3 q" "SR = REPLACE mode
  let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
endif

if has("nvim")
  if $TERM_PROGRAM ==# "iTerm.app"
    set termguicolors
  endif
else
  set viminfo+=n~/.vim/viminfo
endif

"Basic settings
set undodir=~/.vim/undo
set dir=~/.vim/swap//
set nobackup          "don't save backup files
set number            "show line numbers
set hlsearch          "highlight search matches
set incsearch         "show search highlights incrementally
set ignorecase        "ignore case when searching
set hidden            "allow hiding buffers which have modifications
set linebreak         "break lines, not words
set breakindent       "break lines while preserving indentation
set showbreak=\ \     "prepend 2 spaces at break
set laststatus=2      "always show statusline
set complete+=kspell  "use ctrl-n/ctrl-p for spelling completion
set smartindent
set expandtab         "expand tabs to spaces
set tabstop=4         "how many columns a tab counts for
set softtabstop=4
set shiftwidth=4      "number of columns used for indentation
set modeline
set linespace=1       "number of pixel lines between characters
set clipboard=unnamed "unnamed register = * register (clipboard)

let mapleader = " "

"Use q to quit in readonly mode
nnoremap <expr> q (&readonly ? ':q!<CR>' : 'q')

"Do no highlight extra whitespace in red
let g:better_whitespace_enabled = 0

"Bullet style ordering indentation levels
let g:bullets_outline_levels = ['ROM', 'ABC', 'num', 'abc', 'rom', 'std-']

"URL styling for vim-highlighturl plugin
let g:highlighturl_ctermfg = 26
let g:highlighturl_guifg = "#116cd6"
let g:highlighturl_underline = 0

"Ctrl-P
let g:ctrlp_open_new_file = 'r' "open files in current window
let g:ctrlp_user_command = 'find -L %s -type f'
let g:ctrlp_follow_symlinks = 1

"FileType-specific indentation
autocmd FileType c setlocal ts=4 sts=4 sw=4
autocmd FileType python setlocal ts=4 sts=4 sw=4
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType vim setlocal ts=2 sts=2 sw=2
autocmd FileType markdown setlocal foldlevel=99

"Shortcut to open terminal session in current working directory
map <F6> :let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR>

"Shortcut for insert mode -> normal mode
inoremap jk <esc>

"Shortcuts to cycle buffers
nnoremap <leader>l :bnext<CR>
nnoremap <leader>h :bprev<CR>

"BufTabline
let g:buftabline_indicators = 1
nmap <D-1> <Plug>BufTabLine.Go(1)
nmap <D-2> <Plug>BufTabLine.Go(2)
nmap <D-3> <Plug>BufTabLine.Go(3)
nmap <D-4> <Plug>BufTabLine.Go(4)
nmap <D-5> <Plug>BufTabLine.Go(5)
nmap <D-6> <Plug>BufTabLine.Go(6)
nmap <D-7> <Plug>BufTabLine.Go(7)
nmap <D-8> <Plug>BufTabLine.Go(8)
nmap <D-9> <Plug>BufTabLine.Go(9)
nmap <D-0> <Plug>BufTabLine.Go(-1)

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
    "If cursor is over Ticker, append "+stock" before
    "doing the search to get the stock quote.
    let l:query = expand('<cfile>')
    if expand('<cWORD>') =~? '@[A-Za-z0-9_]\+'
        call openbrowser#search(l:query, 'twitter-user')
    else
        if expand('<cWORD>') =~? '\$[A-Za-z][A-Za-z0-9]*'
            let l:query = l:query[1:] . "+stock"
        endif
        call openbrowser#smart_search(l:query)
    endif
endfun
nmap gx :call MyGx()<CR>
vmap gx :call MyGx()<CR>

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

