"Match a ticker symbol of the form: $AAPL
syn match Ticker "\$[A-Za-z][A-Za-z0-9\.-]*"

"Match Twitter handle of the form: @handle
syn match Twitter "@[A-Za-z0-9_]\+"

