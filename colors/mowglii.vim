"
" Name: mowglii.vim
" Based_on:
" Name: xcode.vim
" URL: https://github.com/JaySandhu/xcode-vim
" License: MIT <http://opensource.org/licenses/MIT>
"

hi clear
set background=light

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "mowglii"

hi BufTabLineSep    guifg=#c9c9c9  guibg=#dddddd
hi Ticker           guifg=#008311  guibg=NONE     gui=bold   ctermfg=28    ctermbg=NONE  cterm=bold
hi Twitter          guifg=#116cd6  guibg=NONE     gui=none   ctermfg=32    ctermbg=NONE  cterm=bold
hi Cursor           guifg=#ffffff  guibg=#f05098  gui=none
hi Normal           guifg=#000000  guibg=#ffffff  gui=none   ctermfg=0     ctermbg=231
hi NonText          guifg=#dddddd  guibg=#ffffff  gui=none   ctermfg=0     ctermbg=231
hi TabLine          guifg=#777777  guibg=#dddddd  gui=none   ctermfg=239   ctermbg=253   cterm=none
hi TabLineSel       guifg=#000000  guibg=NONE     gui=bold   ctermfg=0     ctermbg=NONE
hi TabLineFill      guifg=#cfcfcf                            ctermfg=251
hi ColorColumn      guifg=NONE     guibg=#f9f9f9  gui=none   ctermfg=NONE  ctermbg=255
hi VertSplit        guifg=#969696  guibg=#f2f2f2  gui=none   ctermfg=255   ctermbg=249
hi LineNr           guifg=#dddddd  guibg=NONE     gui=none   ctermfg=249   ctermbg=NONE
hi CursorLineNR     guifg=#2e9dff  guibg=NONE     gui=bold   ctermfg=69    ctermbg=255   cterm=bold
hi CursorLine       guifg=NONE     guibg=#d0e1f5  gui=none   ctermfg=NONE  ctermbg=255   cterm=none
hi CursorColumn     guifg=NONE     guibg=#f0f8ff  gui=none   ctermfg=NONE  ctermbg=NONE
hi Error            guifg=#ff0000  guibg=NONE     gui=bold   ctermfg=1     ctermbg=NONE
hi MatchParen       guifg=#ff0000  guibg=NONE     gui=bold   ctermfg=1     ctermbg=NONE
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
hi Visual           guifg=NONE     guibg=#b3d8fd  gui=none   ctermfg=NONE  ctermbg=159
hi Search           guifg=NONE     guibg=#fbfac9  gui=none   ctermfg=NONE  ctermbg=229
hi StatusLine       guifg=#555555  guibg=#ffffff  gui=reverse ctermfg=239  ctermbg=255
hi StatusLineNC     guifg=#f2f2f2  guibg=#969696  gui=reverse ctermfg=253  ctermbg=242
hi StatusLineTerm   guifg=#ffffff  guibg=#1187f2  gui=none   ctermfg=255   ctermbg=33
hi StatusLineTermNC guifg=#aabbcc  guibg=#e2f1ff  gui=none   ctermfg=242   ctermbg=253
hi WildMenu         guifg=#646464  guibg=#ffffff  gui=none   ctermfg=238   ctermbg=255
hi Pmenu            guifg=#000000  guibg=#d7bdff  gui=none   ctermfg=0     ctermbg=141
hi PmenuSel         guifg=#ffffff  guibg=#7a25fa  gui=none   ctermfg=15    ctermbg=54

hi def link markdownH1           Special
hi def link markdownH2           Special
hi def link markdownH3           Special
hi def link markdownH4           Special
hi def link markdownH5           Special
hi def link markdownH6           Special
hi def link markdownListMarker   Normal

