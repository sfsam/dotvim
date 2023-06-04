set nocompatible

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

set history=200 " keep 200 lines of command line history
set ruler       " show the cursor position all the time
set showcmd     " display incomplete commands
set wildmenu    " display completion matches in a status line

set ttimeout        " time out for key codes
set ttimeoutlen=100 " wait up to 100ms after Esc for special key

" Show @@@ in the last line if it is truncated.
set display=truncate

" Show a few lines of context around the cursor.  Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
set scrolloff=5

" Do incremental searching when it's possible to timeout.
if has('reltime')
  set incsearch
endif

" Do not recognize octal numbers for Ctrl-A and Ctrl-X, most users find it
" confusing.
set nrformats-=octal

" In many terminal emulators the mouse works just fine.  By enabling it you
" can position the cursor, Visually select and scroll with the mouse.
" Only xterm can grab the mouse events when using the shift key, for other
" terminals use ":", select text and press Esc.
if has('mouse')
  if &term =~ 'xterm'
    set mouse=a
  else
    set mouse=nvi
  endif
endif

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
" Revert with ":filetype off".
filetype plugin indent on

" Switch syntax highlighting on when the terminal has colors or when using the
" GUI (which always has colors).
if &t_Co > 2 || has("gui_running")
  " Revert with ":syntax off".
  syntax on

  " I like highlighting strings inside C comments.
  " Revert with ":unlet c_comment_strings".
  let c_comment_strings=1
endif

"------------------------------------

colorscheme mowglii

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

if $TERM_PROGRAM ==# "iTerm.app"
  "Use 24-bit color
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

if !has("nvim")
  set viminfo+=n~/.vim/viminfo
endif
set undodir=~/.vim/undo
set dir=~/.vim/swap//

set guifont=Source\ Code\ Pro:h14
set go=
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
set clipboard=unnamed "unnamed register = * register (clipboard)
set cursorline
set cursorlineopt=number
set display=lastline
set autochdir         "working dir is based on file location
set smoothscroll      "scroll by visual lines
set title

"Enable mode shapes, Cursor highlight group, and blinking
:set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
      \,a:blinkwait750-blinkoff350-blinkon750-Cursor/lCursor
      \,sm:block-blinkwait175-blinkoff150-blinkon175

let mapleader = " "

"j,k work by visual line unless provided with repeat count
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

"Shortcut for insert mode -> normal mode
inoremap jk <esc>

"Shortcuts to cycle buffers
nnoremap <leader>l :bnext<CR>
nnoremap <leader>h :bprev<CR>

"Shortcut for datestamp: 2021-11-13 (Sat)
nnoremap ,d "=strftime('%Y-%m-%d (%a)')<CR>P
inoremap ,d <C-R>=strftime('%Y-%m-%d (%a)')<CR>

"Shortcut for datestamp: 2021-11-13
nnoremap ,dd "=strftime('%Y-%m-%d')<CR>P
inoremap ,dd <C-R>=strftime('%Y-%m-%d')<CR>

"Shortcut to clear search highlights
nnoremap <esc><esc> :noh<CR>

"Shortcut to toggle color schemes
nnoremap <expr> <C-k> ":colo ".(g:colors_name=='mowglii'?"habamax":"mowglii")."\<CR>"

"Relative line numbers except in insert mode
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

"FileType-specific indentation
augroup file_types
  autocmd!
  autocmd FileType c setlocal ts=4 sts=4 sw=4
  autocmd FileType python setlocal ts=4 sts=4 sw=4 tw=79 sr ai
  autocmd FileType html setlocal ts=2 sts=2 sw=2
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2
  autocmd FileType vim setlocal ts=2 sts=2 sw=2
  autocmd FileType markdown setlocal ts=2 sts=2 sw=2
augroup END

"Shortcut to open terminal session in current working directory
map <F6> :let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR>

"Define terminal colors for gvim
let g:terminal_ansi_colors = [
      \ '#000000', '#c03030',
      \ '#00b000', '#a08020',
      \ '#6090f0', '#e000e0',
      \ '#00e0e0', '#e0e0e0',
      \ '#808080', '#ff4040',
      \ '#40ff40', '#ffff40',
      \ '#4040ff', '#ff40ff',
      \ '#40ffff', '#ffffff',
      \]
hi Terminal guifg=#dadada guibg=#222222 gui=none
augroup terminal_colors
    autocmd!
    autocmd ColorScheme * :hi Terminal guifg=#dadada guibg=#222222 gui=none
