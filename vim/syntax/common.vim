" if exists('b:count')
"     let b:count += 1
" else
"     let b:count = 1
" endif
"
" echo "common syntax : ".b:count

"シンタックスをオン
syntax enable
" カラースキーマ
colorscheme molokai
" if (exists('b:did_syntax'))
"     finish
" endif
" let b:did_syntax = 1
" 全角スペースを可視化する
syn match IdeographicSpace /　/
hi link IdeographicSpace SyntasticStypeError

" 通常文字色
highlight Normal ctermbg=none ctermfg=white
" javascriptなどで丸括弧が赤くハイライトされるが、見づらいので白くする
syn match bracket "\((\|)\|=\|+\|-\)"
hi link bracket Normal

" 画面を縦に分割した時の境界線の色
hi VertSplit ctermfg=213
" <>()など
hi Delimiter ctermfg=darkgreen
" hi Operator ctermfg=white
" コメントの色
hi comment ctermfg=lightyellow
hi DocComment term=none cterm=none ctermfg=lightgreen ctermbg=none
" ステータスラインの文字色、背景色
hi StatusLine term=underline cterm=underline ctermfg=black ctermbg=green
hi CursorLine term=bold cterm=bold ctermfg=none ctermbg=none

" hi String term=none cterm=none ctermfg=brown ctermbg=none
