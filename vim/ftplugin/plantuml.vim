if (exists('b:did_plantuml'))
    finish
endif
let b:did_plantuml = 1

" ファイル初期化マッピング
let s:filepath = expand("%:r")
let s:parentpath = expand("%:h")
let s:filename = s:filepath[strlen(s:parentpath) + 1 : ]
let s:init_input = "ggO@startuml ". s:filename. ".png<ESC>Go@enduml<ESC>gg"
execute "nnoremap <buffer> <F2> ".s:init_input
unlet s:filepath
unlet s:parentpath
unlet s:filename
unlet s:init_input
