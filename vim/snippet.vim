" snippet
" For snippet_complete marker.
if has('conceal')
	set conceallevel=2 concealcursor=i
endif

"Tell Neosnippet about the other snippets=スニペットファイルの場所指定
let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/neosnippets, ~/.vim/mysnippets'

" neocomplcache
"Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
" let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
			\ 'default' : ''
			\ }

