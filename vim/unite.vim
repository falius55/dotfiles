if (exists('b:did_unite'))
    finish
endif
let b:did_unite = 1

augroup unite
    autocmd!
    autocmd FileType unite call s:unite_my_settings()
augroup END
function! s:unite_my_settings()
    " ウィンドウを縦に分割して開く
    nnoremap <silent> <buffer> <C-k> :<C-u>call unite#mappings#do_action('right')<CR>
    nnoremap <silent> <buffer> <C-j> :<C-u>call unite#mappings#do_action('split')<CR>
    nnoremap <silent> <buffer> <C-v> :<C-u>call unite#mappings#do_action('vsplit')<CR>
    nnoremap <silent> <buffer> <C-l> :<C-u>call unite#mappings#do_action('left')<CR>

    " inoremap <silent> <buffer> <C-v> unite#do_action('vsplit')
    " nnoremap <silent> <buffer> <C-s> unite#do_action('split')
    " inoremap <silent> <buffer> <C-s> unite#do_action('split')
    " nnoremap <silent> <buffer> <C-r> <Plug>unite#mappings#do_action('right')
    " inoremap <silent> <buffer> <C-r> unite#do_action('right')
    " nnoremap <silent> <buffer> <C-l> unite#do_action('left')
    " inoremap <silent> <buffer> <C-l> unite#do_action('left')
endfunction
