"Command-W kills buffers.
"Poor man's version of vim-command-w:
"https://github.com/nathanaelkane/vim-command-w
function! MyCommandW() abort
  confirm bd
"  if len(filter(range(1, bufnr('$')), 'buflisted(v:val) == 1')) == 1
"    confirm q
"  else
"    confirm bd
"  endif
endfunction

if has("gui_macvim")
	macmenu File.Close key=<nop>
endif

nmap <D-w> :call MyCommandW()<CR>
imap <D-w> <Esc>:call MyCommandW()<CR>

