colorscheme Xcode
set guifont=Source\ Code\ Pro:h14
set lines=30
set t_Co=256

"URL highlight color
let g:highlighturl_guifg = "#116cd6"

"customize PaperColor colorscheme
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.light': {
  \       'override' : {
  \         'color00' : ['#ffffff', '231'],
  \         'linenumber_bg' : ['#ffffff', '231'],
  \         'blue' : ['#005fd7', '26'],
  \       }
  \     }
  \   }
  \ }

let g:fzf_colors = {
  \   'fg+':    ['fg', 'Normal'],
  \   'bg+':    ['bg', 'StatusLine'],
  \   'gutter': ['bg', 'StatusLine'],
  \   'hl+':    ['fg', 'Error'],
  \   'hl':     ['fg', 'Error'],
  \   'prompt': ['fg', 'LineNr'],
  \ }