augroup END

"Vertical split separator (Box Drawings Light Vertical)
set fillchars+=vert:│

"Do not highlight extra whitespace in red
let g:better_whitespace_enabled = 0

"Bullet style ordering indentation levels
let g:bullets_outline_levels = ['ROM', 'ABC', 'num', 'abc', 'rom', 'std-']

"URL styling for vim-highlighturl plugin
let g:highlighturl_ctermfg = 26
let g:highlighturl_guifg = "#116cd6"
let g:highlighturl_underline = 0

"BufTabline
let g:buftabline_show = 1       "show buffer tabs when 2+ buffers
let g:buftabline_indicators = 1 "show modified state
let g:buftabline_separators = 2 "show separators for hidden buffers
let g:buftabline_numbers = 2    "show ordinal number
nmap <leader>1 <Plug>BufTabLine.Go(1)
nmap <leader>2 <Plug>BufTabLine.Go(2)
nmap <leader>3 <Plug>BufTabLine.Go(3)
nmap <leader>4 <Plug>BufTabLine.Go(4)
nmap <leader>5 <Plug>BufTabLine.Go(5)
nmap <leader>6 <Plug>BufTabLine.Go(6)
nmap <leader>7 <Plug>BufTabLine.Go(7)
nmap <leader>8 <Plug>BufTabLine.Go(8)
nmap <leader>9 <Plug>BufTabLine.Go(9)
nmap <leader>0 <Plug>BufTabLine.Go(-1)

"Remap broken gx for opening URLs to open-browser plugin
let g:netrw_nogx = 1 "disable netrw's gx mapping.
function! MyGx() abort
  "If cursor is over a Twitter username, go to profile.
  "Otherwise, follow URL or do Google search.
  "If cursor is over Ticker, append "+stock" before
  "doing the search to get the stock quote.
  let l:query = expand('<cfile>')
  if expand('<cWORD>') =~? '^@[A-Za-z0-9_]\+'
    call openbrowser#search(l:query, 'twitter-user')
  else
    if expand('<cWORD>') =~? '\$[A-Za-z][A-Za-z0-9]*'
      let l:query = l:query[1:] . "+stock"
    endif
    call openbrowser#smart_search(l:query)
  endif
endfunction
nmap gx :call MyGx()<CR>
vmap gx :call MyGx()<CR>

"Ctrl-P
let g:ctrlp_open_new_file = 'r' "open files in current window
let g:ctrlp_user_command = 'find -L %s -type f'
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_use_caching = 0
let g:ctrlp_buffer_func = {
            \ 'enter': 'MyCtrlPEnter',
            \ 'exit':  'MyCtrlPExit'
            \ }
function! MyCtrlPEnter() abort
  set cursorline
  set cursorlineopt=both
endfunction
function! MyCtrlPExit() abort
  set cursorline
  set cursorlineopt=number
endfunction

"Pseudo-Notational Velocity for ~/Dropbox/Notes...
"  invoke with <C-l>
"  use markdown syntax highlighting for all files
"  set tabstop to 2 spaces
function! PseudoNotationalVelocity() abort
    :CtrlP ~/Dropbox/Notes
    :CtrlPClearCache
endfunction
nnoremap <C-l> :call PseudoNotationalVelocity()<CR>
inoremap <C-l> <esc>:call PseudoNotationalVelocity()<return>
augroup pseudo_notational_velocity
  autocmd!
  autocmd BufRead,BufNewFile ~/Library/CloudStorage/Dropbox/Notes/* setlocal ft=markdown
  autocmd BufRead,BufNewFile ~/Library/CloudStorage/Dropbox/Notes/* setlocal ts=2 sts=2 sw=2
augroup END

function! ToggleSpellCheck() abort
  set spell!
  if &spell
    echo "Spell ON"
  else
    echo "Spell OFF"
  endif
endfunction
nnoremap <silent> <Leader>S :call ToggleSpellCheck()<CR>

"Statusline
set stl=\ %-3.3n         "buffer number
set stl+=%f\             "file name
set stl+=%h%m%r          "flags: help, modified, read-only
set stl+=%=              "left/right split
set stl+=L:%l/%L\ \      "line number/total lines
set stl+=C:%c\ \         "column number
set stl+=%P\ \           "percent into file
set stl+=%Y\             "file type

