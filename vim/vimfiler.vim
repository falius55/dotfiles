if (exists('b:did_vimfiler'))
    finish
endif
let b:did_vimfiler = 1

augroup vimfiler
    autocmd!
    autocmd FileType vimfiler call s:vimfiler_settings()
augroup END

function! g:Do_Choose()
    " <Plug>(swich_to_other_window)
    call vimfiler#do_switch_action('choose')
endfunction

function! s:vimfiler_settings()
    echo "vimfiler settings"
    " tree での制御は，<Space>
    map <silent><buffer> <Space> <NOP>
    nmap <silent><buffer> <Space> <Plug>(vimfiler_expand_tree)
    nmap <silent><buffer> <S-Space> <Plug>(vimfiler_expand_tree_recursive)

    " オープンは，<CR>(enter キー)
    nmap <buffer><expr> <CR> vimfiler#smart_cursor_map(
                \ "\<Plug>(vimfiler_cd_file)",
                \ "\<Plug>(vimfiler_open_file_in_another_vimfiler)")


    " マークは，<C-Space>(control-space)
    nmap <silent><buffer> <C-Space> <Plug>(vimfiler_toggle_mark_current_line)
    vmap <silent><buffer> <C-Space> <Plug>(vimfiler_toggle_mark_selected_lines)

    " ウィンドウを分割して開く
    nnoremap <silent><buffer><expr> <C-j> vimfiler#do_switch_action('split')
    " nnoremap <silent><buffer><expr> <C-k> vimfiler#do_switch_action('vsplit')
    nnoremap <silent><buffer><expr> <C-k> g:Do_Choose()

    nnoremap <silent><buffer><expr> <C-l> vimfiler#do_switch_action('choose')

    " 移動，<Tab> だけでなく <C-l> も
    nmap <buffer> <C-l> <plug>(vimfiler_switch_to_other_window)

    " 閉じる，<Esc> 2 回叩き
    nmap <buffer> <Esc><Esc> <Plug>(vimfiler_exit)
endfunction
