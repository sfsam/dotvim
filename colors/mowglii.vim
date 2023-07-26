
" File: mowglii.vim
" Description: vim colorscheme based on xcode
" URL: https://github.com/JaySandhu/xcode-vim
"

hi clear
set background=light

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "mowglii"

hi Cursor           guifg=#ffffff  guibg=#f05098  gui=none

hi Normal           guifg=#1c1c1c  guibg=#ffffff  gui=none   ctermfg=0     ctermbg=231
hi NonText          guifg=#ddddda  guibg=NONE     gui=none   ctermfg=0     ctermbg=231

hi ColorColumn      guifg=NONE     guibg=#f9f9f9  gui=none   ctermfg=NONE  ctermbg=255

hi VertSplit        guifg=#666666  guibg=NONE     gui=none   ctermfg=231   ctermbg=250
hi LineNr           guifg=#c3c3c3  guibg=NONE     gui=none   ctermfg=249   ctermbg=NONE
hi SignColumn       guifg=#969696  guibg=#f2f2f2  gui=none   ctermfg=249   ctermbg=255   cterm=none
hi CursorLineNR     guifg=#2c8adf  guibg=NONE     gui=bold   ctermfg=69    ctermbg=NONE  cterm=bold
hi CursorLine       guifg=NONE     guibg=#d0e1f5  gui=none   ctermfg=NONE  ctermbg=255   cterm=none
hi CursorColumn     guifg=NONE     guibg=#f0f8ff  gui=none   ctermfg=NONE  ctermbg=NONE

hi FoldColumn       guifg=#2e9dff  guibg=#f2f2f2  gui=none   ctermfg=39    ctermbg=255   cterm=none
hi Folded           guifg=#2e9dff  guibg=#f2f2f2  gui=italic ctermfg=255   ctermbg=39    cterm=italic

hi Error            guifg=#ff0000  guibg=NONE     gui=bold   ctermfg=1     ctermbg=NONE
hi MatchParen       guifg=#000000  guibg=#cfdfff  gui=bold   ctermfg=1     ctermbg=NONE  cterm=bold

hi Comment          guifg=#008311  guibg=NONE     gui=none   ctermfg=22    ctermbg=NONE
hi Todo             guifg=#008311  guibg=NONE     gui=italic ctermfg=22    ctermbg=NONE

hi String           guifg=#008800  guibg=NONE     gui=none   ctermfg=28    ctermbg=NONE
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

hi Visual           guifg=NONE     guibg=#b3d8fd  gui=none   ctermfg=NONE  ctermbg=159   cterm=none
hi Search           guifg=#000000  guibg=#fbda69  gui=none   ctermfg=NONE  ctermbg=229

hi StatusLine       guifg=#ffffff  guibg=#666666  gui=none   ctermfg=239   ctermbg=255   cterm=none
hi StatusLineNC     guifg=#969696  guibg=#f2f2f2  gui=none   ctermfg=249   ctermbg=NONE  cterm=none
hi StatusLineTerm   guifg=#ffffff  guibg=#2c9ac9  gui=none   ctermfg=239   ctermbg=87    cterm=none
hi StatusLineTermNC guifg=#969696  guibg=#eaf6fb  gui=none   ctermfg=249   ctermbg=195   cterm=none
hi WildMenu         guifg=#666666  guibg=#ffffff  gui=none   ctermfg=238   ctermbg=252   cterm=none

hi Pmenu            guifg=#000000  guibg=#d7bdff  gui=none   ctermfg=0     ctermbg=141
hi PmenuSel         guifg=#ffffff  guibg=#7a25fa  gui=none   ctermfg=15    ctermbg=54

hi DiffAdd          guifg=NONE     guibg=#e6ffed  gui=none   ctermfg=NONE  ctermbg=157   cterm=none
hi DiffDelete       guifg=#969696  guibg=#ffeef0  gui=none   ctermfg=249   ctermbg=224   cterm=none
hi DiffChange       guifg=NONE     guibg=#fffbdd  gui=none   ctermfg=NONE  ctermbg=230   cterm=none
hi DiffText         guifg=NONE     guibg=#f2e496  gui=none   ctermfg=NONE  ctermbg=222   cterm=none

hi BufTabLineSep    guifg=#999999  guibg=#cccccc  gui=none   ctermfg=248   ctermbg=253   cterm=none
hi TabLine          guifg=#444444  guibg=#cccccc  gui=none   ctermfg=239   ctermbg=253   cterm=none
hi TabLineSel       guifg=NONE     guibg=NONE     gui=bold   ctermfg=NONE  ctermbg=NONE
hi TabLineFill      guifg=#999999                            ctermfg=251

hi ErrorMsg         guifg=#ff0000  guibg=#ffffff  gui=bold   ctermfg=9     ctermbg=15    cterm=bold
hi WarningMsg       guifg=#ff0000  guibg=#ffffff  gui=none   ctermfg=9     ctermbg=15    cterm=none
hi MoreMsg          guifg=#000000  guibg=#ffffff  gui=none   ctermfg=0     ctermbg=15    cterm=none
hi ModeMsg          guifg=#666666  guibg=#ffffff  gui=bold   ctermfg=239   ctermbg=15    cterm=bold

hi SpellBad         guisp=#ff0000  guifg=NONE     guibg=NONE gui=undercurl ctermfg=9     ctermbg=224  cterm=underline
hi SpellCap         guisp=#0000ff  guifg=NONE     guibg=NONE gui=undercurl ctermfg=12    ctermbg=159  cterm=underline
hi SpellLocal       guisp=#008080  guifg=NONE     guibg=NONE gui=undercurl ctermfg=5     ctermbg=225  cterm=underline
hi SpellRare        guisp=#ff00ff  guifg=NONE     guibg=NONE gui=undercurl ctermfg=2     ctermbg=194  cterm=underline

hi SpecialKey       guifg=#d9d9d6  guibg=NONE     gui=none   ctermfg=249   ctermbg=NONE

hi Folded           guifg=#000080  guibg=#e4e4e4  gui=none   ctermfg=4     ctermbg=254   cterm=none

