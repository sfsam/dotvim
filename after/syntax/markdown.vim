"Match a ticker symbol of the form: $AAPL
syn match Ticker "\$[A-Za-z][A-Za-z0-9\.-]*"
hi def link Ticker String

"Match Twitter handle of the form: @handle
syn match Twitter "@[A-Za-z0-9_]\+"
hi def link Twitter HighlightUrl

hi! def link markdownH1 CursorLineNR
hi! def link markdownH2 CursorLineNR
hi! def link markdownH3 CursorLineNR
hi! def link markdownH4 CursorLineNR
hi! def link markdownH5 CursorLineNR
hi! def link markdownH6 CursorLineNR

hi! def link markdownListMarker Normal
hi! def link markdownH1Delimiter markdownH1

