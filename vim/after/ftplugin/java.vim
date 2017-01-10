if (exists('b:did_java'))
    finish
endif
let b:did_java = 1

inoremap <buffer> {<Return> {<Return><Return>}<Up><Tab>
