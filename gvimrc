"Command-W kills buffers.
"Poor man's version of vim-command-w:
"https://github.com/nathanaelkane/vim-command-w
function! MyCommandW() abort
  if len(filter(range(1, bufnr('$')), 'buflisted(v:val) == 1')) == 1
    q
  else
    bd
  endif
endfunction

macmenu File.Close key=<nop>
nmap <D-w> :call MyCommandW()<CR>
imap <D-w> <Esc>:call MyCommandW()<CR>

