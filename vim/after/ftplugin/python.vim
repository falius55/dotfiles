if (exists('b:did_python'))
    finish
endif
let b:did_python = 1

inoremap <buffer> ,l ____<Left><Left>

" ファイル初期化
nnoremap <buffer> <F2> ggO#!/usr/bin/python3.4<CR># -*- coding: utf-8 -*-<CR><ESC>
