if (exists('b:did_sh'))
    finish
endif
let b:did_sh = 1

" ファイル初期化
nnoremap <buffer> <F2> ggO#!/bin/sh<ESC>
