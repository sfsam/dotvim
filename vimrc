syntax enable
filetype plugin indent on
colorscheme mowglii

if has("gui_running")
  set guifont=Source\ Code\ Pro:h14
  set go=
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
nnoremap <expr> <C-k> ":colo ".(g:colors_name=='mowglii'?"hickopmod":"mowglii")."\<CR>"

"FileType-specific indentation
augroup file_types
  autocmd!
  autocmd FileType c setlocal ts=4 sts=4 sw=4
  autocmd FileType python setlocal ts=4 sts=4 sw=4 tw=79 sr ai
  autocmd FileType html setlocal ts=2 sts=2 sw=2
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2
  autocmd FileType vim setlocal ts=2 sts=2 sw=2 noexpandtab
  autocmd FileType markdown setlocal foldlevel=99
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
  autocmd BufRead,BufNewFile ~/Dropbox/Notes/* setlocal ft=markdown
  autocmd BufRead,BufNewFile ~/Dropbox/Notes/* setlocal ts=2 sts=2 sw=2
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

