
""""""""""""""""""""""""""""""""""""""""""""""""""
"mapping """"""""""""""""""""""""""""""""""""""""""""""""""
" F5でvimrcを読み込む
nnoremap <silent> <F5> :<C-u>source ~/.vim/vimrc<CR>
" 入力モード中に素早くJJと入力した場合はESCとみなす
inoremap jj <Esc>
" j, k による移動を折り返されたテキストでも自然に振る舞うように変更
nnoremap j gj
nnoremap k gk
" ノーマルモード移動
nnoremap <C-h> ^
nnoremap <C-e> $
" 対括弧
nnoremap ,, %
" 画面分割
" Ctrl + hjkl でウィンドウ間を移動
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
" 画面の大きさを揃える
nnoremap s= <C-w>=
" 画面の幅を増やす
nnoremap s> <C-w>>
" 画面の幅を減らす
nnoremap s< <C-w><
" 高さを増やす
nnoremap s+ <C-w>+
" 高さを減らす
nnoremap s- <C-w>-
" カレントウィンドウを最も左に移動
nnoremap sH <C-w>H
" カレントウィンドウを最も下に移動
nnoremap sJ <C-w>J
" カレントウィンドウを最も上に移動
nnoremap sK <C-w>K
" カレントウィンドウを最も右に移動
nnoremap sL <C-w>L
" 水平分割
nnoremap ss <C-w>s
" 垂直分割
nnoremap sv <C-w>v
" タブ移動
nnoremap <S-h> gT
nnoremap <S-l> gt
" インサートモード移動
" inoremap <C-f> <Right>
" inoremap <C-b> <LEFT>
set backspace=indent,eol,start
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
" insertモードからは、<ESC>でノーマルモードになり、<Insert>でinsertモードに戻る
inoremap ,o <ESC>o
inoremap ,<S-o> <ESC><S-o>
" 引用符、括弧の設定
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ,{ {
inoremap ,[ [
inoremap ,( (
inoremap ," "
inoremap ,' '
inoremap ,< <
" 記号の設定
inoremap ,a &
inoremap ,b !
inoremap ,p %
inoremap ,d $
inoremap ,h #
inoremap ,e =
inoremap ,,e ==
inoremap ,q ""<Left>
inoremap ,s ''<Left>
inoremap ,k ()<Left>
inoremap ,,q "
inoremap ,,s '
inoremap ,,k (

" vimgrep, QuickFix
nnoremap [q :<C-u>cn<CR>
nnoremap ]q :<C-u>cN<CR>

" 確認系
" <C-u>は直前の数値の範囲指定を削除する(間違って数値を押されていた場合には':.,.+2'のような文字が含まれてしまう)
nnoremap <Space>c :<C-u>so $VIMRUNTIME/syntax/colortest.vim
nnoremap <Space>h :<C-u>so $VIMRUNTIME/syntax/hitest.vim


" プラグイン
" Unite
" let g:unite_split_rule = 'botright'  " 垂直分割で右側に表示
noremap mu :<C-u>Unite<Space>
" noremap ma :Unite -vertical -winwidth=50 buffer file file_mru<CR>
noremap ma :<C-u>Unite -winwidth=50 buffer file file_mru bookmark<CR>
"       " 関数などアウトライン一覧
noremap mo :<C-u>Unite -winwidth=50 outline<CR>
noremap mk :<C-u>Unite -winwidth=50 bookmark<CR>
noremap mt :<C-u>Unite -winwidth=50 tab<CR>
noremap mf :<C-u>Unite -winwidth=50 file<CR>
noremap mb :<C-u>Unite -winwidth=50 buffer<CR>
noremap mr :<C-u>Unite -winwidth=50 register<CR>
"       " 最近開いたファイル一覧(Most Recently Used)
noremap mm :<C-u>Unite -winwidth=50 file_mur file_mru<CR>

" VimFiler
nnoremap ,f :<C-u>VimFiler -buffername=explorer -split -simple -winwidth=35<CR>

" CommentOut
nmap ,c <Plug>(caw:i:toggle)
vmap ,c <Plug>(caw:i:toggle)
" VimShell
nnoremap <silent> ,sl :<C-u>VimShell<CR>
" インタプリタを非同期実行
nnoremap <silent> ,sp :<C-u>VimShellInteractive python<CR>
nnoremap <silent> ,sg :<C-u>VimShellInteractive groovy<CR>
" 選択した文字列をインタプリタに挿入
vmap <silent> ,ss :<C-u>VimShellSendString<CR>
nnoremap <silent> ,ss <S-v>:<C-u>VimShellSendString<CR>

" neosnippet
imap <C-r>     <Plug>(neosnippet_expand_or_jump)
smap <C-r>     <Plug>(neosnippet_expand_or_jump)
xmap <C-r>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
			\ "\<Plug>(neosnippet_expand_or_jump)"
			\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
			\ "\<Plug>(neosnippet_expand_or_jump)"
			\: "\<TAB>"

" " 一度確定した候補を取り消す
" inoremap <expr><C-g>     neocomplcache#undo_completion()
" " 各候補の共通する部分文字列を継ぎ足す
" inoremap <expr><C-l>     neocomplcache#complete_common_string()
"
" " Recommended key-mappings.
" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
" 	return neocomplcache#smart_close_popup() . "\<CR>"
" endfunction
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y>  neocomplcache#close_popup()
" inoremap <expr><C-e>  neocomplcache#cancel_popup()


"ファイルの拡張子によってmappingを変える
" autocmd!
" autocmd BufRead,BufNewFile *.html,*.js call s:setMap('html')
" autocmd BufRead,BufNewFile *.java call s:setMap('java')
" autocmd BufRead,BufNewFile *.vim,vimrc,.vimperatorrc call s:setMap('vim')
" autocmd BufRead,BufNewFile *.xml call s:setMap('xml')
" autocmd BufRead,BufNewFile *.jsp call s:setMap('jsp')
" autocmd BufRead,BufNewFile *.py call s:setMap('python')
" function! s:setMap(ft)
" 	" 引数であることを表すには、変数の前にa:をつける
" 	if(a:ft=='html')
" 		call s:htmlmap()
" 	elseif(a:ft=='java')
" 		call s:javamap()
" 	elseif a:ft=='vim'
" 		call s:vimmap()
" 	elseif a:ft=='xml'
" 		call s:xmlmap()
" 	elseif a:ft=='jsp'
" 		call s:jspmap()
" 	elseif a:ft=='python'
" 		call s:pythonmap()
" 	endif
" endfunction
" <buffer>をつけることでバッファローカルmapにする
" もしつけなければ最後に開いたファイルのmapがすべてのファイルに適用される
"vimスクリプトのマップ
" function! s:xmlmap()
" 	"xmlのマップ
" 	inoremap <buffer> < <><Left>
" endfunction
" function! s:jspmap() abort
" 	inoremap <buffer> < <><Left>
" 	inoremap <buffer> % %%<Left>
" 	inoremap <buffer> ,p %%<Left>
" endfunction

source  $HOME/.vim/unite.vim
" source $HOME/.vim/vimfiler.vim
source $HOME/.vim/ftplugin/memovim.vim

nmap <C-i> <Plug>(next_memo)
nmap <C-o> <Plug>(prev_memo)
nmap ,o <Plug>(open_memo)
" nmap <C-m> <Plug>(toggle_summary_or_content)
