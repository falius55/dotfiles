" neobundleの設定
if 0 | endif

if &compatible
	set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim' " コード補完機能
NeoBundle 'Shougo/neosnippet-snippets' "スニペット集
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
" NeoBundle 'Shougo/neocomplcache' "補完候補を順次表示する(スニペットも))
NeoBundle 'Shougo/neocomplete.vim'  " neocomplcacheの現在版

NeoBundle 'vim-scripts/javacomplete'
NeoBundle 'Shougo/unite.vim'  " ファイル一覧を表示し、そこからファイルを開く
NeoBundle 'Shougo/unite-outline'  " クラスや関数名の一覧を表示するunite source
NeoBundle 'Shougo/neomru.vim'  " 最近開いたファイルをuniteで開くのに利用
NeoBundle 'Shougo/vimfiler'  " ファイラー
NeoBundle 'tyru/caw.vim.git' " コメントアウトしやすくする
NeoBundle 'Shougo/vimproc'

" NeoBundle 'itchyny/lightline.vim' " ステータスラインのカスタマイズプラグイン
NeoBundle 'bronson/vim-trailing-whitespace' " 行末のスペースに色を付ける

NeoBundle 'vim-syntastic/syntastic'  " 構文エラーチェック

NeoBundle 'rhysd/vim-operator-surround'

" オペレーター、テキストオブジェクト
NeoBundle 'kana/vim-operator-user'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kana/vim-operator-replace'

" python """""""""""""""""""""""
NeoBundle 'andviro/flake8-vim' " スタイルチェック
NeoBundle 'hynek/vim-python-pep8-indent' " python的なインデントにする
NeoBundle 'davidhalter/jedi-vim'

" html css """"""""""""""""""""""
NeoBundle 'othree/html5.vim'  " html5のタグをハイライトする
NeoBundle 'hail2u/vim-css3-syntax' " css3のタグをハイライトする
NeoBundle 'jelera/vim-javascript-syntax'  " html内のjavascriptをハイライトする
NeoBundle "hokaccha/vim-html5validator"  " html5の文法チェックを行う

" javascript """"""""""""""""""""
" NeoBundle 'hallettj/jslint.vim'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


" Jedi for python
" NeoBundleLazy "davidhalter/jedi-vim", {
"             \ "autoload": { "filetypes": [ "python", "python3", "djangohtml"] }}
"
" if ! empty(neobundle#get("jedi-vim"))
"     let g:jedi#auto_initialization = 1
"     let g:jedi#auto_vim_configuration = 1
"
"     nnoremap [jedi] <Nop>
"     xnoremap [jedi] <Nop>
"     nmap <Leader>j [jedi]
"     xmap <Leader>j [jedi]
"
"     let g:jedi#completions_command = "<C-Space>"    " 補完キーの設定この場合はCtrl+Space
"     let g:jedi#goto_assignments_command = "<C-g>"   " 変数の宣言場所へジャンプ（Ctrl + g)
"     let g:jedi#goto_definitions_command = "<C-d>"   " クラス、関数定義にジャンプ（Gtrl + d）
"     let g:jedi#documentation_command = "<C-k>"      " Pydocを表示（Ctrl + k）
"     let g:jedi#rename_command = "[jedi]r"
"     let g:jedi#usages_command = "[jedi]n"
"     let g:jedi#popup_select_first = 0
"     let g:jedi#popup_on_dot = 0
"
"     autocmd FileType python setlocal completeopt-=preview
"
"     " for w/ neocomplete
"     if ! empty(neobundle#get("neocomplete.vim"))
"         autocmd FileType python setlocal omnifunc=jedi#completions
"         let g:jedi#completions_enabled = 0
"         let g:jedi#auto_vim_configuration = 0
"         let g:neocomplete#force_omni_input_patterns.python =
"                     \ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*''])'
"     endif
" endif

"------------------------------------------------------------
"" jedi-vim Setting

let g:neocomplete#enable_at_startup = 1  " neocmpleteを起動時に有効化

autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif

try
    " g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*''])'
catch
endtry

"------------------------------------------------------------
