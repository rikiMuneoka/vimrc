syntax on
set nocompatible               " be iMproved
filetype off                   " required!
filetype plugin indent off     " required!

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#begin(expand('~/.vim/bundle/'))
endif


NeoBundle 'Shougo/unite.vim'
NeoBundle 'L9'
call neobundle#end()



" ファイル形式別プラグインのロードを有効化
filetype plugin indent on     " required!

" 分割した設定ファイルをすべて読み込む
"set runtimepath+=~/.vim/
"runtime! userautoload/*.vim

set incsearch

nnoremap <Space>t t
nnoremap <Space>T T
nnoremap t <Nop>
nnoremap <silent> tn :<C-u>tabnew<CR>:tabmove<CR>
nnoremap <silent> tc :<C-u>tabclose<CR>



"-------------------------------------------------
" Editor エディター設定
"-------------------------------------------------

" 行番号を表示する。
set number

" 閉じ括弧が入力されたとき、対応する開き括弧にわずかの間ジャンプする
set showmatch

" 保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//e

"-------------------------------------------------
" Indent インデント設定
"-------------------------------------------------

" 新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする
set autoindent

" 新しい行を作ったときに高度な自動インデントを行う
set smartindent

" <Tab> が対応する空白の数。
set tabstop=4

" <Tab> の挿入や <BS> の使用等の編集操作をするときに、<Tab> が対応する空白の数。
set softtabstop=4

" インデントの各段階に使われる空白の数
set shiftwidth=4

" Insertモードで <Tab> を挿入するとき、代わりに適切な数の空白を使う。（有効:expandtab/無効:noexpandtab）
set expandtab

" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab

"-------------------------------------------------
" Search 検索設定
"-------------------------------------------------

" 検索コマンドを打ち込んでいる間にも、打ち込んだところまでのパターンがマッチするテキストを、すぐに表示する
set incsearch

"-------------------------------------------------
" Completion 補完設定
"-------------------------------------------------

"補完候補を表示する
set wildmenu

"補完モード
" ""              最初のマッチのみを補完する。
" "full"          次のマッチを完全に補完する。最後のマッチの次には元の文字列が使われ、その次は再び最初のマッチが補完される
" "longest"       共通する最長の文字列までが補完される。それ以上長い文字列を補完できないときは、次の候補に移る
" "longest:full"  "longest" と似ているが、'wildmenu' が有効ならばそれを開始する
" "list"          複数のマッチがあるときは、全てのマッチを羅列する。
" "list:full"     複数のマッチがあるときは、全てのマッチを羅列し、最初のマッチを補完する
" "list:longest"  複数のマッチがあるときは、全てのマッチを羅列し、共通する最長の文字列までが補完される
set wildmode=list:longest,full

"-------------------------------------------------
" Basic 基本設定
"-------------------------------------------------

" カーソルの上または下に表示する最小限の行数
set scrolloff=5

" 入力されているテキストの最大幅 「0」で無効
set textwidth=0

" バックアップの作成は行わない
set nobackup

" Vimの外部で変更されたことが判明したとき、自動的に読み直す
set autoread

" スワップファイルの作成は行わない
set noswapfile

" 保存しないで他のファイルを表示することが出来るようにする
set hidden

" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start

" 自動整形の実行方法
set formatoptions=lmoq

" ビープ音 ビジュアルベルを使用しない
set vb t_vb=

" ファイルブラウザの初期ディレクトリ
set browsedir=buffer

" コマンド (の一部) を画面の最下行に表示する
set showcmd

" カーソルが何行目の何列目に置かれているかを表示する
set ruler

" ステータス行を常に表示する
set laststatus=2

" コマンドラインに使われる画面上の行数
set cmdheight=2

" Insertモード、ReplaceモードまたはVisualモードで最終行にメッセージを表示する
set showmode

"モードラインの無効化
set nomodeline
