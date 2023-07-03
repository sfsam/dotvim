
" File: mowglii.vim
" Description: vim colorscheme based on xcode
" URL: https://github.com/JaySandhu/xcode-vim

hi clear
set background=light

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "mowglii"

hi Folded           guifg=#000080  guibg=#e4e4e4  gui=none   ctermfg=4     ctermbg=254   cterm=none
hi BufTabLineSep    guifg=#c3c3c3  guibg=#e3e3e3  gui=none   ctermfg=248   ctermbg=253   cterm=none
hi Ticker           guifg=#008311  guibg=NONE     gui=bold   ctermfg=28    ctermbg=NONE  cterm=bold
hi Twitter          guifg=#116cd6  guibg=NONE     gui=none   ctermfg=32    ctermbg=NONE  cterm=bold
hi Cursor           guifg=#ffffff  guibg=#f05098  gui=none
hi Normal           guifg=#1c1c1c  guibg=#ffffff  gui=none   ctermfg=0     ctermbg=231
hi NonText          guifg=#ddddda  guibg=NONE     gui=none   ctermfg=0     ctermbg=231
hi TabLine          guifg=#777777  guibg=#e3e3e3  gui=none   ctermfg=239   ctermbg=253   cterm=none
hi TabLineSel       guifg=NONE     guibg=NONE     gui=bold   ctermfg=NONE  ctermbg=NONE
hi TabLineFill      guifg=#d7d7d7                            ctermfg=251
hi ColorColumn      guifg=NONE     guibg=#f9f9f9  gui=none   ctermfg=NONE  ctermbg=255
hi VertSplit        guifg=#ffffff  guibg=#cccccc  ctermfg=231   ctermbg=250
hi LineNr           guifg=#d6d6d3  guibg=NONE     gui=none   ctermfg=249   ctermbg=NONE
hi CursorLineNR     guifg=#2c9aff  guibg=#f6f9ff  gui=bold   ctermfg=69    ctermbg=255   cterm=bold
hi CursorLine       guifg=NONE     guibg=#d0e1f5  gui=none   ctermfg=NONE  ctermbg=255   cterm=none
hi CursorColumn     guifg=NONE     guibg=#f0f8ff  gui=none   ctermfg=NONE  ctermbg=NONE
hi Error            guifg=#ff0000  guibg=NONE     gui=bold   ctermfg=1     ctermbg=NONE
hi MatchParen       guifg=#000000  guibg=#cfdfff  gui=bold   ctermfg=1     ctermbg=NONE  cterm=bold
hi Comment          guifg=#008311  guibg=NONE     gui=none   ctermfg=22    ctermbg=NONE
hi Todo             guifg=#008311  guibg=NONE     gui=italic ctermfg=22    ctermbg=NONE
hi String           guifg=#cf3125  guibg=NONE     gui=none   ctermfg=124   ctermbg=NONE
hi Special          guifg=#1b60af  guibg=NONE     gui=bold   ctermfg=25    ctermbg=NONE  cterm=bold
hi Type             guifg=#6f41a7  guibg=NONE     gui=none   ctermfg=55    ctermbg=NONE
hi Statement        guifg=#b833a2  guibg=NONE     gui=none   ctermfg=126   ctermbg=NONE
hi Keyword          guifg=#b833a2  guibg=NONE     gui=none   ctermfg=126   ctermbg=NONE
hi Structure        guifg=#b833a2  guibg=NONE     gui=none   ctermfg=126   ctermbg=NONE
hi StorageClass     guifg=#b833a2  guibg=NONE     gui=none   ctermfg=126   ctermbg=NONE
hi Boolean          guifg=#b833a2  guibg=NONE     gui=none   ctermfg=126   ctermbg=NONE
hi Null             guifg=#b833a2  guibg=NONE     gui=none   ctermfg=126   ctermbg=NONE
hi Function         guifg=#008b8b  guibg=NONE     gui=none   ctermfg=24    ctermbg=NONE
hi Identifier       guifg=#008b8b  guibg=NONE     gui=none   ctermfg=24    ctermbg=NONE
hi Constant         guifg=#77492d  guibg=NONE     gui=none   ctermfg=52    ctermbg=NONE
hi PreProc          guifg=#77492d  guibg=NONE     gui=none   ctermfg=52    ctermbg=NONE
hi Number           guifg=#2934d4  guibg=NONE     gui=none   ctermfg=19    ctermbg=NONE
hi Character        guifg=#2934d4  guibg=NONE     gui=none   ctermfg=19    ctermbg=NONE
hi SpecialChar      guifg=#2934d4  guibg=NONE     gui=none   ctermfg=19    ctermbg=NONE
hi Visual           guifg=NONE     guibg=#ffff87  gui=none   ctermfg=NONE  ctermbg=228
hi Search           guifg=NONE     guibg=#fbfac9  gui=none   ctermfg=NONE  ctermbg=229
"hi StatusLine       guifg=#d7d5cf  guibg=#555552  gui=reverse ctermfg=7    ctermbg=0     cterm=reverse
hi StatusLine       guifg=#6495ED  guibg=#ffffff  gui=reverse ctermfg=69    ctermbg=15     cterm=reverse
hi StatusLineNC     guifg=#f2f2ea  guibg=#969693  gui=reverse ctermfg=253  ctermbg=242
hi StatusLineTerm   guifg=#ffffff  guibg=#1187f2  gui=none   ctermfg=255   ctermbg=33
hi StatusLineTermNC guifg=#aabbcc  guibg=#e2f1ff  gui=none   ctermfg=242   ctermbg=253
hi WildMenu         guifg=#646464  guibg=#ffffff  gui=none   ctermfg=238   ctermbg=255
hi Pmenu            guifg=#000000  guibg=#d7bdff  gui=none   ctermfg=0     ctermbg=141
hi PmenuSel         guifg=#ffffff  guibg=#7a25fa  gui=none   ctermfg=15    ctermbg=54
hi SpecialKey       guifg=#d9d9d6  guibg=NONE     gui=none   ctermfg=249   ctermbg=NONE

hi clear SignColumn

hi def link markdownH1           Special
hi def link markdownH2           Special
hi def link markdownH3           Special
hi def link markdownH4           Special
hi def link markdownH5           Special
hi def link markdownH6           Special
hi def link markdownListMarker   Normal

