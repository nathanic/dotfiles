set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "noehler"

hi Comment gui=italic guifg=#80a0ff
hi Constant guifg=lightred
hi CursorColumn guibg=#555555
hi CursorIM gui=None
hi CursorLine guibg=#555555
hi Cursor guifg=black guibg=green
hi DiffAdd guibg=darkblue
hi DiffChange guibg=darkmagenta
hi DiffDelete gui=bold guifg=blue guibg=darkcyan
hi DiffText gui=bold guibg=red
hi Directory guifg=blue
hi ErrorMsg guifg=white guibg=red
hi Error guifg=red guibg=black
hi FoldColumn guifg=cyan guibg=grey
hi Folded guifg=cyan guibg=darkgray
hi Identifier guifg=#40ffff
hi Ignore guifg=black
hi IncSearch gui=reverse
hi LineNr guifg=yellow
hi MatchParen guibg=blue
hi ModeMsg gui=bold guifg=white guibg=blue
hi MoreMsg gui=bold guifg=seagreen
hi NonText gui=bold guifg=blue
hi Normal guifg=white guibg=black
hi PmenuSbar guibg=grey
hi PmenuSel guibg=darkgray
hi PmenuThumb gui=reverse
hi Pmenu guibg=magenta
hi PreProc guifg=#ff80ff
hi Question gui=bold guifg=green
hi Search guifg=white guibg=red
hi SignColumn guifg=cyan guibg=grey
hi SpecialKey guifg=blue
hi Special guifg=orange
hi SpellBad gui=undercurl
hi SpellCap gui=undercurl
hi SpellLocal gui=undercurl
hi SpellRare gui=undercurl
hi Statement gui=bold guifg=#ffff60
hi StatusLineNC gui=reverse guifg=white guibg=blue
hi StatusLine gui=bold,reverse guifg=blue guibg=white
hi TabLineFill gui=bold guifg=blue guibg=white
hi TabLineSel gui=bold guifg=white guibg=blue
hi TabLine gui=bold guifg=blue guibg=white
hi Title gui=bold guifg=magenta
hi Todo guifg=blue guibg=yellow
hi Type gui=bold guifg=#60ff60
hi Underlined gui=underline guifg=#80a0ff
hi VertSplit gui=reverse
hi VisualNOS gui=bold,underline
hi Visual gui=reverse guibg=darkgray
hi WarningMsg guifg=red
hi WildMenu guifg=black guibg=yellow
hi link Boolean Constant
hi link Character Constant
hi link Conditional Statement
hi link Debug Special
hi link Define PreProc
hi link Delimiter Special
hi link Exception Statement
hi link Float Constant
hi link Function Identifier
hi link Include PreProc
hi link Keyword Statement
hi link Label Statement
hi link Macro PreProc
hi link Number Constant
hi link Operator Statement
hi link PreCondit PreProc
hi link Repeat Statement
hi link SpecialChar Special
hi link SpecialComment Special
hi link StorageClass Type
hi link String Constant
hi link Structure Type
hi link Tag Special
hi link Typedef Type 
