if (exists('b:did_jsp'))
    finish
endif
let b:did_jsp = 1

inoremap <buffer> < <><Left>
inoremap <buffer> % %%<Left>
inoremap <buffer> ,p %%<Left>
