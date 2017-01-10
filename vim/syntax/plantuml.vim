source $VIMRUNTIME/syntax/java.vim

syn region plantumlString start=/"/ end=/"/
hi link plantumlString Label

syn keyword plantumlNote note as
hi link plantumlNote Identifier

syn match plantumlNormal /^\s*\S\+\s*:/  " '変数名 : 型'の変数名(なぜか色がついてしまうので通常に戻す)
hi link plantumlNormal Normal

syn match plantumlRelation /<|--\|--|>\|<--\|-->\|--\|<--*\|*-->\|<--o\|o-->\|*--\|--*\|o--\|--o/
au ColorScheme * hi Relation ctermfg=darkred ctermbg=none
hi link plantumlRelation Relation

syn keyword plantumlStateType static abstract
au ColorScheme * hi StateType ctermfg=magenta ctermbg=none
hi link plantumlStateType StateType

syn match plantumlNoteRelation /\s\.\.\+\s/
au ColorScheme * hi Dots term=bold cterm=bold ctermfg=lightgreen ctermbg=none
hi link plantumlNoteRelation Dots

syn match plantumlCardinality /"[0-9.*]\+"/
au ColorScheme * hi Cardinality ctermfg=lightmagenta ctermbg=none
hi link plantumlCardinality Cardinality
